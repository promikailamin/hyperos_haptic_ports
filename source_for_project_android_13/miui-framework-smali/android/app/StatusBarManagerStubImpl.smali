.class public Landroid/app/StatusBarManagerStubImpl;
.super Landroid/app/StatusBarManagerStub;
.source "StatusBarManagerStubImpl.java"


# instance fields
.field private blacklist mService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/app/StatusBarManagerStub;-><init>()V

    return-void
.end method

.method private declared-synchronized blacklist getService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Landroid/app/StatusBarManagerStubImpl;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1a

    .line 38
    const-string v0, "statusbar"

    .line 39
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManagerStubImpl;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 40
    if-nez v0, :cond_1a

    .line 41
    const-string v0, "StatusBarManager"

    const-string v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local p0    # "this":Landroid/app/StatusBarManagerStubImpl;
    :cond_1a
    iget-object v0, p0, Landroid/app/StatusBarManagerStubImpl;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    .line 36
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public blacklist setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "ext"    # Landroid/os/Bundle;

    .line 27
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManagerStubImpl;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 28
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 29
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 33
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 34
    return-void

    .line 31
    :catch_b
    move-exception v0

    .line 32
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
