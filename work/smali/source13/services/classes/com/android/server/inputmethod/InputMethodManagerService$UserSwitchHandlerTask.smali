.class final Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserSwitchHandlerTask"
.end annotation


# instance fields
.field mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

.field final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field final mToUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "toUserId"    # I
    .param p3, "clientToBeReset"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1646
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1647
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 1648
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

    .line 1649
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1653
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1654
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v1

    if-eq v1, p0, :cond_d

    .line 1656
    monitor-exit v0

    return-void

    .line 1658
    :cond_d
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v2

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V

    .line 1660
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fputmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)V

    .line 1661
    monitor-exit v0

    .line 1662
    return-void

    .line 1661
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
