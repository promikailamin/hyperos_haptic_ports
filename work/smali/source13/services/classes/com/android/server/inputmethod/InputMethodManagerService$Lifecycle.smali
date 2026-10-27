.class public final Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1677
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1678
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1679
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1701
    const/16 v0, 0x226

    if-ne p1, v0, :cond_13

    .line 1702
    nop

    .line 1703
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1704
    .local v0, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerService;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 1706
    .end local v0    # "statusBarService":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_13
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 1683
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1684
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string/jumbo v1, "input_method"

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1686
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 7
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 1691
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1692
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 1694
    monitor-exit v0

    .line 1695
    return-void

    .line 1694
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1711
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    const/16 v2, 0x1388

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1712
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1713
    return-void
.end method
