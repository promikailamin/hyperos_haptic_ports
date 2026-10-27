.class public final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "InputMethodManagerService.java"


# instance fields
.field public final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mToken:Landroid/os/IBinder;

.field public final mUserData:Lcom/android/server/inputmethod/UserData;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V
    .registers 4

    .line 6860
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 6861
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6862
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 6863
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    return-void
.end method

.method public static calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z
    .registers 3

    .line 7175
    const-string/jumbo v0, "token must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7176
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 7177
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object p1

    if-eq p0, p1, :cond_3e

    .line 7178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to an invalid token. uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7178
    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7

    .line 6914
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_28

    .line 6915
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 p0, 0x0

    .line 6916
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6917
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_26

    .line 6919
    :cond_15
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mcreateInputContentUriTokenLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p0

    .line 6920
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 6919
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6921
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_13

    :try_start_27
    throw p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 6923
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 10

    .line 6981
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4c

    .line 6982
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2f

    if-nez v1, :cond_1e

    .line 6983
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p1, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 6985
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6986
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_4a

    .line 6988
    :cond_1e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p1, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 6990
    const-string v1, "IMMS.hideMySoftInput"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_1c

    .line 6993
    :try_start_30
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhideMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V

    .line 6994
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_42

    .line 6996
    :try_start_3a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6997
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 6999
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    .line 6996
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6997
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 6998
    throw p0

    .line 6999
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_1c

    :try_start_4b
    throw p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    .line 7001
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public notifyUserActionAsync()V
    .registers 4

    .line 7119
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7120
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 7121
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 7123
    :cond_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mnotifyUserActionLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)V

    .line 7124
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public onImeSwitchButtonClickFromClient(I)V
    .registers 5

    .line 7108
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7109
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 7110
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 7112
    :cond_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monImeSwitchButtonClickLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V

    .line 7113
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public onStylusHandwritingReady(II)V
    .registers 6

    .line 7130
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 7132
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 7134
    :cond_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monStylusHandwritingReadyLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V

    .line 7135
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public reportFullscreenModeAsync(Z)V
    .registers 5

    .line 6930
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6931
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 6932
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 6934
    :cond_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mreportFullscreenModeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)V

    .line 6935
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public reportStartInputAsync(Landroid/os/IBinder;)V
    .registers 5

    .line 6881
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6882
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 6883
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 6885
    :cond_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mreportStartInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    .line 6886
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public resetStylusHandwriting(I)V
    .registers 5

    .line 7141
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7142
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 7143
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_18

    .line 7145
    :cond_11
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetStylusHandwritingLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 7146
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_f

    throw p0
.end method

.method public setHandwritingSurfaceNotTouchable(Z)V
    .registers 5

    .line 6892
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6893
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 6894
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1c

    .line 6896
    :cond_11
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->setNotTouchable(Z)V

    .line 6897
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_f

    throw p0
.end method

.method public setHandwritingTouchableRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 6903
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6904
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->setHandwritingTouchableRegion(Landroid/graphics/Region;)V

    .line 6905
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setImeWindowStatusAsync(II)V
    .registers 6

    .line 6870
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6871
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 6872
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 6874
    :cond_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V

    .line 6875
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    .line 6943
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_23

    .line 6944
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 6945
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6946
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_21

    .line 6948
    :cond_15
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V

    .line 6949
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6950
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_13

    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 6952
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7

    .line 6962
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_23

    .line 6963
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 6964
    invoke-virtual {p3, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6965
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_21

    .line 6967
    :cond_15
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V

    .line 6968
    invoke-virtual {p3, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6969
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_13

    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 6971
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 7092
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_29

    .line 7093
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 7094
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7095
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_27

    .line 7097
    :cond_16
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7099
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_14

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 7101
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 10

    .line 7011
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4c

    .line 7012
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2f

    if-nez v1, :cond_1e

    .line 7013
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p1, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7015
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7016
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_4a

    .line 7018
    :cond_1e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p1, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7020
    const-string v1, "IMMS.showMySoftInput"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_1c

    .line 7023
    :try_start_30
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshowMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V

    .line 7024
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_42

    .line 7026
    :try_start_3a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7027
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 7029
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    .line 7026
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7027
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 7028
    throw p0

    .line 7029
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_1c

    :try_start_4b
    throw p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    .line 7031
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public switchKeyboardLayoutAsync(I)V
    .registers 6

    .line 7152
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 7154
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_26

    .line 7156
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    .line 7158
    :try_start_15
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v3, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchKeyboardLayoutLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_21

    .line 7160
    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7162
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    .line 7160
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7161
    throw p0

    .line 7162
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_f

    throw p0
.end method

.method public switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    .line 7074
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_29

    .line 7075
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 7076
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7077
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_27

    .line 7079
    :cond_16
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7081
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_14

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 7083
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 7056
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_29

    .line 7057
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 7058
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7059
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_27

    .line 7061
    :cond_16
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7062
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_14

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 7064
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public updateStatusIconAsync(Ljava/lang/String;I)V
    .registers 7

    .line 7038
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7039
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 7040
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_26

    .line 7042
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    .line 7044
    :try_start_15
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v3, p1, p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateStatusIconLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_21

    .line 7046
    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7048
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    .line 7046
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7047
    throw p0

    .line 7048
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_f

    throw p0
.end method
