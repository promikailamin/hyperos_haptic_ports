.class Lcom/android/server/wm/LockTaskController$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/LockTaskController;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/LockTaskController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/LockTaskController;

    .line 913
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iput p2, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDismissSucceeded$0$com-android-server-wm-LockTaskController$1(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 923
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    invoke-static {v0}, Lcom/android/server/wm/LockTaskController;->-$$Nest$fgetmPendingDisableFromDismiss(Lcom/android/server/wm/LockTaskController;)I

    move-result v0

    if-ne v0, p1, :cond_1e

    .line 924
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iget-object v0, v0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    invoke-static {v1}, Lcom/android/server/wm/LockTaskController;->-$$Nest$fgetmToken(Lcom/android/server/wm/LockTaskController;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 926
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/server/wm/LockTaskController;->-$$Nest$fputmPendingDisableFromDismiss(Lcom/android/server/wm/LockTaskController;I)V

    .line 928
    :cond_1e
    return-void
.end method

.method public onDismissCancelled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    const-string v0, "ActivityTaskManager"

    const-string/jumbo v1, "setKeyguardState: dismiss cancelled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-void
.end method

.method public onDismissError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    const-string v0, "ActivityTaskManager"

    const-string/jumbo v1, "setKeyguardState: failed to dismiss keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void
.end method

.method public onDismissSucceeded()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    invoke-static {v0}, Lcom/android/server/wm/LockTaskController;->-$$Nest$fgetmHandler(Lcom/android/server/wm/LockTaskController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    new-instance v2, Lcom/android/server/wm/LockTaskController$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/LockTaskController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LockTaskController$1;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 929
    return-void
.end method
