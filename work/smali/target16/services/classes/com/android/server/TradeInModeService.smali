.class public final Lcom/android/server/TradeInModeService;
.super Lcom/android/server/SystemService;
.source "TradeInModeService.java"


# instance fields
.field public mAccountManager:Landroid/accounts/AccountManager;

.field public mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mTradeInMode:Lcom/android/server/TradeInModeService$TradeInMode;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckEvaluationModePreconditions(Lcom/android/server/TradeInModeService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->checkEvaluationModePreconditions()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menterTestMode(Lcom/android/server/TradeInModeService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->enterTestMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetHealthService(Lcom/android/server/TradeInModeService;)Lcom/android/server/health/HealthServiceWrapper;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->getHealthService()Lcom/android/server/health/HealthServiceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misAdbEnabled(Lcom/android/server/TradeInModeService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isAdbEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceSetup(Lcom/android/server/TradeInModeService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mleaveTestMode(Lcom/android/server/TradeInModeService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->leaveTestMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAccountsWatch(Lcom/android/server/TradeInModeService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeAccountsWatch()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveNetworkWatch(Lcom/android/server/TradeInModeService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeNetworkWatch()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestartAdbd(Lcom/android/server/TradeInModeService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->restartAdbd()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->scheduleTradeInModeWipe()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartTradeInMode(Lcom/android/server/TradeInModeService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->startTradeInMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopTradeInMode(Lcom/android/server/TradeInModeService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 88
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 93
    iput-object p1, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isFrpActive()Z
    .registers 4

    const/4 v0, 0x0

    .line 469
    :try_start_1
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_e

    return v0

    .line 473
    :cond_e
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception p0

    .line 475
    const-string v1, "TradeInModeService"

    const-string v2, "Could not read PDB"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public final checkEvaluationModePreconditions()Z
    .registers 6

    .line 438
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result v0

    const/4 v1, 0x0

    .line 439
    const-string v2, "TradeInModeService"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_27

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v0, :cond_27

    .line 440
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot enter evaluation mode in state: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 443
    :cond_27
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isFrpActive()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 444
    const-string p0, "Cannot enter evaluation mode, FRP lock is present."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_33
    return v3
.end method

.method public final enterTestMode()V
    .registers 2

    .line 386
    const-string/jumbo p0, "persist.adb.test_tradeinmode"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 387
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.adb.tradeinmode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getHealthService()Lcom/android/server/health/HealthServiceWrapper;
    .registers 3

    .line 426
    const-string p0, "TradeInModeService"

    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7} :catch_f
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception v0

    .line 432
    const-string v1, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    throw v0

    :catch_f
    move-exception v0

    .line 429
    const-string v1, "health: (RemoteException)"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getTradeInModeState()I
    .registers 2

    .line 451
    const-string/jumbo p0, "persist.adb.tradeinmode"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final isAdbEnabled()Z
    .registers 3

    .line 463
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 464
    const-string v0, "adb_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    return v0

    :cond_11
    return v1
.end method

.method public final isDebuggable()Z
    .registers 3

    .line 455
    const-string/jumbo p0, "ro.debuggable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public final isDeviceSetup()Z
    .registers 6

    .line 484
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 486
    :try_start_8
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_f} :catch_12

    if-eqz v2, :cond_1a

    return v0

    :catch_12
    move-exception v2

    .line 490
    const-string v3, "TradeInModeService"

    const-string v4, "Could not find USER_SETUP_COMPLETE setting"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    :cond_1a
    const-string v2, "device_provisioned"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_23

    return v0

    :cond_23
    return v1
.end method

.method public final isForceEnabledForTesting()Z
    .registers 3

    .line 459
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo p0, "persist.adb.test_tradeinmode"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public final leaveTestMode()V
    .registers 3

    .line 391
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 392
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    .line 395
    :cond_a
    const-string/jumbo p0, "persist.adb.test_tradeinmode"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo p0, "persist.adb.tradeinmode"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :try_start_18
    const-string p0, "/metadata/tradeinmode/wipe"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 400
    const-string v0, "TradeInModeService"

    const-string v1, "Failed to remove wipe indicator"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_5f

    .line 109
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result p1

    .line 111
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, -0x1

    if-ne p1, v0, :cond_39

    .line 115
    const-string p1, "TradeInModeService"

    const-string v0, "Resetting trade-in mode state."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string/jumbo p1, "persist.adb.tradeinmode"

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 119
    const-string p1, "adb_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_39
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5f

    .line 124
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 125
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    return-void

    .line 126
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result p1

    if-nez p1, :cond_56

    .line 129
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->leaveTestMode()V

    return-void

    .line 131
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForSetupCompletion()V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForNetworkChange()V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForAccountsCreated()V

    :cond_5f
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 102
    new-instance v0, Lcom/android/server/TradeInModeService$TradeInMode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TradeInModeService$TradeInMode;-><init>(Lcom/android/server/TradeInModeService;Lcom/android/server/TradeInModeService-IA;)V

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mTradeInMode:Lcom/android/server/TradeInModeService$TradeInMode;

    .line 103
    const-string/jumbo v1, "tradeinmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final removeAccountsWatch()V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_c

    .line 563
    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    :cond_c
    return-void
.end method

.method public final removeNetworkWatch()V
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_c

    .line 545
    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_c
    return-void
.end method

.method public final restartAdbd()V
    .registers 2

    .line 416
    const-string p0, "ctl.restart"

    const-string v0, "adbd"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final scheduleTradeInModeWipe()Z
    .registers 3

    .line 405
    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    const-string v0, "/metadata/tradeinmode/wipe"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_1d

    .line 407
    :try_start_9
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 408
    :try_start_e
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_1d

    const/4 p0, 0x1

    return p0

    :catchall_13
    move-exception v0

    .line 405
    :try_start_14
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p0

    :try_start_19
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception p0

    .line 409
    const-string v0, "TradeInModeService"

    const-string v1, "Failed to write /metadata/tradeinmode/wipe"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setAdbEnabled(Z)V
    .registers 3

    .line 420
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 421
    const-string v0, "adb_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final startTradeInMode()V
    .registers 4

    .line 357
    const-string v0, "TradeInModeService"

    const-string v1, "Enabling trade-in mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.adb.tradeinmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/server/TradeInModeService;->setAdbEnabled(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForSetupCompletion()V

    .line 364
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForNetworkChange()V

    .line 365
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForAccountsCreated()V

    return-void
.end method

.method public final stopTradeInMode()V
    .registers 3

    .line 369
    const-string v0, "TradeInModeService"

    const-string v1, "Stopping trade-in mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.adb.tradeinmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeNetworkWatch()V

    .line 374
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeAccountsWatch()V

    .line 376
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 378
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->restartAdbd()V

    return-void

    :cond_22
    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/server/TradeInModeService;->setAdbEnabled(Z)V

    return-void
.end method

.method public final watchForAccountsCreated()V
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 552
    new-instance v0, Lcom/android/server/TradeInModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TradeInModeService$2;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 558
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public final watchForNetworkChange()V
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 526
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 527
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 528
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 529
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 532
    new-instance v1, Lcom/android/server/TradeInModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/TradeInModeService$1;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v1, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 540
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final watchForSetupCompletion()V
    .registers 5

    .line 513
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 515
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 517
    iget-object v2, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 518
    new-instance v3, Lcom/android/server/TradeInModeService$SettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/TradeInModeService$SettingsObserver;-><init>(Lcom/android/server/TradeInModeService;)V

    const/4 p0, 0x0

    .line 520
    invoke-virtual {v2, v0, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 521
    invoke-virtual {v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
