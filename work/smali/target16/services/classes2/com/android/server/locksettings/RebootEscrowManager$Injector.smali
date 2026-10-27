.class public Lcom/android/server/locksettings/RebootEscrowManager$Injector;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field public mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/pm/UserManagerInternal;)V
    .registers 4

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 235
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 236
    new-instance p1, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-direct {p1}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 237
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method


# virtual methods
.method public clearRebootEscrowProvider()V
    .registers 2

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    return-void
.end method

.method public final createRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;
    .registers 3

    .line 242
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v0

    const-string v1, "RebootEscrowManager"

    if-eqz v0, :cond_17

    .line 243
    const-string v0, "Using server based resume on reboot"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;)V

    goto :goto_21

    .line 246
    :cond_17
    const-string p0, "Using HAL based resume on reboot"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;

    invoke-direct {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;-><init>()V

    .line 250
    :goto_21
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->hasRebootEscrowSupport()Z

    move-result p0

    if-eqz p0, :cond_28

    return-object v0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    if-nez v0, :cond_a

    .line 344
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 347
    :cond_a
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    return-object p0
.end method

.method public getBootCount()I
    .registers 3

    .line 364
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getCurrentTimeMillis()J
    .registers 3

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventLog()Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;
    .registers 1

    .line 402
    new-instance p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;-><init>()V

    return-object p0
.end method

.method public getKeyStoreManager()Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;
    .registers 1

    .line 337
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    return-object p0
.end method

.method public getLoadEscrowDataRetryIntervalSeconds()I
    .registers 3

    .line 378
    const-string p0, "load_escrow_data_retry_interval_seconds"

    const/16 v0, 0x1e

    const-string/jumbo v1, "ota"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLoadEscrowDataRetryLimit()I
    .registers 3

    .line 373
    const-string p0, "load_escrow_data_retry_count"

    const/4 v0, 0x3

    const-string/jumbo v1, "ota"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLoadEscrowTimeoutMillis()I
    .registers 1

    .line 0
    const p0, 0x2bf20

    return p0
.end method

.method public getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;
    .registers 1

    .line 356
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 329
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 333
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public getVbmetaDigest(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_a

    .line 406
    const-string/jumbo p0, "ota.other.vbmeta_digest"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 407
    :cond_a
    const-string/jumbo p0, "ro.boot.vbmeta.digest"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 3

    .line 351
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 352
    const-string v1, "RebootEscrowManager"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public getWakeLockTimeoutMillis()I
    .registers 1

    .line 390
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowTimeoutMillis()I

    move-result p0

    add-int/lit16 p0, p0, 0x1388

    return p0
.end method

.method public post(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    .line 257
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .registers 5

    .line 261
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reportMetric(ZIIIIII)V
    .registers 8

    const/16 p0, 0xee

    .line 396
    invoke-static/range {p0 .. p7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIIIII)V

    return-void
.end method

.method public requestNetworkWithInternet(Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 305
    :cond_e
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 307
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 311
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowTimeoutMillis()I

    move-result p0

    .line 310
    invoke-virtual {v0, v1, p1, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public serverBasedResumeOnReboot()Z
    .registers 3

    .line 266
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.reboot_escrow"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 271
    :cond_10
    const-string/jumbo p0, "server_based_ror_enabled"

    const/4 v0, 0x0

    const-string/jumbo v1, "ota"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public stopRequestingNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 3

    .line 316
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 317
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_d

    return-void

    .line 321
    :cond_d
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
