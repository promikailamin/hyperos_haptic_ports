.class public Landroid/adb/ADBRootService;
.super Ljava/lang/Object;
.source "ADBRootService.java"


# static fields
.field private static final blacklist ADB_ROOT_SERVICE:Ljava/lang/String; = "adbroot_service"

.field private static final blacklist TAG:Ljava/lang/String; = "ADBRootService"


# instance fields
.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mService:Landroid/adbroot/IADBRootService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/adb/ADBRootService;)Landroid/adbroot/IADBRootService;
    .registers 1

    iget-object p0, p0, Landroid/adb/ADBRootService;->mService:Landroid/adbroot/IADBRootService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/adb/ADBRootService;Landroid/adbroot/IADBRootService;)V
    .registers 2

    iput-object p1, p0, Landroid/adb/ADBRootService;->mService:Landroid/adbroot/IADBRootService;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/adb/ADBRootService$1;

    invoke-direct {v0, p0}, Landroid/adb/ADBRootService$1;-><init>(Landroid/adb/ADBRootService;)V

    iput-object v0, p0, Landroid/adb/ADBRootService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private declared-synchronized blacklist getService()Landroid/adbroot/IADBRootService;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Landroid/adb/ADBRootService;->mService:Landroid/adbroot/IADBRootService;

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p0, Landroid/adb/ADBRootService;->mService:Landroid/adbroot/IADBRootService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 51
    :cond_9
    :try_start_9
    const-string v0, "adbroot_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_21

    .line 53
    iget-object v1, p0, Landroid/adb/ADBRootService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 54
    invoke-static {v0}, Landroid/adbroot/IADBRootService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adbroot/IADBRootService;

    move-result-object v0

    iput-object v0, p0, Landroid/adb/ADBRootService;->mService:Landroid/adbroot/IADBRootService;

    .line 55
    iget-object v0, p0, Landroid/adb/ADBRootService;->mService:Landroid/adbroot/IADBRootService;
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 58
    :cond_21
    :try_start_21
    const-string v0, "ADBRootService"

    const-string v1, "Unable to acquire ADBRootService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2b

    .line 59
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 46
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method


# virtual methods
.method public blacklist getEnabled()Z
    .registers 2

    .line 96
    :try_start_0
    invoke-direct {p0}, Landroid/adb/ADBRootService;->getService()Landroid/adbroot/IADBRootService;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_b

    .line 98
    invoke-interface {v0}, Landroid/adbroot/IADBRootService;->getEnabled()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v0

    .line 102
    :cond_b
    nop

    .line 103
    const/4 v0, 0x0

    return v0

    .line 100
    :catch_e
    move-exception v0

    .line 101
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isSupported()Z
    .registers 2

    .line 67
    :try_start_0
    invoke-direct {p0}, Landroid/adb/ADBRootService;->getService()Landroid/adbroot/IADBRootService;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_b

    .line 69
    invoke-interface {v0}, Landroid/adbroot/IADBRootService;->isSupported()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v0

    .line 73
    :cond_b
    nop

    .line 74
    const/4 v0, 0x0

    return v0

    .line 71
    :catch_e
    move-exception v0

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist setEnabled(Z)V
    .registers 3

    .line 82
    :try_start_0
    invoke-direct {p0}, Landroid/adb/ADBRootService;->getService()Landroid/adbroot/IADBRootService;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_9

    .line 84
    invoke-interface {v0, p1}, Landroid/adbroot/IADBRootService;->setEnabled(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 88
    :cond_9
    nop

    .line 89
    return-void

    .line 86
    :catch_b
    move-exception p1

    .line 87
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
