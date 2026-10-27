.class public Lmiui/mqsas/sdk/MQSEventManagerDelegate;
.super Ljava/lang/Object;
.source "MQSEventManagerDelegate.java"


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist MQS_SERVICE_NAME:Ljava/lang/String; = "miui.mqsas.MQSService"

.field public static final blacklist PROPERTY_POWER_OFF:Ljava/lang/String; = "persist.sys.poweroff"

.field private static final blacklist SCOUT_DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;


# instance fields
.field blacklist mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mService:Lmiui/mqsas/IMQSService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmService(Lmiui/mqsas/sdk/MQSEventManagerDelegate;Lmiui/mqsas/IMQSService;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    const-class v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    .line 44
    const/4 v1, 0x0

    sput-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    .line 47
    nop

    .line 48
    const-string v1, "persist.sys.miui_scout_debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    .line 47
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    new-instance v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;

    invoke-direct {v0, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;-><init>(Lmiui/mqsas/sdk/MQSEventManagerDelegate;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 513
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;
    .registers 2

    const-class v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    monitor-enter v0

    .line 506
    :try_start_3
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    if-nez v1, :cond_e

    .line 507
    new-instance v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    invoke-direct {v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;-><init>()V

    sput-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    .line 509
    :cond_e
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 505
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist runtimeWithTimeout(Ljava/lang/Runnable;)Z
    .registers 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 653
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->runtimeWithTimeout(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public static blacklist runtimeWithTimeout(Ljava/lang/Runnable;J)Z
    .registers 7
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "timeoutMs"    # J

    .line 658
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 659
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 661
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_19
    .catchall {:try_start_8 .. :try_end_d} :catchall_17

    .line 662
    const/4 v2, 0x1

    .line 667
    :try_start_e
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    .line 670
    goto :goto_16

    .line 668
    :catch_12
    move-exception v3

    .line 669
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    .end local v3    # "exception":Ljava/lang/Exception;
    :goto_16
    return v2

    .line 666
    :catchall_17
    move-exception v2

    goto :goto_28

    .line 663
    :catch_19
    move-exception v2

    .line 664
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    .line 667
    .end local v2    # "exception":Ljava/lang/Exception;
    :try_start_1d
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    .line 670
    goto :goto_26

    .line 668
    :catch_21
    move-exception v2

    .line 669
    .restart local v2    # "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 671
    .end local v2    # "exception":Ljava/lang/Exception;
    nop

    .line 672
    :goto_26
    const/4 v2, 0x0

    return v2

    .line 667
    :goto_28
    :try_start_28
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 670
    goto :goto_30

    .line 668
    :catch_2c
    move-exception v3

    .line 669
    .restart local v3    # "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 671
    .end local v3    # "exception":Ljava/lang/Exception;
    :goto_30
    throw v2
.end method


# virtual methods
.method public blacklist appCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "actionList"    # Ljava/lang/String;
    .param p3, "logPath"    # Ljava/lang/String;
    .param p4, "servicesList"    # Ljava/lang/String;

    .line 431
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "appCaptureLog"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 434
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 435
    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/mqsas/IMQSService;->appCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 439
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 437
    :catch_15
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appCaptureLog error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist checkDumpForJavaException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 51
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDumpForJavaException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 54
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->checkDumpForJavaException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2c

    return v1

    .line 57
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2b
    goto :goto_49

    .line 55
    :catch_2c
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDumpForJavaException error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkDumpForWatchdog(Lmiui/mqsas/sdk/event/WatchdogEvent;)I
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/WatchdogEvent;

    .line 62
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDumpForWatchdog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 65
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->checkDumpForWatchdog(Lmiui/mqsas/sdk/event/WatchdogEvent;)I

    move-result v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2c

    return v1

    .line 68
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2b
    goto :goto_49

    .line 66
    :catch_2c
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDumpForWatchdog error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist commonCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "actionList"    # Ljava/lang/String;
    .param p4, "logPath"    # Ljava/lang/String;

    .line 640
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "commonCaptureLog"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 643
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 644
    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/mqsas/IMQSService;->commonCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 648
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 646
    :catch_15
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appCaptureLog error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist dialogButtonChecked(IILjava/lang/String;Z)V
    .registers 9
    .param p1, "operation"    # I
    .param p2, "eventType"    # I
    .param p3, "dgt"    # Ljava/lang/String;
    .param p4, "isChecked"    # Z

    .line 478
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "dialogButtonChecked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 481
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 482
    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/mqsas/IMQSService;->dialogButtonChecked(IILjava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 486
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 484
    :catch_15
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportBrightnessEvents error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist dumpBugReport()V
    .registers 5

    .line 466
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "dumpBugReport"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 469
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 470
    invoke-interface {v0}, Lmiui/mqsas/IMQSService;->dumpBugReport()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 474
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 472
    :catch_15
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpBugReport error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method protected declared-synchronized blacklist getMQSService()Lmiui/mqsas/IMQSService;
    .registers 4

    monitor-enter p0

    .line 516
    :try_start_1
    iget-object v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    if-nez v0, :cond_2a

    .line 517
    const-string v0, "miui.mqsas.MQSService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/mqsas/IMQSService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2e

    .line 518
    if-eqz v0, :cond_23

    .line 520
    :try_start_13
    invoke-interface {v0}, Lmiui/mqsas/IMQSService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2e

    .line 523
    goto :goto_2a

    .line 521
    .end local p0    # "this":Lmiui/mqsas/sdk/MQSEventManagerDelegate;
    :catch_1e
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2a

    .line 525
    :cond_23
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "failed to get MQSService."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 515
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 443
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOnlineRuleMatched:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 446
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    .line 447
    invoke-interface {v0, p1, p2}, Lmiui/mqsas/IMQSService;->getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 451
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 449
    :catch_30
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOnlineRuleMatched error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRules(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 627
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "getRules"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 630
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_16

    .line 631
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->getRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_17

    return-object v1

    .line 635
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_16
    goto :goto_34

    .line 633
    :catch_17
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appCaptureLog error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBootCompleted()V
    .registers 5

    .line 311
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 314
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lmiui/mqsas/IMQSService;->onBootCompleted()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 317
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 315
    :catch_15
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootCompleted error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist registerApplicationScoutThread(Landroid/app/IAppScoutThread;I)Z
    .registers 8
    .param p1, "thread"    # Landroid/app/IAppScoutThread;
    .param p2, "pid"    # I

    .line 567
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v0, :cond_f

    :cond_8
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "registerApplicationScoutThread:"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_f
    const/4 v0, 0x0

    .line 570
    .local v0, "result":Z
    :try_start_10
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 571
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1b

    .line 572
    invoke-interface {v1, p1, p2}, Lmiui/mqsas/IMQSService;->registerApplicationScoutThread(Landroid/app/IAppScoutThread;I)V

    .line 573
    const/4 v0, 0x1

    goto :goto_26

    .line 575
    :cond_1b
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v2, :cond_26

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v3, "registerApplicationScoutThread getMQSService null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_27

    .line 579
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_26
    :goto_26
    goto :goto_44

    .line 577
    :catch_27
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerApplicationScoutThread error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return v0
.end method

.method public blacklist reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/AnrEvent;

    .line 135
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v0, :cond_24

    :cond_8
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportAnrEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/AnrEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 138
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2d

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 141
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2d
    goto :goto_4b

    .line 139
    :catch_2e
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAnrEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method public blacklist reportAnrIssue(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "data"    # Landroid/os/Bundle;

    .line 125
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportAnrIssue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 128
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2b

    const/16 v1, 0x3e8

    invoke-interface {v0, v1, p1}, Lmiui/mqsas/IMQSService;->reportGeneralEvent(ILandroid/os/Bundle;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c

    .line 131
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2b
    goto :goto_49

    .line 129
    :catch_2c
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAnrIssue error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    return-void
.end method

.method public blacklist reportAppScoutEvent(Lmiui/mqsas/sdk/event/AppScoutEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/AppScoutEvent;

    .line 598
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v0, :cond_24

    :cond_8
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportAppScoutEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/AppScoutEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 601
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2e

    .line 602
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportAppScoutEvent(Lmiui/mqsas/sdk/event/AppScoutEvent;)V

    goto :goto_35

    .line 604
    :cond_2e
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v2, "reportAppScoutEvent getMQSService null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_36

    .line 608
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :goto_35
    goto :goto_53

    .line 606
    :catch_36
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAppScoutEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method public blacklist reportBluetoothEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 355
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportBluetoothEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 358
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    invoke-interface {v0, p1, p2}, Lmiui/mqsas/IMQSService;->reportBluetoothEvent(ILjava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 361
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 359
    :catch_30
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportBluetoothEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public blacklist reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/BootEvent;

    .line 292
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportBootEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/BootEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 295
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_29

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2a

    .line 298
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_29
    goto :goto_47

    .line 296
    :catch_2a
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportBootEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_47
    return-void
.end method

.method public blacklist reportBrightnessEvent(IIILjava/lang/String;)V
    .registers 9
    .param p1, "startOrEnd"    # I
    .param p2, "progress"    # I
    .param p3, "autoBrightnessEnabled"    # I
    .param p4, "extra"    # Ljava/lang/String;

    .line 543
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "reportBrightnessEvents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 546
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 547
    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/mqsas/IMQSService;->reportBrightnessEvent(IIILjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 551
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 549
    :catch_15
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportBrightnessEvents error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .param p1, "reportEvents"    # Landroid/content/pm/ParceledListSlice;

    .line 321
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_24

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportBroadcastEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 324
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2d

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 327
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2d
    goto :goto_4b

    .line 325
    :catch_2e
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportBroadcastEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method public blacklist reportConnectExceptionEvent(IILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "reason"    # I
    .param p3, "bssid"    # Ljava/lang/String;

    .line 239
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportConnectExceptionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 242
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    invoke-interface {v0, p1, p2, p3}, Lmiui/mqsas/IMQSService;->reportConnectExceptionEvent(IILjava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 245
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 243
    :catch_30
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportConnectExceptionEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public blacklist reportContinuousKillProcessEvent(Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;)V
    .registers 6
    .param p1, "events"    # Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;

    .line 343
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "reportContinuousKillProcessEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 346
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 347
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportContinuousKillProcessEvent(Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 351
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 349
    :catch_15
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportContinuousKillProcessEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist reportDataStallSuspected()V
    .registers 5

    .line 272
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "reportDataStallSuspected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 275
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lmiui/mqsas/IMQSService;->reportDataStallSuspected()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 278
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 276
    :catch_15
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportDataStallSuspected error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "isGlobalNeed"    # Z

    .line 365
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 368
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    invoke-interface {v0, p1, p2, p3}, Lmiui/mqsas/IMQSService;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 371
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 369
    :catch_30
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public blacklist reportEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isGlobalNeed"    # Z

    .line 375
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEventV2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 378
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_37

    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/mqsas/IMQSService;->reportEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_38

    .line 381
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_37
    goto :goto_55

    .line 379
    :catch_38
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportEventV2 error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_55
    return-void
.end method

.method public blacklist reportEvents(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 8
    .param p1, "module"    # Ljava/lang/String;
    .param p3, "isGlobalNeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 385
    .local p2, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 388
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    invoke-interface {v0, p1, p2, p3}, Lmiui/mqsas/IMQSService;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 391
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 389
    :catch_30
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportEvents error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public blacklist reportEventsV2(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "module"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isGlobalNeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 395
    .local p2, "infoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEventsV2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 398
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_37

    .line 399
    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/mqsas/IMQSService;->reportEventsV2(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_38

    .line 403
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_37
    goto :goto_55

    .line 401
    :catch_38
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportEventsV2 error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_55
    return-void
.end method

.method public blacklist reportFeatureEvent(Lmiui/mqsas/sdk/event/FeatureEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/FeatureEvent;

    .line 419
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "reportFeatureEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 422
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 423
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportFeatureEvent(Lmiui/mqsas/sdk/event/FeatureEvent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 427
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 425
    :catch_15
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFeatureEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist reportGameDelayEvent(Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 229
    .local p1, "gameDelayTimeStatisMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "reportGameDelayEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 232
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    invoke-interface {v0, p1, p2}, Lmiui/mqsas/IMQSService;->reportGameDelayEvent(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 235
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 233
    :catch_15
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportGameDelayEvent error happend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist reportGeneralException(Lmiui/mqsas/sdk/event/GeneralExceptionEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/GeneralExceptionEvent;

    .line 85
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportGeneralExceptionEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 88
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_29

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportGeneralException(Lmiui/mqsas/sdk/event/GeneralExceptionEvent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 91
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_29
    goto :goto_47

    .line 89
    :catch_2a
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportGeneralExceptionEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method public blacklist reportHangException()V
    .registers 5

    .line 494
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "reportHangExceptionEvents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 497
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 498
    invoke-interface {v0}, Lmiui/mqsas/IMQSService;->reportHangExceptionEvents()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 502
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 500
    :catch_15
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportHangExceptionEvents error happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method public blacklist reportHeapLeakEvent(Lmiui/mqsas/sdk/event/HeapLeakEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/HeapLeakEvent;

    .line 185
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportHeapLeakEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/HeapLeakEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 188
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_29

    .line 189
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportHeapLeakEvent(Lmiui/mqsas/sdk/event/HeapLeakEvent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 193
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_29
    goto :goto_47

    .line 191
    :catch_2a
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportHeapLeakEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method public blacklist reportHighMemoryEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .param p5, "summary"    # Ljava/lang/String;

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 75
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_10

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lmiui/mqsas/IMQSService;->reportHighMemoryEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    .line 78
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_10
    goto :goto_2e

    .line 76
    :catch_11
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportHighMemoryEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 145
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportJEEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 148
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2b

    .line 149
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2c

    .line 150
    const/4 v1, 0x1

    return v1

    .line 154
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2b
    goto :goto_49

    .line 152
    :catch_2c
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportJEEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;

    .line 331
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "reportKillProcessEvents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 334
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    .line 335
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 339
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 337
    :catch_15
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportKillProcessEvents error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist reportL2DataStallEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .line 261
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportL2DataStallEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 264
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_25

    invoke-interface {v0, p1, p2}, Lmiui/mqsas/IMQSService;->reportL2DataStallEvent(ILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_26

    .line 267
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_25
    goto :goto_43

    .line 265
    :catch_26
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportL2DataStallEvent error happend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method public blacklist reportLmkKill(IJ)V
    .registers 8
    .param p1, "minOomScore"    # I
    .param p2, "timestamp"    # J

    .line 110
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLmkKill:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 113
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_36

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "minOomScore"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const-string v2, "timestamp"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    const/16 v2, 0x3e9

    invoke-interface {v0, v2, v1}, Lmiui/mqsas/IMQSService;->reportGeneralEvent(ILandroid/os/Bundle;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_37

    .line 121
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_36
    goto :goto_54

    .line 119
    :catch_37
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportLmkKill error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    return-void
.end method

.method public blacklist reportLowMemEvent(Lmiui/mqsas/sdk/event/LowMemEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/LowMemEvent;

    .line 555
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLowMemEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/LowMemEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 558
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_29

    .line 559
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportLowMemEvent(Lmiui/mqsas/sdk/event/LowMemEvent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 563
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_29
    goto :goto_47

    .line 561
    :catch_2a
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportLowMemEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method public blacklist reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/PackageEvent;

    .line 282
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPackageEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/PackageEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 285
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_29

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 288
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_29
    goto :goto_47

    .line 286
    :catch_2a
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportPackageEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method public blacklist reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;

    .line 456
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "reportPackageForegroundEvents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 459
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    .line 462
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_14
    goto :goto_32

    .line 460
    :catch_15
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportPackageForegroundEvents error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist reportRebootNullEvent(Lmiui/mqsas/sdk/event/RebootNullEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/RebootNullEvent;

    .line 197
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportRebootNullEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/RebootNullEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 200
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_29

    .line 201
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportRebootNullEvent(Lmiui/mqsas/sdk/event/RebootNullEvent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 205
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_29
    goto :goto_47

    .line 203
    :catch_2a
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportRebootNullEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method public blacklist reportRssLeakEvent(Lmiui/mqsas/sdk/event/RssLeakEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/RssLeakEvent;

    .line 173
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportRSSLeakEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/RssLeakEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 176
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_29

    .line 177
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportRssLeakEvent(Lmiui/mqsas/sdk/event/RssLeakEvent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 181
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_29
    goto :goto_47

    .line 179
    :catch_2a
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportRssLeakEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method public blacklist reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/ScreenOnEvent;

    .line 218
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportScreenOnEvent: event ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 221
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_26

    .line 224
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_25
    goto :goto_43

    .line 222
    :catch_26
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportScreenOnEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method public blacklist reportSimpleEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 209
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSimpleEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 212
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    invoke-interface {v0, p1, p2}, Lmiui/mqsas/IMQSService;->reportSimpleEvent(ILjava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 215
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 213
    :catch_30
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSimpleEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public blacklist reportSysScoutEvent(Lmiui/mqsas/sdk/event/SysScoutEvent;)V
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/SysScoutEvent;

    .line 612
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v0, :cond_24

    :cond_8
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSysScoutEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/SysScoutEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 615
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2e

    .line 616
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportSysScoutEvent(Lmiui/mqsas/sdk/event/SysScoutEvent;)V

    goto :goto_3d

    .line 618
    :cond_2e
    sget-boolean v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-nez v1, :cond_36

    sget-boolean v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v1, :cond_3d

    :cond_36
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v2, "reportSysScoutEvent getMQSService null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3d} :catch_3e

    .line 622
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_3d
    :goto_3d
    goto :goto_5b

    .line 620
    :catch_3e
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSysScoutEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5b
    return-void
.end method

.method public blacklist reportTelephonyEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 302
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportTelephonyEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 305
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    invoke-interface {v0, p1, p2}, Lmiui/mqsas/IMQSService;->reportTelephonyEvent(ILjava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 308
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 306
    :catch_30
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportTelephonyEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public blacklist reportThermalTempChange(IJ)V
    .registers 8
    .param p1, "temperature"    # I
    .param p2, "timestamp"    # J

    .line 95
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportThermalTempChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 98
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_36

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "temperature"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v2, "timestamp"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 102
    const/16 v2, 0x3ea

    invoke-interface {v0, v2, v1}, Lmiui/mqsas/IMQSService;->reportGeneralEvent(ILandroid/os/Bundle;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_37

    .line 106
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_36
    goto :goto_54

    .line 104
    :catch_37
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportThermalTempChange error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    return-void
.end method

.method public blacklist reportTxBadOrRetryEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "reason"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .line 250
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportTxBadOrRetryEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 253
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_25

    invoke-interface {v0, p1, p2}, Lmiui/mqsas/IMQSService;->reportTxBadOrRetryEvent(ILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_26

    .line 256
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_25
    goto :goto_43

    .line 254
    :catch_26
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportTxBadOrRetryEvent error happend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method public blacklist reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)Z
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/WatchdogEvent;

    .line 159
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v0, :cond_24

    :cond_8
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportJWDTEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 162
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    .line 163
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_30

    .line 164
    const/4 v1, 0x1

    return v1

    .line 168
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 166
    :catch_30
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportJWDTEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportXmsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 407
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportXmsEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 410
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_2f

    .line 411
    invoke-interface {v0, p1, p2}, Lmiui/mqsas/IMQSService;->reportXmsEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    .line 415
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_2f
    goto :goto_4d

    .line 413
    :catch_30
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportXmsEvent error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public blacklist setPowerOffTimeAndReason(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.poweroff"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public blacklist unregisterApplicationScoutThread(I)V
    .registers 6
    .param p1, "pid"    # I

    .line 584
    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v0, :cond_f

    :cond_8
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v1, "unregisterApplicationScoutThread:"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v0

    .line 587
    .local v0, "service":Lmiui/mqsas/IMQSService;
    if-eqz v0, :cond_19

    .line 588
    invoke-interface {v0, p1}, Lmiui/mqsas/IMQSService;->unregisterApplicationScoutThread(I)V

    goto :goto_28

    .line 590
    :cond_19
    sget-boolean v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-nez v1, :cond_21

    sget-boolean v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SCOUT_DEBUG:Z

    if-eqz v1, :cond_28

    :cond_21
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string v2, "unregisterApplicationScoutThread getMQSService null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_29

    .line 594
    .end local v0    # "service":Lmiui/mqsas/IMQSService;
    :cond_28
    :goto_28
    goto :goto_46

    .line 592
    :catch_29
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterApplicationScoutThread error happened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method
