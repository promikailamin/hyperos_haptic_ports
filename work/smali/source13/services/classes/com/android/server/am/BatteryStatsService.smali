.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/internal/os/BatteryStatsImpl$MeasuredEnergyRetriever;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/am/BatteryStatsService$LocalService;
    }
.end annotation


# static fields
.field private static final BATTERY_USAGE_STORE_ENABLED:Z = true

.field static final DBG:Z = false

.field private static final EMPTY:Ljava/lang/String; = "Empty"

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x4000

.field private static final POWER_STATS_QUERY_TIMEOUT_MILLIS:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field private static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field private final mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

.field private final mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

.field private final mContext:Landroid/content/Context;

.field private mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field private mEntityNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private final mLock:Ljava/lang/Object;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field private final mPowerStatsLock:Ljava/lang/Object;

.field private mStateNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

.field private final mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryUsageStatsStore(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/BatteryUsageStatsStore;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/BatteryStatsService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mawaitCompletion(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 340
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 152
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 153
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 154
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 155
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 156
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 175
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 177
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    .line 323
    new-instance v0, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 342
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 343
    new-instance v6, Lcom/android/server/am/BatteryStatsService$3;

    invoke-direct {v6, p0}, Lcom/android/server/am/BatteryStatsService$3;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 353
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "batterystats-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 354
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 355
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 357
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 359
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$MeasuredEnergyRetriever;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    iput-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 361
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {v1, p1, v8}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 362
    invoke-virtual {v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v8, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 365
    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 366
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl;->startTrackingSystemServerCpuTime()V

    .line 369
    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsStore;

    invoke-direct {v0, p1, v8, p2, v7}, Lcom/android/internal/os/BatteryUsageStatsStore;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    .line 374
    new-instance v1, Lcom/android/internal/os/BatteryUsageStatsProvider;

    invoke-direct {v1, p1, v8, v0}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Lcom/android/internal/os/BatteryUsageStatsStore;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    .line 376
    return-void
.end method

.method private awaitCompletion()V
    .registers 4

    .line 495
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 496
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    :try_start_10
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    .line 502
    goto :goto_15

    .line 501
    :catch_14
    move-exception v1

    .line 503
    :goto_15
    return-void
.end method

.method private static awaitUninterruptibly(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 480
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 481
    return-void

    .line 484
    :catch_4
    move-exception v0

    .line 486
    goto :goto_0

    .line 482
    :catch_6
    move-exception v0

    .line 483
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .line 2396
    add-int/lit8 p2, p2, 0x1

    .line 2397
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_27

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p4, :cond_16

    const-string v2, "--enable"

    goto :goto_18

    :cond_16
    const-string v2, "--disable"

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2400
    return v1

    .line 2402
    :cond_27
    const-string v0, "full-wake-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_8e

    .line 2408
    :cond_3c
    const-string/jumbo v0, "no-auto-reset"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2410
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2411
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2412
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 2413
    monitor-exit v0

    goto :goto_9a

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_54

    throw v1

    .line 2414
    :cond_57
    const-string/jumbo v0, "pretend-screen-off"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 2416
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2417
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2418
    :try_start_68
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 2419
    monitor-exit v0

    goto :goto_9a

    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw v1

    .line 2421
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2422
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2423
    return v1

    .line 2404
    :cond_8e
    :goto_8e
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2405
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2406
    :try_start_94
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 2407
    monitor-exit v0

    .line 2425
    :goto_9a
    return p2

    .line 2407
    :catchall_9b
    move-exception v1

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_9b

    throw v1
.end method

.method private dumpCpuStats(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2374
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2375
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2376
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 2377
    monitor-exit v0

    .line 2378
    return-void

    .line 2377
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2331
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2332
    const-string v0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    const-string v0, "  [--daily] [--reset] [--reset-all] [--write] [--new-daily] [--read-daily]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2334
    const-string v0, "  [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2337
    const-string v0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2338
    const-string v0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2340
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2341
    const-string v0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2342
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2343
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2344
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2345
    const-string v0, "  --reset-all: reset the stats, clearing all current and past data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2346
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    const-string v0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    const-string v0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    const-string v0, "  --power-profile: dump the power profile constants"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2355
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2360
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    return-void
.end method

.method private dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2382
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2383
    const-string v0, "dump"

    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2384
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2385
    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpMeasuredEnergyStatsLocked(Ljava/io/PrintWriter;)V

    .line 2386
    monitor-exit v0

    .line 2387
    return-void

    .line 2386
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method private dumpPowerProfile(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2390
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2391
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpPowerProfileLocked(Ljava/io/PrintWriter;)V

    .line 2392
    monitor-exit v0

    .line 2393
    return-void

    .line 2392
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private dumpSettings(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2366
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2367
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2368
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 2369
    monitor-exit v0

    .line 2370
    return-void

    .line 2369
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .line 537
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_5

    .line 538
    return-object v0

    .line 540
    :cond_5
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 541
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 542
    return-object v1
.end method

.method static synthetic lambda$awaitCompletion$0(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 497
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 498
    return-void
.end method

.method static synthetic lambda$noteVideoFps$108(II)V
    .registers 3
    .param p0, "uid"    # I
    .param p1, "fps"    # I

    .line 3092
    invoke-static {}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteVideoFps(II)V

    .line 3093
    return-void
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private static onlyCaller([I)Z
    .registers 5
    .param p0, "requestUids"    # [I

    .line 2852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2853
    .local v0, "caller":I
    array-length v1, p0

    .line 2854
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_11

    .line 2855
    aget v3, p0, v2

    if-eq v3, v0, :cond_e

    .line 2856
    const/4 v3, 0x0

    return v3

    .line 2854
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2859
    .end local v2    # "i":I
    :cond_11
    const/4 v2, 0x1

    return v2
.end method

.method private populatePowerEntityMaps()V
    .registers 9

    .line 210
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    .line 211
    .local v0, "entities":[Landroid/hardware/power/stats/PowerEntity;
    if-nez v0, :cond_9

    .line 212
    return-void

    .line 215
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_47

    .line 216
    aget-object v2, v0, v1

    .line 217
    .local v2, "entity":Landroid/hardware/power/stats/PowerEntity;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v3, "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_15
    iget-object v5, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v5, v5

    if-ge v4, v5, :cond_2c

    .line 219
    iget-object v5, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v5, v5, v4

    .line 220
    .local v5, "state":Landroid/hardware/power/stats/State;
    iget v6, v5, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v5, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v5    # "state":Landroid/hardware/power/stats/State;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 223
    .end local v4    # "j":I
    :cond_2c
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v5, v2, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v5, v2, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v2    # "entity":Landroid/hardware/power/stats/PowerEntity;
    .end local v3    # "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 226
    .end local v1    # "i":I
    :cond_47
    return-void
.end method

.method private registerStatsCallbacks()V
    .registers 6

    .line 783
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 784
    .local v0, "statsManager":Landroid/app/StatsManager;
    new-instance v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl-IA;)V

    .line 786
    .local v1, "pullAtomCallback":Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
    nop

    .line 789
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 786
    const/16 v4, 0x2780

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 790
    nop

    .line 793
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 790
    const/16 v4, 0x2781

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 794
    nop

    .line 797
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 794
    const/16 v4, 0x277f

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 798
    return-void
.end method

.method private shouldCollectExternalStats()Z
    .registers 5

    .line 2844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2845
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 2844
    :goto_18
    return v0
.end method

.method private syncStats(Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 491
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->awaitUninterruptibly(Ljava/util/concurrent/Future;)V

    .line 492
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .registers 14
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 624
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 626
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 627
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 633
    return-void

    .line 632
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public computeBatteryTimeRemaining()J
    .registers 6

    .line 859
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 860
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 861
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_18

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_19

    :cond_18
    move-wide v3, v1

    :goto_19
    monitor-exit v0

    return-wide v3

    .line 862
    .end local v1    # "time":J
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public computeChargeTimeRemaining()J
    .registers 6

    .line 866
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 867
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 868
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_18

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_19

    :cond_18
    move-wide v3, v1

    :goto_19
    monitor-exit v0

    return-wide v3

    .line 869
    .end local v1    # "time":J
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 35
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2431
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v2, "BatteryStatsService"

    invoke-static {v0, v2, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 2433
    :cond_11
    const/4 v2, 0x0

    .line 2434
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 2435
    .local v3, "useCheckinFormat":Z
    const/4 v4, 0x0

    .line 2436
    .local v4, "toProto":Z
    const/4 v5, 0x0

    .line 2437
    .local v5, "isRealCheckin":Z
    const/4 v6, 0x0

    .line 2438
    .local v6, "noOutput":Z
    const/4 v7, 0x0

    .line 2439
    .local v7, "writeData":Z
    const-wide/16 v11, -0x1

    .line 2440
    .local v11, "historyStart":J
    const/4 v8, -0x1

    .line 2442
    .local v8, "reqUid":I
    const/4 v0, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_3e

    array-length v14, v10

    if-lt v14, v0, :cond_3e

    const-string v14, "--uidmore"

    aget-object v15, v10, v13

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 2444
    :try_start_2b
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->dumpUID1000(Ljava/io/PrintWriter;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_31

    .line 2448
    goto :goto_3d

    .line 2445
    :catch_31
    move-exception v0

    .line 2446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->close()V

    .line 2447
    const-string/jumbo v13, "testuidmore"

    const-string v14, ""

    invoke-static {v13, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2449
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void

    .line 2452
    :cond_3e
    if-eqz v10, :cond_53

    array-length v14, v10

    if-lt v14, v0, :cond_53

    const-string v14, "--brightness"

    aget-object v15, v10, v13

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_53

    .line 2453
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->dumpRealScreenBrightness(Ljava/io/PrintWriter;)V

    .line 2454
    return-void

    .line 2457
    :cond_53
    if-eqz v10, :cond_314

    .line 2458
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_56
    array-length v0, v10

    if-ge v15, v0, :cond_306

    .line 2459
    aget-object v13, v10, v15

    .line 2460
    .local v13, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2461
    const/4 v3, 0x1

    .line 2462
    const/4 v5, 0x1

    goto/16 :goto_29f

    .line 2463
    :cond_67
    const-string v0, "--history"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2464
    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_29f

    .line 2465
    :cond_73
    const-string v0, "--history-start"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v19, v15

    .end local v15    # "i":I
    .local v19, "i":I
    if-eqz v0, :cond_9f

    .line 2466
    or-int/lit8 v2, v2, 0x8

    .line 2467
    add-int/lit8 v0, v19, 0x1

    .line 2468
    .end local v19    # "i":I
    .local v0, "i":I
    array-length v14, v10

    if-lt v0, v14, :cond_8d

    .line 2469
    const-string v14, "Missing time argument for --history-since"

    invoke-virtual {v9, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2471
    return-void

    .line 2473
    :cond_8d
    aget-object v14, v10, v0

    move/from16 v22, v2

    move v15, v3

    const-wide/16 v2, 0x0

    .end local v2    # "flags":I
    .end local v3    # "useCheckinFormat":Z
    .local v15, "useCheckinFormat":Z
    .local v22, "flags":I
    invoke-static {v14, v2, v3}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 2474
    const/4 v7, 0x1

    move v3, v15

    move/from16 v2, v22

    move v15, v0

    goto/16 :goto_29f

    .line 2475
    .end local v0    # "i":I
    .end local v15    # "useCheckinFormat":Z
    .end local v22    # "flags":I
    .restart local v2    # "flags":I
    .restart local v3    # "useCheckinFormat":Z
    .restart local v19    # "i":I
    :cond_9f
    move v15, v3

    .end local v3    # "useCheckinFormat":Z
    .restart local v15    # "useCheckinFormat":Z
    const-string v0, "--history-create-events"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 2476
    add-int/lit8 v3, v19, 0x1

    .line 2477
    .end local v19    # "i":I
    .local v3, "i":I
    array-length v0, v10

    if-lt v3, v0, :cond_b6

    .line 2478
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2480
    return-void

    .line 2482
    :cond_b6
    aget-object v0, v10, v3

    move/from16 v22, v3

    move v14, v4

    const-wide/16 v3, 0x0

    .end local v3    # "i":I
    .end local v4    # "toProto":Z
    .local v14, "toProto":Z
    .local v22, "i":I
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2483
    .local v3, "events":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2484
    move/from16 v20, v5

    .end local v5    # "isRealCheckin":Z
    .local v20, "isRealCheckin":Z
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v5

    .line 2485
    :try_start_c9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 2486
    const-string v0, "Battery history create events started."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2487
    const/4 v6, 0x1

    .line 2488
    monitor-exit v5

    .line 2489
    .end local v3    # "events":J
    move v4, v14

    move v3, v15

    move/from16 v5, v20

    move/from16 v15, v22

    goto/16 :goto_29f

    .line 2488
    .restart local v3    # "events":J
    :catchall_dd
    move-exception v0

    monitor-exit v5
    :try_end_df
    .catchall {:try_start_c9 .. :try_end_df} :catchall_dd

    throw v0

    .line 2489
    .end local v3    # "events":J
    .end local v14    # "toProto":Z
    .end local v20    # "isRealCheckin":Z
    .end local v22    # "i":I
    .restart local v4    # "toProto":Z
    .restart local v5    # "isRealCheckin":Z
    .restart local v19    # "i":I
    :cond_e0
    move v14, v4

    move/from16 v20, v5

    .end local v4    # "toProto":Z
    .end local v5    # "isRealCheckin":Z
    .restart local v14    # "toProto":Z
    .restart local v20    # "isRealCheckin":Z
    const-string v0, "-c"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 2490
    const/4 v3, 0x1

    .line 2491
    .end local v15    # "useCheckinFormat":Z
    .local v3, "useCheckinFormat":Z
    or-int/lit8 v2, v2, 0x10

    move v4, v14

    move/from16 v15, v19

    move/from16 v5, v20

    goto/16 :goto_29f

    .line 2492
    .end local v3    # "useCheckinFormat":Z
    .restart local v15    # "useCheckinFormat":Z
    :cond_f5
    const-string v0, "--proto"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 2493
    const/4 v4, 0x1

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    .end local v14    # "toProto":Z
    .restart local v4    # "toProto":Z
    goto/16 :goto_29f

    .line 2494
    .end local v4    # "toProto":Z
    .restart local v14    # "toProto":Z
    :cond_105
    const-string v0, "--charged"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 2495
    or-int/lit8 v2, v2, 0x2

    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    goto/16 :goto_29f

    .line 2496
    :cond_117
    const-string v0, "--daily"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 2497
    or-int/lit8 v2, v2, 0x4

    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    goto/16 :goto_29f

    .line 2498
    :cond_129
    const-string v0, "--reset-all"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 2499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2500
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2501
    :try_start_137
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 2502
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryUsageStatsStore;->removeAllSnapshots()V

    .line 2503
    const-string v0, "Battery stats and history reset."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    const/4 v6, 0x1

    .line 2505
    monitor-exit v3

    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    goto/16 :goto_29f

    :catchall_150
    move-exception v0

    monitor-exit v3
    :try_end_152
    .catchall {:try_start_137 .. :try_end_152} :catchall_150

    throw v0

    .line 2506
    :cond_153
    const-string v0, "--reset"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 2507
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2508
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2509
    :try_start_161
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 2510
    const-string v0, "Battery stats reset."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    const/4 v6, 0x1

    .line 2512
    monitor-exit v3

    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    goto/16 :goto_29f

    :catchall_175
    move-exception v0

    monitor-exit v3
    :try_end_177
    .catchall {:try_start_161 .. :try_end_177} :catchall_175

    throw v0

    .line 2513
    :cond_178
    const-string v0, "--write"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 2514
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2515
    const-string v0, "dump"

    const/16 v3, 0x3f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2516
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2517
    :try_start_18d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 2518
    const-string v0, "Battery stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    const/4 v6, 0x1

    .line 2520
    monitor-exit v3

    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    goto/16 :goto_29f

    :catchall_1a1
    move-exception v0

    monitor-exit v3
    :try_end_1a3
    .catchall {:try_start_18d .. :try_end_1a3} :catchall_1a1

    throw v0

    .line 2521
    :cond_1a4
    const-string v0, "--new-daily"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 2522
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2523
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2524
    :try_start_1b2
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 2525
    const-string v0, "New daily stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2526
    const/4 v6, 0x1

    .line 2527
    monitor-exit v3

    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    goto/16 :goto_29f

    :catchall_1c6
    move-exception v0

    monitor-exit v3
    :try_end_1c8
    .catchall {:try_start_1b2 .. :try_end_1c8} :catchall_1c6

    throw v0

    .line 2528
    :cond_1c9
    const-string v0, "--read-daily"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 2529
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2530
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2531
    :try_start_1d7
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 2532
    const-string v0, "Last daily stats read."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    const/4 v6, 0x1

    .line 2534
    monitor-exit v3

    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    goto/16 :goto_29f

    :catchall_1eb
    move-exception v0

    monitor-exit v3
    :try_end_1ed
    .catchall {:try_start_1d7 .. :try_end_1ed} :catchall_1eb

    throw v0

    .line 2535
    :cond_1ee
    const-string v0, "--enable"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e3

    const-string v0, "enable"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_202

    move/from16 v3, v19

    goto/16 :goto_2e5

    .line 2542
    :cond_202
    const-string v0, "--disable"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0

    const-string v0, "disable"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    goto/16 :goto_2c0

    .line 2549
    :cond_214
    const-string v0, "-h"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 2550
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2551
    return-void

    .line 2552
    :cond_220
    const-string v0, "--settings"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 2553
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 2554
    return-void

    .line 2555
    :cond_22c
    const-string v0, "--cpu"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 2556
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 2557
    return-void

    .line 2558
    :cond_238
    const-string v0, "--measured-energy"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    .line 2559
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V

    .line 2560
    return-void

    .line 2561
    :cond_244
    const-string v0, "--power-profile"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 2562
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpPowerProfile(Ljava/io/PrintWriter;)V

    .line 2563
    return-void

    .line 2564
    :cond_250
    const-string v0, "-a"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    .line 2565
    or-int/lit8 v2, v2, 0x20

    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    goto :goto_29f

    .line 2566
    :cond_261
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28a

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_28a

    .line 2567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2568
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2569
    return-void

    .line 2573
    :cond_28a
    :try_start_28a
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2574
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2573
    invoke-virtual {v3, v13, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_298
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28a .. :try_end_298} :catch_2a5

    move v8, v3

    .line 2579
    move v4, v14

    move v3, v15

    move/from16 v15, v19

    move/from16 v5, v20

    .line 2458
    .end local v13    # "arg":Ljava/lang/String;
    .end local v14    # "toProto":Z
    .end local v19    # "i":I
    .end local v20    # "isRealCheckin":Z
    .restart local v3    # "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v5    # "isRealCheckin":Z
    .local v15, "i":I
    :goto_29f
    const/4 v13, 0x1

    add-int/2addr v15, v13

    move v0, v13

    const/4 v13, 0x0

    goto/16 :goto_56

    .line 2575
    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .end local v5    # "isRealCheckin":Z
    .restart local v13    # "arg":Ljava/lang/String;
    .restart local v14    # "toProto":Z
    .local v15, "useCheckinFormat":Z
    .restart local v19    # "i":I
    .restart local v20    # "isRealCheckin":Z
    :catch_2a5
    move-exception v0

    .line 2576
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2578
    return-void

    .line 2543
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2c0
    :goto_2c0
    move/from16 v3, v19

    const/4 v0, 0x0

    .end local v19    # "i":I
    .local v3, "i":I
    invoke-direct {v1, v9, v3, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 2544
    .end local v3    # "i":I
    .local v0, "i":I
    if-gez v0, :cond_2ca

    .line 2545
    return-void

    .line 2547
    :cond_2ca
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v10, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2548
    return-void

    .line 2535
    .end local v0    # "i":I
    .restart local v19    # "i":I
    :cond_2e3
    move/from16 v3, v19

    .line 2536
    .end local v19    # "i":I
    .restart local v3    # "i":I
    :goto_2e5
    const/4 v0, 0x1

    invoke-direct {v1, v9, v3, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 2537
    .end local v3    # "i":I
    .restart local v0    # "i":I
    if-gez v0, :cond_2ed

    .line 2538
    return-void

    .line 2540
    :cond_2ed
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v10, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2541
    return-void

    .line 2458
    .end local v0    # "i":I
    .end local v13    # "arg":Ljava/lang/String;
    .end local v14    # "toProto":Z
    .end local v20    # "isRealCheckin":Z
    .local v3, "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v5    # "isRealCheckin":Z
    .local v15, "i":I
    :cond_306
    move v14, v4

    move/from16 v20, v5

    move/from16 v30, v15

    move v15, v3

    move/from16 v3, v30

    .end local v4    # "toProto":Z
    .end local v5    # "isRealCheckin":Z
    .local v3, "i":I
    .restart local v14    # "toProto":Z
    .local v15, "useCheckinFormat":Z
    .restart local v20    # "isRealCheckin":Z
    move v13, v8

    move-wide/from16 v16, v11

    move v11, v6

    move v12, v7

    goto :goto_31d

    .line 2457
    .end local v14    # "toProto":Z
    .end local v15    # "useCheckinFormat":Z
    .end local v20    # "isRealCheckin":Z
    .local v3, "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v5    # "isRealCheckin":Z
    :cond_314
    move v15, v3

    move v14, v4

    move/from16 v20, v5

    move v13, v8

    move-wide/from16 v16, v11

    move v11, v6

    move v12, v7

    .line 2583
    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .end local v5    # "isRealCheckin":Z
    .end local v6    # "noOutput":Z
    .end local v7    # "writeData":Z
    .end local v8    # "reqUid":I
    .local v11, "noOutput":Z
    .local v12, "writeData":Z
    .local v13, "reqUid":I
    .restart local v14    # "toProto":Z
    .restart local v15    # "useCheckinFormat":Z
    .local v16, "historyStart":J
    .restart local v20    # "isRealCheckin":Z
    :goto_31d
    if-eqz v11, :cond_320

    .line 2584
    return-void

    .line 2587
    :cond_320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2589
    .local v28, "ident":J
    :try_start_324
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_32e

    .line 2590
    or-int/lit8 v2, v2, 0x40

    .line 2592
    :cond_32e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2594
    const-string v3, "dump"

    const/16 v4, 0x3f

    invoke-direct {v1, v3, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_338
    .catchall {:try_start_324 .. :try_end_338} :catchall_500

    .line 2596
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2597
    nop

    .line 2599
    if-ltz v13, :cond_349

    .line 2602
    and-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_349

    .line 2603
    or-int/lit8 v2, v2, 0x2

    .line 2605
    and-int/lit8 v2, v2, -0x11

    move/from16 v18, v2

    goto :goto_34b

    .line 2609
    :cond_349
    move/from16 v18, v2

    .end local v2    # "flags":I
    .local v18, "flags":I
    :goto_34b
    const/high16 v2, 0x420000

    if-eqz v14, :cond_409

    .line 2610
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 2612
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v20, :cond_3e3

    .line 2615
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 2616
    :try_start_360
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->exists()Z

    move-result v4
    :try_end_368
    .catchall {:try_start_360 .. :try_end_368} :catchall_3e0

    if-eqz v4, :cond_3de

    .line 2618
    :try_start_36a
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v4

    .line 2619
    .local v4, "raw":[B
    if-eqz v4, :cond_3bc

    .line 2620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2621
    .local v5, "in":Landroid/os/Parcel;
    array-length v6, v4

    const/4 v0, 0x0

    invoke-virtual {v5, v4, v0, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2622
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2623
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v22, 0x0

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v21, v0

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    invoke-direct/range {v21 .. v26}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$MeasuredEnergyRetriever;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 2626
    .local v0, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 2627
    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 2628
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2629
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v22, v6

    move-object/from16 v23, p1

    move-object/from16 v24, v3

    move/from16 v25, v18

    move-wide/from16 v26, v16

    invoke-virtual/range {v21 .. v27}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 2631
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V
    :try_end_3ba
    .catch Ljava/io/IOException; {:try_start_36a .. :try_end_3ba} :catch_3bd
    .catch Landroid/os/ParcelFormatException; {:try_start_36a .. :try_end_3ba} :catch_3bd
    .catchall {:try_start_36a .. :try_end_3ba} :catchall_3e0

    .line 2632
    :try_start_3ba
    monitor-exit v2

    return-void

    .line 2637
    .end local v0    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v4    # "raw":[B
    .end local v5    # "in":Landroid/os/Parcel;
    :cond_3bc
    goto :goto_3de

    .line 2634
    :catch_3bd
    move-exception v0

    .line 2635
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading checkin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 2636
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2635
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2639
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3de
    :goto_3de
    monitor-exit v2

    goto :goto_3e3

    :catchall_3e0
    move-exception v0

    monitor-exit v2
    :try_end_3e2
    .catchall {:try_start_3ba .. :try_end_3e2} :catchall_3e0

    throw v0

    .line 2642
    :cond_3e3
    :goto_3e3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2643
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 2644
    :try_start_3e9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v23, p1

    move-object/from16 v24, v3

    move/from16 v25, v18

    move-wide/from16 v26, v16

    invoke-virtual/range {v21 .. v27}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 2645
    if-eqz v12, :cond_403

    .line 2646
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2648
    :cond_403
    monitor-exit v4

    .line 2650
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto/16 :goto_4f8

    .line 2648
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_406
    move-exception v0

    monitor-exit v4
    :try_end_408
    .catchall {:try_start_3e9 .. :try_end_408} :catchall_406

    throw v0

    .line 2650
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_409
    if-eqz v15, :cond_4da

    .line 2651
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v19

    .line 2653
    .local v19, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v20, :cond_4b3

    .line 2656
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v7

    .line 2657
    :try_start_41c
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_424
    .catchall {:try_start_41c .. :try_end_424} :catchall_4ac

    if-eqz v2, :cond_4a8

    .line 2659
    :try_start_426
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v2

    move-object v8, v2

    .line 2660
    .local v8, "raw":[B
    if-eqz v8, :cond_47f

    .line 2661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v6, v2

    .line 2662
    .local v6, "in":Landroid/os/Parcel;
    array-length v2, v8

    const/4 v0, 0x0

    invoke-virtual {v6, v8, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2663
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2664
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v22, 0x0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v21, v0

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    invoke-direct/range {v21 .. v26}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$MeasuredEnergyRetriever;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 2667
    .local v0, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 2668
    invoke-virtual {v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 2669
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 2670
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_462
    .catch Ljava/io/IOException; {:try_start_426 .. :try_end_462} :catch_484
    .catch Landroid/os/ParcelFormatException; {:try_start_426 .. :try_end_462} :catch_484
    .catchall {:try_start_426 .. :try_end_462} :catchall_4ac

    move-object v2, v0

    move-object/from16 v4, p2

    move-object/from16 v5, v19

    move-object/from16 v21, v6

    .end local v6    # "in":Landroid/os/Parcel;
    .local v21, "in":Landroid/os/Parcel;
    move/from16 v6, v18

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v8    # "raw":[B
    .local v23, "raw":[B
    move-wide/from16 v7, v16

    :try_start_471
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 2672
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_47b
    .catch Ljava/io/IOException; {:try_start_471 .. :try_end_47b} :catch_47d
    .catch Landroid/os/ParcelFormatException; {:try_start_471 .. :try_end_47b} :catch_47d
    .catchall {:try_start_471 .. :try_end_47b} :catchall_4b1

    .line 2673
    :try_start_47b
    monitor-exit v22

    return-void

    .line 2675
    .end local v0    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v21    # "in":Landroid/os/Parcel;
    .end local v23    # "raw":[B
    :catch_47d
    move-exception v0

    goto :goto_487

    .line 2660
    .restart local v8    # "raw":[B
    :cond_47f
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 2678
    .end local v8    # "raw":[B
    goto :goto_4aa

    .line 2675
    :catch_484
    move-exception v0

    move-object/from16 v22, v7

    .line 2676
    .local v0, "e":Ljava/lang/Exception;
    :goto_487
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 2677
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2676
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4aa

    .line 2657
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4a8
    move-object/from16 v22, v7

    .line 2680
    :goto_4aa
    monitor-exit v22

    goto :goto_4b3

    :catchall_4ac
    move-exception v0

    move-object/from16 v22, v7

    :goto_4af
    monitor-exit v22
    :try_end_4b0
    .catchall {:try_start_47b .. :try_end_4b0} :catchall_4b1

    throw v0

    :catchall_4b1
    move-exception v0

    goto :goto_4af

    .line 2683
    :cond_4b3
    :goto_4b3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2684
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 2685
    :try_start_4b9
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_4bd
    .catchall {:try_start_4b9 .. :try_end_4bd} :catchall_4d3

    move-object/from16 v4, p2

    move-object/from16 v5, v19

    move/from16 v6, v18

    move-object/from16 v21, v7

    move-wide/from16 v7, v16

    :try_start_4c7
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 2686
    if-eqz v12, :cond_4d1

    .line 2687
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2689
    :cond_4d1
    monitor-exit v21

    .line 2691
    .end local v19    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_4f8

    .line 2689
    .restart local v19    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_4d3
    move-exception v0

    move-object/from16 v21, v7

    :goto_4d6
    monitor-exit v21
    :try_end_4d7
    .catchall {:try_start_4c7 .. :try_end_4d7} :catchall_4d8

    throw v0

    :catchall_4d8
    move-exception v0

    goto :goto_4d6

    .line 2693
    .end local v19    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4da
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2694
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 2695
    :try_start_4e0
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_4e4
    .catchall {:try_start_4e0 .. :try_end_4e4} :catchall_4f9

    move-object/from16 v4, p2

    move/from16 v5, v18

    move v6, v13

    move-object/from16 v19, v7

    move-wide/from16 v7, v16

    :try_start_4ed
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 2696
    if-eqz v12, :cond_4f7

    .line 2697
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2699
    :cond_4f7
    monitor-exit v19

    .line 2702
    :goto_4f8
    return-void

    .line 2699
    :catchall_4f9
    move-exception v0

    move-object/from16 v19, v7

    :goto_4fc
    monitor-exit v19
    :try_end_4fd
    .catchall {:try_start_4ed .. :try_end_4fd} :catchall_4fe

    throw v0

    :catchall_4fe
    move-exception v0

    goto :goto_4fc

    .line 2596
    .end local v18    # "flags":I
    .restart local v2    # "flags":I
    :catchall_500
    move-exception v0

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2597
    throw v0
.end method

.method public enforceCallingPermission()V
    .registers 6

    .line 2258
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2259
    return-void

    .line 2261
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 2262
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 2261
    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2263
    return-void
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .registers 13
    .param p1, "rpmStats"    # Lcom/android/internal/os/RpmStats;

    .line 233
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_84

    .line 237
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_86

    .line 241
    :try_start_19
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 242
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2c} :catch_7b

    .line 246
    .local v0, "results":[Landroid/hardware/power/stats/StateResidencyResult;
    nop

    .line 248
    if-nez v0, :cond_30

    return-void

    .line 250
    :cond_30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    array-length v2, v0

    if-ge v1, v2, :cond_7a

    .line 251
    aget-object v2, v0, v1

    .line 252
    .local v2, "result":Landroid/hardware/power/stats/StateResidencyResult;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v4, v2, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 253
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/os/RpmStats;->getSubsystem(Ljava/lang/String;)Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    move-result-object v3

    .line 255
    .local v3, "subsystem":Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_49
    iget-object v5, v2, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v5, v5

    if-ge v4, v5, :cond_77

    .line 256
    iget-object v5, v2, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v5, v5, v4

    .line 257
    .local v5, "stateResidency":Landroid/hardware/power/stats/StateResidency;
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v7, v2, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget v7, v5, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-wide v7, v5, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    iget-wide v9, v5, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    long-to-int v9, v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->putState(Ljava/lang/String;JI)V

    .line 255
    .end local v5    # "stateResidency":Landroid/hardware/power/stats/StateResidency;
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 250
    .end local v2    # "result":Landroid/hardware/power/stats/StateResidencyResult;
    .end local v3    # "subsystem":Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
    .end local v4    # "j":I
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 262
    .end local v1    # "i":I
    :cond_7a
    return-void

    .line 243
    .end local v0    # "results":[Landroid/hardware/power/stats/StateResidencyResult;
    :catch_7b
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BatteryStatsService"

    const-string v2, "Failed to getStateResidencyAsync"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    return-void

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_84
    :goto_84
    :try_start_84
    monitor-exit v0

    return-void

    .line 237
    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_86

    throw v1
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .registers 3
    .param p1, "railStats"    # Lcom/android/internal/os/RailStats;

    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 271
    nop

    .line 272
    return-void

    .line 270
    :catchall_5
    move-exception v0

    .line 271
    throw v0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAppScreenInfo()[B
    .registers 2

    .line 3075
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAppScreenInfo()[B

    move-result-object v0

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .line 2246
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 4

    .line 2252
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    .line 719
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 723
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 724
    invoke-virtual {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v1

    .line 723
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->shouldUpdateStats(Ljava/util/List;J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 725
    const/16 v0, 0x3f

    const-string v1, "get-stats"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 728
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .registers 4

    .line 2773
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2777
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2778
    :try_start_e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2779
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .registers 4

    .line 2709
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 2711
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    :cond_13
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2717
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2718
    :try_start_19
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2719
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getDyAppScreenPower()[B
    .registers 2

    .line 3071
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getDyAppScreenPower()[B

    move-result-object v0

    return-object v0
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .registers 4

    .line 2745
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2749
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2750
    :try_start_e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2751
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .registers 6
    .param p1, "requestUid"    # I

    .line 2867
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 2868
    .local v0, "writer":Lcom/android/server/am/HealthStatsBatteryStatsWriter;
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 2869
    .local v1, "uidWriter":Landroid/os/health/HealthStatsWriter;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .line 2870
    .local v2, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v2, :cond_1f

    .line 2871
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 2873
    :cond_1f
    new-instance v3, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v3, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object v3
.end method

.method public getServiceType()I
    .registers 2

    .line 547
    const/16 v0, 0x9

    return v0
.end method

.method public getStatistics()[B
    .registers 5

    .line 732
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 739
    .local v0, "out":Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 740
    const-string v1, "get-stats"

    const/16 v2, 0x3f

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 741
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 742
    :try_start_19
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 743
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_28

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 745
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 746
    return-object v1

    .line 743
    .end local v1    # "data":[B
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getStatisticsStream(Z)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "forceUpdate"    # Z

    .line 756
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 761
    .local v0, "out":Landroid/os/Parcel;
    if-eqz p1, :cond_18

    .line 764
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 765
    const-string v1, "get-stats"

    const/16 v3, 0x3f

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 767
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 768
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 769
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_39

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 772
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 774
    :try_start_29
    const-string v3, "battery-stats"

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_30

    return-object v2

    .line 775
    :catch_30
    move-exception v3

    .line 776
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    return-object v2

    .line 769
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public getSubsystemLowPowerStats()Ljava/lang/String;
    .registers 12

    .line 276
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_14c

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14c

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_14c

    .line 280
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_150

    .line 284
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 285
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_141

    .line 289
    .local v0, "results":[Landroid/hardware/power/stats/StateResidencyResult;
    nop

    .line 291
    if-eqz v0, :cond_13e

    array-length v1, v0

    if-nez v1, :cond_35

    goto/16 :goto_13e

    .line 293
    :cond_35
    const/16 v1, 0x4000

    .line 294
    .local v1, "charsLeft":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SubsystemPowerState"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    array-length v4, v0

    if-ge v3, v4, :cond_139

    .line 296
    aget-object v4, v0, v3

    .line 297
    .local v4, "result":Landroid/hardware/power/stats/StateResidencyResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v5, "subsystemBuilder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " subsystem_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v8, v4, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_84
    iget-object v7, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v7, v7

    if-ge v6, v7, :cond_11f

    .line 302
    iget-object v7, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v7, v7, v6

    .line 303
    .local v7, "stateResidency":Landroid/hardware/power/stats/StateResidency;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " state_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v10, v4, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    iget v10, v7, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 305
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 304
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v7, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v7, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " last entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v7, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .end local v7    # "stateResidency":Landroid/hardware/power/stats/StateResidency;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_84

    .line 311
    .end local v6    # "j":I
    :cond_11f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gt v6, v1, :cond_131

    .line 312
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v1, v6

    .line 313
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 295
    .end local v4    # "result":Landroid/hardware/power/stats/StateResidencyResult;
    .end local v5    # "subsystemBuilder":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3f

    .line 315
    .restart local v4    # "result":Landroid/hardware/power/stats/StateResidencyResult;
    .restart local v5    # "subsystemBuilder":Ljava/lang/StringBuilder;
    :cond_131
    const-string v6, "BatteryStatsService"

    const-string/jumbo v7, "getSubsystemLowPowerStats: buffer not enough"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v3    # "i":I
    .end local v4    # "result":Landroid/hardware/power/stats/StateResidencyResult;
    .end local v5    # "subsystemBuilder":Ljava/lang/StringBuilder;
    :cond_139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 291
    .end local v1    # "charsLeft":I
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_13e
    :goto_13e
    const-string v1, "Empty"

    return-object v1

    .line 286
    .end local v0    # "results":[Landroid/hardware/power/stats/StateResidencyResult;
    :catch_141
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BatteryStatsService"

    const-string v2, "Failed to getStateResidencyAsync"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const-string v1, "Empty"

    return-object v1

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14c
    :goto_14c
    :try_start_14c
    const-string v1, "Empty"

    monitor-exit v0

    return-object v1

    .line 280
    :catchall_150
    move-exception v1

    monitor-exit v0
    :try_end_152
    .catchall {:try_start_14c .. :try_end_152} :catchall_150

    throw v1
.end method

.method public getTargetScreenInfo(Ljava/lang/String;)[B
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3079
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTargetScreenInfo(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getWakeLockStats()Landroid/os/WakeLockStats;
    .registers 4

    .line 2759
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2763
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2764
    :try_start_e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2765
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .registers 4

    .line 2727
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 2729
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    :cond_13
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2735
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2736
    :try_start_19
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2737
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public initPowerManagement()V
    .registers 9

    .line 510
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 511
    .local v0, "powerMgr":Landroid/os/PowerManagerInternal;
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 512
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 513
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 514
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 513
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLockedInit(ZJJ)V

    .line 516
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_2d

    .line 517
    new-instance v1, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 518
    return-void

    .line 516
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public isCharging()Z
    .registers 3

    .line 853
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 854
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 855
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isOnBattery()Z
    .registers 2

    .line 2197
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$addIsolatedUid$6$com-android-server-am-BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 628
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 629
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(IIJJ)V

    .line 630
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteAlarmFinish$21$com-android-server-am-BatteryStatsService(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "localWs"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1000
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1001
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1002
    monitor-exit v2

    .line 1003
    return-void

    .line 1002
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteAlarmStart$20$com-android-server-am-BatteryStatsService(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "localWs"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 986
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 987
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 988
    monitor-exit v2

    .line 989
    return-void

    .line 988
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteBleScanReset$91$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2111
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2112
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked(JJ)V

    .line 2113
    monitor-exit v0

    .line 2114
    return-void

    .line 2113
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteBleScanResults$92$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;IJJ)V
    .registers 15
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2126
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2129
    monitor-exit v0

    .line 2130
    return-void

    .line 2129
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteBleScanStarted$89$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;ZJJ)V
    .registers 15
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2080
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2081
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2083
    monitor-exit v0

    .line 2084
    return-void

    .line 2083
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteBleScanStopped$90$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;ZJJ)V
    .registers 15
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2096
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2097
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2099
    monitor-exit v0

    .line 2100
    return-void

    .line 2099
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteBluetoothControllerActivity$94$com-android-server-am-BatteryStatsService(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .registers 15
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2167
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-wide/16 v3, -0x1

    move-object v2, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    .line 2170
    monitor-exit v0

    .line 2171
    return-void

    .line 2170
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method synthetic lambda$noteChangeWakelockFromSource$25$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 35
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "localNewWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z
    .param p12, "elapsedRealtime"    # J
    .param p14, "uptime"    # J

    .line 1064
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1065
    :try_start_5
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    invoke-virtual/range {v3 .. v18}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1068
    monitor-exit v2

    .line 1069
    return-void

    .line 1068
    :catchall_26
    move-exception v0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v0
.end method

.method synthetic lambda$noteConnectivityChanged$44$com-android-server-am-BatteryStatsService(ILjava/lang/String;JJ)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1353
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;JJ)V

    .line 1355
    monitor-exit v0

    .line 1356
    return-void

    .line 1355
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteCurrentTimeChanged$100$com-android-server-am-BatteryStatsService(JJJ)V
    .registers 15
    .param p1, "currentTime"    # J
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2921
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2922
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteCurrentTimeChangedLocked(JJJ)V

    .line 2923
    monitor-exit v0

    .line 2924
    return-void

    .line 2923
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteDeviceIdleMode$86$com-android-server-am-BatteryStatsService(ILjava/lang/String;IJJ)V
    .registers 19
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 2011
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2012
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;IJJ)V

    .line 2014
    monitor-exit v2

    .line 2015
    return-void

    .line 2014
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteEvent$13$com-android-server-am-BatteryStatsService(ILjava/lang/String;IJJ)V
    .registers 19
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 884
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 885
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;IJJ)V

    .line 886
    monitor-exit v2

    .line 887
    return-void

    .line 886
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteFlashlightOff$60$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1603
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1604
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(IJJ)V

    .line 1605
    monitor-exit v0

    .line 1606
    return-void

    .line 1605
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteFlashlightOn$59$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1588
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1589
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(IJJ)V

    .line 1590
    monitor-exit v0

    .line 1591
    return-void

    .line 1590
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteFullWifiLockAcquired$72$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1818
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1819
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 1820
    monitor-exit v0

    .line 1821
    return-void

    .line 1820
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteFullWifiLockAcquiredFromSource$78$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1897
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1898
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1900
    monitor-exit v0

    .line 1901
    return-void

    .line 1900
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteFullWifiLockReleased$73$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1831
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1832
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 1833
    monitor-exit v0

    .line 1834
    return-void

    .line 1833
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteFullWifiLockReleasedFromSource$79$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1912
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1913
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1915
    monitor-exit v0

    .line 1916
    return-void

    .line 1915
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteGpsChanged$37$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 15
    .param p1, "localOldWs"    # Landroid/os/WorkSource;
    .param p2, "localNewWs"    # Landroid/os/WorkSource;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1259
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1260
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 1261
    monitor-exit v0

    .line 1262
    return-void

    .line 1261
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteGpsSignalQuality$38$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "signalLevel"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1272
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsSignalQualityLocked(IJJ)V

    .line 1273
    monitor-exit v0

    .line 1274
    return-void

    .line 1273
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteInteractive$43$com-android-server-am-BatteryStatsService(ZJ)V
    .registers 6
    .param p1, "interactive"    # Z
    .param p2, "elapsedRealtime"    # J

    .line 1340
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1341
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(ZJ)V

    .line 1342
    monitor-exit v0

    .line 1343
    return-void

    .line 1342
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteJobFinish$17$com-android-server-am-BatteryStatsService(Ljava/lang/String;IIJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 942
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 943
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;IIJJ)V

    .line 944
    monitor-exit v2

    .line 945
    return-void

    .line 944
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteJobStart$16$com-android-server-am-BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 928
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 929
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;IJJ)V

    .line 930
    monitor-exit v0

    .line 931
    return-void

    .line 930
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteJobsDeferred$18$com-android-server-am-BatteryStatsService(IIJJJ)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 955
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 956
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobsDeferredLocked(IIJJJ)V

    .line 958
    monitor-exit v2

    .line 959
    return-void

    .line 958
    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method synthetic lambda$noteLongPartialWakelockFinish$29$com-android-server-am-BatteryStatsService(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1130
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1131
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1133
    monitor-exit v2

    .line 1134
    return-void

    .line 1133
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteLongPartialWakelockFinishFromSource$30$com-android-server-am-BatteryStatsService(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1147
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1148
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1150
    monitor-exit v2

    .line 1151
    return-void

    .line 1150
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteLongPartialWakelockStart$27$com-android-server-am-BatteryStatsService(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1097
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1098
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1100
    monitor-exit v2

    .line 1101
    return-void

    .line 1100
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteLongPartialWakelockStartFromSource$28$com-android-server-am-BatteryStatsService(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1114
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1115
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1117
    monitor-exit v2

    .line 1118
    return-void

    .line 1117
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$noteMobileRadioPowerState$45$com-android-server-am-BatteryStatsService(IJIJJ)V
    .registers 22
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 1368
    move-object v1, p0

    move v11, p1

    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 1370
    :try_start_5
    iget v0, v1, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    if-ne v0, v11, :cond_b

    monitor-exit v12

    return-void

    .line 1372
    :cond_b
    iput v11, v1, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 1373
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJIJJ)Z

    move-result v0

    .line 1375
    .local v0, "update":Z
    monitor-exit v12
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_28

    .line 1377
    if-eqz v0, :cond_27

    .line 1378
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v3, "modem-data"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1380
    :cond_27
    return-void

    .line 1375
    .end local v0    # "update":Z
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v12
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method synthetic lambda$noteModemControllerActivity$95$com-android-server-am-BatteryStatsService(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 16
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "networkStatsManager"    # Landroid/app/usage/NetworkStatsManager;

    .line 2190
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 2192
    return-void
.end method

.method synthetic lambda$noteNetworkInterfaceForTransports$84$com-android-server-am-BatteryStatsService(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "transportTypes"    # [I

    .line 1983
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    .line 1984
    return-void
.end method

.method synthetic lambda$noteNetworkStatsEnabled$85$com-android-server-am-BatteryStatsService()V
    .registers 4

    .line 1997
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v1, "network-stats-enabled"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 2000
    return-void
.end method

.method synthetic lambda$notePackageInstalled$87$com-android-server-am-BatteryStatsService(Ljava/lang/String;JJJ)V
    .registers 19
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 2025
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2026
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;JJJ)V

    .line 2028
    monitor-exit v2

    .line 2029
    return-void

    .line 2028
    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method synthetic lambda$notePackageUninstalled$88$com-android-server-am-BatteryStatsService(Ljava/lang/String;JJ)V
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2039
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2040
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;JJ)V

    .line 2041
    monitor-exit v0

    .line 2042
    return-void

    .line 2041
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$notePhoneDataConnectionState$49$com-android-server-am-BatteryStatsService(IZIIJJ)V
    .registers 21
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "serviceType"    # I
    .param p4, "nrFrequency"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 1432
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1433
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZIIJJ)V

    .line 1435
    monitor-exit v2

    .line 1436
    return-void

    .line 1435
    :catchall_14
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method

.method synthetic lambda$notePhoneOff$47$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1405
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1406
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked(JJ)V

    .line 1407
    monitor-exit v0

    .line 1408
    return-void

    .line 1407
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$notePhoneOn$46$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1392
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1393
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked(JJ)V

    .line 1394
    monitor-exit v0

    .line 1395
    return-void

    .line 1394
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$notePhoneSignalStrength$48$com-android-server-am-BatteryStatsService(Landroid/telephony/SignalStrength;JJ)V
    .registers 13
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1418
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1419
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;JJ)V

    .line 1420
    monitor-exit v0

    .line 1421
    return-void

    .line 1420
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$notePhoneState$50$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 15
    .param p1, "state"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1446
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1447
    .local v0, "simState":I
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 1448
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, v0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(IIJJ)V

    .line 1449
    monitor-exit v8

    .line 1450
    return-void

    .line 1449
    :catchall_1c
    move-exception v1

    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method synthetic lambda$noteProcessAnr$10$com-android-server-am-BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 678
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 679
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;IJJ)V

    .line 680
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteProcessCrash$9$com-android-server-am-BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 664
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 665
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;IJJ)V

    .line 666
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteProcessDied$102$com-android-server-am-BatteryStatsService(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 2955
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2956
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessDiedLocked(II)V

    .line 2957
    monitor-exit v0

    .line 2958
    return-void

    .line 2957
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteProcessFinish$11$com-android-server-am-BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 690
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 691
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;IJJ)V

    .line 692
    monitor-exit v0

    .line 693
    return-void

    .line 692
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteProcessStart$8$com-android-server-am-BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 650
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 651
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;IJJ)V

    .line 652
    monitor-exit v0

    .line 653
    return-void

    .line 652
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteResetAudio$57$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1558
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1559
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked(JJ)V

    .line 1560
    monitor-exit v0

    .line 1561
    return-void

    .line 1560
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteResetCamera$63$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1665
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1666
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked(JJ)V

    .line 1667
    monitor-exit v0

    .line 1668
    return-void

    .line 1667
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteResetFlashlight$64$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1680
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1681
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked(JJ)V

    .line 1682
    monitor-exit v0

    .line 1683
    return-void

    .line 1682
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteResetVideo$58$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1573
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1574
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked(JJ)V

    .line 1575
    monitor-exit v0

    .line 1576
    return-void

    .line 1575
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteScreenBrightness$40$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 14
    .param p1, "brightness"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1301
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1302
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(IIJJ)V

    .line 1303
    monitor-exit v0

    .line 1304
    return-void

    .line 1303
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteScreenState$39$com-android-server-am-BatteryStatsService(IJJJ)V
    .registers 20
    .param p1, "state"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "currentTime"    # J

    .line 1286
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1287
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(IIJJJ)V

    .line 1288
    monitor-exit v2

    .line 1290
    return-void

    .line 1288
    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method synthetic lambda$noteServiceStartLaunch$106$com-android-server-am-BatteryStatsService(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 3006
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 3007
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_17

    .line 3009
    .local v0, "stats":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-wide/from16 v3, p6

    :try_start_12
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked(J)V

    .line 3010
    .end local v0    # "stats":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v2

    .line 3011
    return-void

    .line 3010
    :catchall_17
    move-exception v0

    move-wide/from16 v3, p6

    :goto_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1c

    throw v0

    :catchall_1c
    move-exception v0

    goto :goto_1a
.end method

.method synthetic lambda$noteServiceStartRunning$104$com-android-server-am-BatteryStatsService(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 2978
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2979
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_17

    .line 2981
    .local v0, "stats":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-wide/from16 v3, p6

    :try_start_12
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked(J)V

    .line 2982
    .end local v0    # "stats":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v2

    .line 2983
    return-void

    .line 2982
    :catchall_17
    move-exception v0

    move-wide/from16 v3, p6

    :goto_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1c

    throw v0

    :catchall_1c
    move-exception v0

    goto :goto_1a
.end method

.method synthetic lambda$noteServiceStopLaunch$107$com-android-server-am-BatteryStatsService(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 3020
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 3021
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_17

    .line 3023
    .local v0, "stats":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-wide/from16 v3, p6

    :try_start_12
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked(J)V

    .line 3024
    .end local v0    # "stats":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v2

    .line 3025
    return-void

    .line 3024
    :catchall_17
    move-exception v0

    move-wide/from16 v3, p6

    :goto_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1c

    throw v0

    :catchall_1c
    move-exception v0

    goto :goto_1a
.end method

.method synthetic lambda$noteServiceStopRunning$105$com-android-server-am-BatteryStatsService(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 2992
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2993
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_17

    .line 2995
    .local v0, "stats":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-wide/from16 v3, p6

    :try_start_12
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked(J)V

    .line 2996
    .end local v0    # "stats":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v2

    .line 2997
    return-void

    .line 2996
    :catchall_17
    move-exception v0

    move-wide/from16 v3, p6

    :goto_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1c

    throw v0

    :catchall_1c
    move-exception v0

    goto :goto_1a
.end method

.method synthetic lambda$noteStartAudio$53$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1490
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1491
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(IJJ)V

    .line 1492
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 1494
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/server/am/SmartPowerServiceStub;->uidAudioStatusChanged(IZ)V

    .line 1495
    return-void

    .line 1492
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method synthetic lambda$noteStartCamera$61$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1622
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getLastResumedActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1623
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    .line 1624
    if-nez v0, :cond_11

    const-string v2, ""

    goto :goto_13

    :cond_11
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_13
    const/4 v3, 0x1

    .line 1623
    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->notifyCameraStateChanged(Ljava/lang/String;I)V

    .line 1627
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1628
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(IJJ)V

    .line 1629
    monitor-exit v1

    .line 1630
    return-void

    .line 1629
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v2
.end method

.method synthetic lambda$noteStartSensor$31$com-android-server-am-BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1161
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1162
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(IIJJ)V

    .line 1163
    monitor-exit v0

    .line 1164
    return-void

    .line 1163
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteStartSensorWithPkg$33$com-android-server-am-BatteryStatsService(IIJJLjava/lang/String;)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J
    .param p7, "packageName"    # Ljava/lang/String;

    .line 1195
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1196
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(IIJJLjava/lang/String;)V

    .line 1197
    monitor-exit v2

    .line 1198
    return-void

    .line 1197
    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method synthetic lambda$noteStartVideo$55$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1524
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1525
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(IJJ)V

    .line 1526
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 1528
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/server/am/SmartPowerServiceStub;->uidVideoStatusChanged(IZ)V

    .line 1529
    return-void

    .line 1526
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method synthetic lambda$noteStartWakelock$22$com-android-server-am-BatteryStatsService(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 26
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .line 1014
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1015
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1017
    monitor-exit v2

    .line 1018
    return-void

    .line 1017
    :catchall_1c
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method synthetic lambda$noteStartWakelockFromSource$24$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 25
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .line 1045
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1046
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1048
    monitor-exit v2

    .line 1049
    return-void

    .line 1048
    :catchall_1a
    move-exception v0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method synthetic lambda$noteStopAudio$54$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1507
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1508
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(IJJ)V

    .line 1509
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 1511
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/server/am/SmartPowerServiceStub;->uidAudioStatusChanged(IZ)V

    .line 1512
    return-void

    .line 1509
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method synthetic lambda$noteStopCamera$62$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1645
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getLastResumedActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1646
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    .line 1647
    if-nez v0, :cond_11

    const-string v2, ""

    goto :goto_13

    :cond_11
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_13
    const/4 v3, 0x2

    .line 1646
    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->notifyCameraStateChanged(Ljava/lang/String;I)V

    .line 1650
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1651
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(IJJ)V

    .line 1652
    monitor-exit v1

    .line 1653
    return-void

    .line 1652
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v2
.end method

.method synthetic lambda$noteStopSensor$32$com-android-server-am-BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1176
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(IIJJ)V

    .line 1178
    monitor-exit v0

    .line 1179
    return-void

    .line 1178
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteStopSensorWithPkg$34$com-android-server-am-BatteryStatsService(IIJJLjava/lang/String;)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J
    .param p7, "packageName"    # Ljava/lang/String;

    .line 1214
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1215
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(IIJJLjava/lang/String;)V

    .line 1216
    monitor-exit v2

    .line 1217
    return-void

    .line 1216
    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method synthetic lambda$noteStopVideo$56$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1541
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1542
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(IJJ)V

    .line 1543
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 1545
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/server/am/SmartPowerServiceStub;->uidVideoStatusChanged(IZ)V

    .line 1546
    return-void

    .line 1543
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method synthetic lambda$noteStopWakelock$23$com-android-server-am-BatteryStatsService(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 24
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .line 1029
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1030
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1032
    monitor-exit v2

    .line 1033
    return-void

    .line 1032
    :catchall_19
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method synthetic lambda$noteStopWakelockFromSource$26$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 23
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .line 1081
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1082
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 1084
    monitor-exit v2

    .line 1085
    return-void

    .line 1084
    :catchall_17
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method synthetic lambda$noteSyncFinish$15$com-android-server-am-BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 912
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 913
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;IJJ)V

    .line 914
    monitor-exit v0

    .line 915
    return-void

    .line 914
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteSyncStart$14$com-android-server-am-BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 897
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 898
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;IJJ)V

    .line 899
    monitor-exit v0

    .line 900
    return-void

    .line 899
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteUidProcessState$12$com-android-server-am-BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "state"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 705
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(IIJJ)V

    .line 707
    monitor-exit v0

    .line 708
    return-void

    .line 707
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteUserActivity$41$com-android-server-am-BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "event"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1315
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1316
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(IIJJ)V

    .line 1317
    monitor-exit v0

    .line 1318
    return-void

    .line 1317
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteVibratorOff$36$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1243
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1244
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(IJJ)V

    .line 1245
    monitor-exit v0

    .line 1246
    return-void

    .line 1245
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteVibratorOn$35$com-android-server-am-BatteryStatsService(IJJJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1230
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1231
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJJJ)V

    .line 1232
    monitor-exit v2

    .line 1233
    return-void

    .line 1232
    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method synthetic lambda$noteWakeUp$42$com-android-server-am-BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1328
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1329
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;IJJ)V

    .line 1330
    monitor-exit v0

    .line 1331
    return-void

    .line 1330
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteWakupAlarm$19$com-android-server-am-BatteryStatsService(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .registers 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 971
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 972
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    .line 974
    monitor-exit v2

    .line 975
    return-void

    .line 974
    :catchall_14
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method

.method synthetic lambda$noteWifiBatchedScanStartedFromSource$82$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;IJJ)V
    .registers 15
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1955
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1956
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 1958
    monitor-exit v0

    .line 1959
    return-void

    .line 1958
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteWifiBatchedScanStoppedFromSource$83$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1970
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1971
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1973
    monitor-exit v0

    .line 1974
    return-void

    .line 1973
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiControllerActivity$93$com-android-server-am-BatteryStatsService(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 16
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "networkStatsManager"    # Landroid/app/usage/NetworkStatsManager;

    .line 2149
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 2151
    return-void
.end method

.method synthetic lambda$noteWifiMulticastDisabled$77$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1883
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1884
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(IJJ)V

    .line 1885
    monitor-exit v0

    .line 1886
    return-void

    .line 1885
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiMulticastEnabled$76$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1870
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1871
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(IJJ)V

    .line 1872
    monitor-exit v0

    .line 1873
    return-void

    .line 1872
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiOff$52$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1475
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1476
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked(JJ)V

    .line 1477
    monitor-exit v0

    .line 1478
    return-void

    .line 1477
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteWifiOn$51$com-android-server-am-BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1460
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1461
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked(JJ)V

    .line 1462
    monitor-exit v0

    .line 1463
    return-void

    .line 1462
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteWifiRadioPowerState$65$com-android-server-am-BatteryStatsService(IJIJJ)V
    .registers 22
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 1698
    move-object v1, p0

    move v11, p1

    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 1700
    :try_start_5
    iget v0, v1, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    if-ne v0, v11, :cond_b

    monitor-exit v12

    return-void

    .line 1702
    :cond_b
    iput v11, v1, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 1703
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1705
    const/4 v0, 0x3

    const/4 v2, 0x2

    if-eq v11, v0, :cond_20

    if-ne v11, v2, :cond_1c

    goto :goto_20

    .line 1707
    :cond_1c
    const-string/jumbo v0, "inactive"

    goto :goto_22

    :cond_20
    :goto_20
    const-string v0, "active"

    .line 1708
    .local v0, "type":Ljava/lang/String;
    :goto_22
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi-data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1711
    .end local v0    # "type":Ljava/lang/String;
    :cond_3b
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJIJJ)V

    .line 1713
    monitor-exit v12

    .line 1714
    return-void

    .line 1713
    :catchall_4a
    move-exception v0

    monitor-exit v12
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method synthetic lambda$noteWifiRssiChanged$71$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "newRssi"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1805
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1806
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(IJJ)V

    .line 1807
    monitor-exit v0

    .line 1808
    return-void

    .line 1807
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiRunning$66$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1727
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1728
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;JJ)V

    .line 1729
    monitor-exit v0

    .line 1730
    return-void

    .line 1729
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiRunningChanged$67$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 15
    .param p1, "localOldWs"    # Landroid/os/WorkSource;
    .param p2, "localNewWs"    # Landroid/os/WorkSource;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1745
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1746
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 1748
    monitor-exit v0

    .line 1749
    return-void

    .line 1748
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$noteWifiScanStarted$74$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1844
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1845
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 1846
    monitor-exit v0

    .line 1847
    return-void

    .line 1846
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiScanStartedFromSource$80$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1927
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1928
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1929
    monitor-exit v0

    .line 1930
    return-void

    .line 1929
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiScanStopped$75$com-android-server-am-BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1857
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1858
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 1859
    monitor-exit v0

    .line 1860
    return-void

    .line 1859
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiScanStoppedFromSource$81$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1941
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1942
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1943
    monitor-exit v0

    .line 1944
    return-void

    .line 1943
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiState$69$com-android-server-am-BatteryStatsService(ILjava/lang/String;J)V
    .registers 7
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J

    .line 1778
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1779
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;J)V

    .line 1780
    monitor-exit v0

    .line 1781
    return-void

    .line 1780
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$noteWifiStopped$68$com-android-server-am-BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1764
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1765
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;JJ)V

    .line 1766
    monitor-exit v0

    .line 1767
    return-void

    .line 1766
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method synthetic lambda$noteWifiSupplicantStateChanged$70$com-android-server-am-BatteryStatsService(IZJJ)V
    .registers 15
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1791
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1792
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZJJ)V

    .line 1794
    monitor-exit v0

    .line 1795
    return-void

    .line 1794
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$onCleanupUser$4$com-android-server-am-BatteryStatsService(IJ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "elapsedRealtime"    # J

    .line 606
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 607
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->onCleanupUserLocked(IJ)V

    .line 608
    monitor-exit v0

    .line 609
    return-void

    .line 608
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$onLowPowerModeChanged$1$com-android-server-am-BatteryStatsService(Landroid/os/PowerSaveState;JJ)V
    .registers 13
    .param p1, "result"    # Landroid/os/PowerSaveState;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 556
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(ZJJ)V

    .line 559
    monitor-exit v0

    .line 560
    return-void

    .line 559
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$onUserRemoved$5$com-android-server-am-BatteryStatsService(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 616
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 617
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 618
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$removeIsolatedUid$7$com-android-server-am-BatteryStatsService(II)V
    .registers 5
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 638
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 639
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 640
    monitor-exit v0

    .line 641
    return-void

    .line 640
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$removeUid$3$com-android-server-am-BatteryStatsService(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J

    .line 595
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 596
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(IJ)V

    .line 597
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$reportExcessiveCpu$103$com-android-server-am-BatteryStatsService(ILjava/lang/String;JJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uptimeSince"    # J
    .param p5, "cputimeUsed"    # J

    .line 2966
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2967
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    .line 2968
    monitor-exit v0

    .line 2969
    return-void

    .line 2968
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$scheduleWriteToDisk$2$com-android-server-am-BatteryStatsService()V
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleWrite()Ljava/util/concurrent/Future;

    .line 582
    return-void
.end method

.method synthetic lambda$setBatteryState$96$com-android-server-am-BatteryStatsService(IIIIIIIIJJJJ)V
    .registers 37
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "elapsedRealtime"    # J
    .param p13, "uptime"    # J
    .param p15, "currentTime"    # J

    .line 2234
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2235
    :try_start_5
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJJJJ)V

    .line 2238
    monitor-exit v2

    .line 2239
    return-void

    .line 2238
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0
.end method

.method synthetic lambda$setBatteryState$97$com-android-server-am-BatteryStatsService(IIIIIIIIJJJJ)V
    .registers 51
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "elapsedRealtime"    # J
    .param p13, "uptime"    # J
    .param p15, "currentTime"    # J

    .line 2216
    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 2217
    :try_start_5
    invoke-static/range {p1 .. p2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v0

    .line 2218
    .local v0, "onBattery":Z
    iget-object v2, v15, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-ne v2, v0, :cond_32

    .line 2221
    iget-object v2, v15, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v16, v2

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p1

    move/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, p6

    move/from16 v23, p7

    move/from16 v24, p8

    move-wide/from16 v25, p9

    move-wide/from16 v27, p11

    move-wide/from16 v29, p13

    move-wide/from16 v31, p15

    invoke-virtual/range {v16 .. v32}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJJJJ)V

    .line 2224
    monitor-exit v1

    return-void

    .line 2226
    .end local v0    # "onBattery":Z
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_66

    .line 2232
    iget-object v0, v15, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v1, "battery-state"

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 2233
    iget-object v0, v15, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-object/from16 v33, v13

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    invoke-direct/range {v1 .. v18}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 2240
    return-void

    .line 2226
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

.method synthetic lambda$setBatteryState$98$com-android-server-am-BatteryStatsService(IIIIIIIIJJJJ)V
    .registers 39
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "elapsedRealtime"    # J
    .param p13, "uptime"    # J
    .param p15, "currentTime"    # J

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    .line 2215
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    move-object/from16 v19, v1

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    move-object v0, v1

    move-object/from16 v21, v1

    move-object/from16 v1, v18

    move-object/from16 v20, v19

    invoke-direct/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 2241
    return-void
.end method

.method synthetic lambda$updateBatteryStatsOnActivityUsage$101$com-android-server-am-BatteryStatsService(ZIJJLjava/lang/String;)V
    .registers 19
    .param p1, "resumed"    # Z
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J
    .param p7, "packageName"    # Ljava/lang/String;

    .line 2934
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2935
    if-eqz p1, :cond_14

    .line 2938
    :try_start_6
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteActivityResumedLocked(Landroid/content/Context;IJJLjava/lang/String;)V

    goto :goto_1d

    .line 2940
    :cond_14
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteActivityPausedLocked(IJJ)V

    .line 2942
    :goto_1d
    monitor-exit v2

    .line 2943
    return-void

    .line 2942
    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method synthetic lambda$updateForegroundTimeIfOnBattery$99$com-android-server-am-BatteryStatsService(ILjava/lang/String;JJJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J
    .param p7, "cpuTimeDiff"    # J

    .line 2901
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2902
    return-void

    .line 2904
    :cond_8
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2905
    :try_start_b
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2906
    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_21

    .line 2907
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_1d

    .line 2908
    move-wide/from16 v3, p7

    :try_start_19
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    goto :goto_1f

    .line 2907
    :cond_1d
    move-wide/from16 v3, p7

    .line 2910
    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :goto_1f
    monitor-exit v2

    .line 2911
    return-void

    .line 2910
    :catchall_21
    move-exception v0

    move-wide/from16 v3, p7

    :goto_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_26

    throw v0

    :catchall_26
    move-exception v0

    goto :goto_24
.end method

.method public monitor()V
    .registers 3

    .line 471
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_c

    .line 473
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 474
    :try_start_7
    monitor-exit v1

    .line 475
    return-void

    .line 474
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_9

    throw v0

    .line 472
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 994
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 995
    if-eqz p2, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v4, v0

    .line 996
    .local v4, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 997
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 998
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 999
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1004
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 980
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 981
    if-eqz p2, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v4, v0

    .line 982
    .local v4, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 984
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 985
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 991
    return-void

    .line 990
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteBleScanReset()V
    .registers 10

    .line 2106
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2107
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2108
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2109
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2110
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2115
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 2116
    return-void

    .line 2115
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .registers 14
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I

    .line 2120
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2121
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 2122
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2123
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2124
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2125
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2131
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 2132
    return-void

    .line 2131
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .registers 14
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 2074
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2075
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 2076
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2077
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2078
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2079
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2085
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 2086
    return-void

    .line 2085
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .registers 14
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2091
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 2092
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2093
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2094
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2095
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2101
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 2102
    return-void

    .line 2101
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 12
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 2157
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2158
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2a

    .line 2163
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2164
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2165
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2166
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2172
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 2173
    return-void

    .line 2172
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v1

    .line 2159
    :cond_2a
    :goto_2a
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid bluetooth data given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    return-void
.end method

.method public noteBluetoothOff(IILjava/lang/String;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2063
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 2064
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 2065
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    .line 2064
    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2067
    :cond_16
    const/16 v4, 0x43

    const/4 v6, 0x0

    const/4 v7, 0x2

    move v5, p1

    move v8, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IILjava/lang/String;)V

    .line 2070
    return-void
.end method

.method public noteBluetoothOn(IILjava/lang/String;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2050
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 2051
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 2052
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    .line 2051
    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2054
    :cond_16
    const/16 v4, 0x43

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v5, p1

    move v8, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IILjava/lang/String;)V

    .line 2057
    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 32
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .line 1057
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1058
    const/4 v0, 0x0

    if-eqz v12, :cond_13

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, v12}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v1

    goto :goto_14

    :cond_13
    move-object v3, v0

    .line 1059
    .local v3, "localWs":Landroid/os/WorkSource;
    :goto_14
    if-eqz v11, :cond_1b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v11}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1b
    move-object v8, v0

    .line 1060
    .local v8, "localNewWs":Landroid/os/WorkSource;
    iget-object v10, v13, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1061
    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1062
    .local v14, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1063
    .local v16, "uptime":J
    iget-object v0, v13, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_4f

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v18, v9

    move/from16 v9, p7

    move-object/from16 v19, v10

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    :try_start_44
    invoke-direct/range {v1 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1070
    nop

    .end local v14    # "elapsedRealtime":J
    .end local v16    # "uptime":J
    monitor-exit v19

    .line 1071
    return-void

    .line 1070
    :catchall_4f
    move-exception v0

    move-object/from16 v19, v10

    :goto_52
    monitor-exit v19
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_54

    throw v0

    :catchall_54
    move-exception v0

    goto :goto_52
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .line 1348
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1349
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1351
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1352
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1357
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1358
    return-void

    .line 1357
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method noteCurrentTimeChanged()V
    .registers 12

    .line 2916
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2917
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2918
    .local v3, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2919
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2920
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/am/BatteryStatsService;JJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2925
    nop

    .end local v3    # "currentTime":J
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 2926
    return-void

    .line 2925
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .registers 16
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2007
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2008
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2009
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2010
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2016
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 2017
    return-void

    .line 2016
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 16
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 873
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 874
    if-nez p2, :cond_1f

    .line 876
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteEvent called with null name. code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void

    .line 880
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 882
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 883
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 888
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 889
    return-void

    .line 888
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public noteFlashlightOff(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1598
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1599
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1600
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1601
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1602
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1607
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_25

    .line 1608
    const/16 v0, 0x1a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1610
    return-void

    .line 1607
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteFlashlightOn(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1583
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1584
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1585
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1586
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1587
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1592
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_25

    .line 1593
    const/16 v0, 0x1a

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1595
    return-void

    .line 1592
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1813
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1814
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1815
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1816
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1817
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1822
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1823
    return-void

    .line 1822
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1892
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1893
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1895
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1896
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1902
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1903
    return-void

    .line 1902
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1827
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1828
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1829
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1830
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1835
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1836
    return-void

    .line 1835
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1906
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1907
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1908
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1909
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1910
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1911
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1917
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1918
    return-void

    .line 1917
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 14
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1253
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_e

    :cond_d
    move-object v4, v0

    .line 1254
    .local v4, "localOldWs":Landroid/os/WorkSource;
    :goto_e
    if-eqz p2, :cond_15

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_15
    move-object v5, v0

    .line 1255
    .local v5, "localNewWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1257
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1258
    .local v8, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1263
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1264
    return-void

    .line 1263
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public noteGpsSignalQuality(I)V
    .registers 12
    .param p1, "signalLevel"    # I

    .line 1267
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1269
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1270
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1275
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1276
    return-void

    .line 1275
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public noteInteractive(Z)V
    .registers 7
    .param p1, "interactive"    # Z

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1337
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1339
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/am/BatteryStatsService;ZJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1344
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 1345
    return-void

    .line 1344
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public noteJobFinish(Ljava/lang/String;II)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I

    .line 937
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 938
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 940
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 941
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 946
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 923
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 924
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 926
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 927
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 932
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method noteJobsDeferred(IIJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J

    .line 951
    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 952
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 953
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 954
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v12

    .line 961
    return-void

    .line 960
    :catchall_20
    move-exception v0

    monitor-exit v12
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1126
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1127
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1128
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1129
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1136
    return-void

    .line 1135
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1142
    if-eqz p3, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v5, v0

    .line 1143
    .local v5, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1145
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1146
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1152
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1153
    return-void

    .line 1152
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1093
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1095
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1096
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1103
    return-void

    .line 1102
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1109
    if-eqz p3, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v5, v0

    .line 1110
    .local v5, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1111
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1112
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1113
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1119
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1120
    return-void

    .line 1119
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteMobileRadioPowerState(IJI)V
    .registers 19
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I

    .line 1362
    move-object v11, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1363
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1364
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1365
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1366
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1381
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v12
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_2c

    .line 1382
    const/16 v0, 0xc

    const/4 v1, 0x0

    move v2, p1

    move/from16 v3, p4

    invoke-static {v0, v3, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1384
    return-void

    .line 1381
    :catchall_2c
    move-exception v0

    move v2, p1

    move/from16 v3, p4

    :goto_30
    :try_start_30
    monitor-exit v12
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_32

    throw v0

    :catchall_32
    move-exception v0

    goto :goto_30
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .registers 13
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2179
    if-nez p1, :cond_1f

    .line 2180
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid modem data given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    return-void

    .line 2184
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2185
    :try_start_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2186
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2187
    .local v6, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/usage/NetworkStatsManager;

    .line 2189
    .local v8, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2193
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v8    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    monitor-exit v0

    .line 2194
    return-void

    .line 2193
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "transportTypes"    # [I

    .line 1980
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 1981
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1982
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1985
    monitor-exit v0

    .line 1986
    return-void

    .line 1985
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteNetworkStatsEnabled()V
    .registers 4

    .line 1990
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1994
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1996
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2001
    monitor-exit v0

    .line 2002
    return-void

    .line 2001
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2021
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2022
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2023
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2024
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2030
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 2031
    return-void

    .line 2030
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2034
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2035
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2036
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2037
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2038
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2043
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 2044
    return-void

    .line 2043
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public notePhoneDataConnectionState(IZII)V
    .registers 19
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "serviceType"    # I
    .param p4, "nrFrequency"    # I

    .line 1427
    move-object v11, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1428
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1429
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1430
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1431
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/BatteryStatsService;IZIIJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1437
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v12

    .line 1438
    return-void

    .line 1437
    :catchall_25
    move-exception v0

    monitor-exit v12
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public notePhoneOff()V
    .registers 10

    .line 1400
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1402
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1403
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1404
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1409
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1410
    return-void

    .line 1409
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public notePhoneOn()V
    .registers 10

    .line 1387
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1388
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1389
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1390
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1391
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1396
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1397
    return-void

    .line 1396
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 12
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1414
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1415
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1416
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1417
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1422
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1423
    return-void

    .line 1422
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public notePhoneState(I)V
    .registers 12
    .param p1, "state"    # I

    .line 1441
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1442
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1443
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1444
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1445
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1451
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1452
    return-void

    .line 1451
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 674
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 676
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 677
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 683
    return-void

    .line 682
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 660
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 662
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 663
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 668
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 669
    const/16 v0, 0x1c

    const/4 v1, 0x2

    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 671
    return-void

    .line 668
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method noteProcessDied(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 2953
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2954
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2959
    monitor-exit v0

    .line 2960
    return-void

    .line 2959
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 686
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 688
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 689
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 695
    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 697
    return-void

    .line 694
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 646
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 648
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 649
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 654
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 655
    const/16 v0, 0x1c

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 657
    return-void

    .line 654
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public noteResetAudio()V
    .registers 10

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1554
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1555
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1556
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1557
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1562
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    .line 1563
    const/16 v0, 0x17

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1565
    return-void

    .line 1562
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteResetCamera()V
    .registers 10

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1661
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1662
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1663
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1664
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1669
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    .line 1670
    const/16 v0, 0x19

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1672
    return-void

    .line 1669
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteResetFlashlight()V
    .registers 10

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1676
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1677
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1678
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1679
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1684
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    .line 1685
    const/16 v0, 0x1a

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1687
    return-void

    .line 1684
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteResetVideo()V
    .registers 10

    .line 1568
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1569
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1570
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1571
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1572
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1577
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    .line 1578
    const/16 v0, 0x18

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1580
    return-void

    .line 1577
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteScreenBrightness(I)V
    .registers 12
    .param p1, "brightness"    # I

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1297
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1299
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1300
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1305
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_23

    .line 1306
    const/16 v0, 0x9

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1307
    return-void

    .line 1305
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public noteScreenState(I)V
    .registers 14
    .param p1, "state"    # I

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1280
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1282
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1283
    .local v6, "uptime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1284
    .local v8, "currentTime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1291
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v8    # "currentTime":J
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_27

    .line 1292
    const/16 v0, 0x1d

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1293
    return-void

    .line 1291
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 3002
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3003
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3004
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3005
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3012
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 3013
    return-void

    .line 3012
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 2974
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2975
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2976
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2977
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2984
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 2985
    return-void

    .line 2984
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 3016
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3017
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3018
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3019
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3026
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 3027
    return-void

    .line 3026
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 2988
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2989
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2990
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2991
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2998
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 2999
    return-void

    .line 2998
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteStartAudio(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1485
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1486
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1488
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1489
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_25

    .line 1497
    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1499
    return-void

    .line 1496
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteStartCamera(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1617
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1618
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1619
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1620
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1631
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_25

    .line 1633
    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1635
    return-void

    .line 1631
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteStartSensor(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1158
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1159
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1160
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1165
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    .line 1166
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 1168
    return-void

    .line 1165
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteStartSensorWithPkg(IILjava/lang/String;)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1190
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1191
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1193
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1194
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJLjava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1199
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_26

    .line 1200
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 1202
    return-void

    .line 1199
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public noteStartVideo(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1519
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1520
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1521
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1522
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1523
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1530
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_25

    .line 1531
    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1533
    return-void

    .line 1530
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 23
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 1009
    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1010
    iget-object v14, v13, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1011
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1012
    .local v9, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1013
    .local v11, "uptime":J
    iget-object v0, v13, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1019
    nop

    .end local v9    # "elapsedRealtime":J
    .end local v11    # "uptime":J
    monitor-exit v14

    .line 1020
    return-void

    .line 1019
    :catchall_2c
    move-exception v0

    monitor-exit v14
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 23
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 1039
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1040
    if-eqz v14, :cond_f

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v14}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v3, v0

    .line 1041
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v15, v13, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1042
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1043
    .local v9, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1044
    .local v11, "uptime":J
    iget-object v0, v13, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object v13, v8

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1050
    nop

    .end local v9    # "elapsedRealtime":J
    .end local v11    # "uptime":J
    monitor-exit v15

    .line 1051
    return-void

    .line 1050
    :catchall_37
    move-exception v0

    monitor-exit v15
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public noteStopAudio(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1503
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1505
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1506
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1513
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_25

    .line 1514
    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1516
    return-void

    .line 1513
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteStopCamera(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1638
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1640
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1641
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1642
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1643
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1654
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_25

    .line 1655
    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1657
    return-void

    .line 1654
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteStopSensor(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1172
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1174
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1175
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1180
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    .line 1181
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 1183
    return-void

    .line 1180
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteStopSensorWithPkg(IILjava/lang/String;)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1210
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1212
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1213
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJLjava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1218
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_26

    .line 1219
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 1221
    return-void

    .line 1218
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public noteStopVideo(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1538
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1539
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1540
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1547
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_25

    .line 1548
    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1550
    return-void

    .line 1547
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 1024
    move-object v12, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1025
    iget-object v13, v12, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1026
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1027
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1028
    .local v10, "uptime":J
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1034
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v13

    .line 1035
    return-void

    .line 1034
    :catchall_28
    move-exception v0

    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 22
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 1075
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1076
    if-eqz v13, :cond_f

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v13}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v3, v0

    .line 1077
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v14, v12, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1078
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1079
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1080
    .local v10, "uptime":J
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1086
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v14

    .line 1087
    return-void

    .line 1086
    :catchall_34
    move-exception v0

    monitor-exit v14
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 907
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 908
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 910
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 911
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    .line 917
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 919
    return-void

    .line 916
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 892
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 893
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 895
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 896
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 901
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    .line 902
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 904
    return-void

    .line 901
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method noteUidProcessState(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 701
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 703
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 704
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 710
    return-void

    .line 709
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public noteUserActivity(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .line 1310
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1311
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1312
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1313
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1314
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1319
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1320
    return-void

    .line 1319
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteVibratorOff(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1241
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1242
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1247
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1248
    return-void

    .line 1247
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteVibratorOn(IJ)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1226
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1227
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1228
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1229
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1234
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1235
    return-void

    .line 1234
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteVideoFps(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "fps"    # I

    .line 3090
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3091
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;

    invoke-direct {v2, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3094
    monitor-exit v0

    .line 3095
    return-void

    .line 3094
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .registers 14
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1324
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1325
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1326
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1327
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1332
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1333
    return-void

    .line 1332
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "tag"    # Ljava/lang/String;

    .line 965
    move-object v11, p0

    move-object/from16 v12, p3

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 966
    if-eqz v12, :cond_e

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v12}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move-object v5, v0

    .line 967
    .local v5, "localWs":Landroid/os/WorkSource;
    iget-object v13, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 968
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 969
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 970
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 976
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v13

    .line 977
    return-void

    .line 976
    :catchall_30
    move-exception v0

    monitor-exit v13
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 14
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .line 1949
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1950
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1951
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1952
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1953
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1954
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1960
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1961
    return-void

    .line 1960
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1964
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1965
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1966
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1967
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1968
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1969
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1975
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1976
    return-void

    .line 1975
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 13
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 2136
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2138
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_35

    .line 2143
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2144
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2145
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2146
    .local v6, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/usage/NetworkStatsManager;

    .line 2148
    .local v8, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2152
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v8    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    monitor-exit v0

    .line 2153
    return-void

    .line 2152
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_32

    throw v1

    .line 2139
    :cond_35
    :goto_35
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid wifi data given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1878
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1879
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1880
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1881
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1882
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1887
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1888
    return-void

    .line 1887
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1865
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1866
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1867
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1868
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1869
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1874
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1875
    return-void

    .line 1874
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiOff()V
    .registers 10

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1471
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1473
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1474
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1479
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_23

    .line 1480
    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1482
    return-void

    .line 1479
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public noteWifiOn()V
    .registers 10

    .line 1455
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1456
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1458
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1459
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1464
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_23

    .line 1465
    const/16 v0, 0x71

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1467
    return-void

    .line 1464
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public noteWifiRadioPowerState(IJI)V
    .registers 19
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I

    .line 1691
    move-object v11, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1692
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1693
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1694
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1695
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1715
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v12
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_2c

    .line 1716
    const/16 v0, 0xd

    const/4 v1, 0x0

    move v2, p1

    move/from16 v3, p4

    invoke-static {v0, v3, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1718
    return-void

    .line 1715
    :catchall_2c
    move-exception v0

    move v2, p1

    move/from16 v3, p4

    :goto_30
    :try_start_30
    monitor-exit v12
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_32

    throw v0

    :catchall_32
    move-exception v0

    goto :goto_30
.end method

.method public noteWifiRssiChanged(I)V
    .registers 12
    .param p1, "newRssi"    # I

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1801
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1802
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1803
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1804
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1809
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1810
    return-void

    .line 1809
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1722
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1723
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1724
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1725
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1726
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1731
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2d

    .line 1733
    const/16 v0, 0x72

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1735
    return-void

    .line 1731
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 14
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 1738
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1739
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_e

    :cond_d
    move-object v4, v0

    .line 1740
    .local v4, "localOldWs":Landroid/os/WorkSource;
    :goto_e
    if-eqz p2, :cond_15

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_15
    move-object v5, v0

    .line 1741
    .local v5, "localNewWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1742
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1743
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1744
    .local v8, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1750
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_3a

    .line 1751
    const/4 v0, 0x1

    const/16 v1, 0x72

    invoke-static {v1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1753
    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1755
    return-void

    .line 1750
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public noteWifiScanStarted(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1839
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1840
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1841
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1842
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1843
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1848
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1849
    return-void

    .line 1848
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1921
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1922
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1923
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1924
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1925
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1926
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1931
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1932
    return-void

    .line 1931
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteWifiScanStopped(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1853
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1854
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1855
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1856
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1861
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1862
    return-void

    .line 1861
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1936
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1937
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1938
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1939
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1940
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1945
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1946
    return-void

    .line 1945
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .registers 12
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .line 1774
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1775
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1776
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1777
    .local v5, "elapsedRealtime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1782
    nop

    .end local v5    # "elapsedRealtime":J
    monitor-exit v0

    .line 1783
    return-void

    .line 1782
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1758
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1759
    if-eqz p1, :cond_c

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v0

    goto :goto_d

    :cond_c
    move-object v3, p1

    .line 1760
    .local v3, "localWs":Landroid/os/WorkSource;
    :goto_d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1761
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1762
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1763
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1768
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2d

    .line 1769
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1771
    return-void

    .line 1768
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .registers 14
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1787
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1788
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1789
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1790
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;IZJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1796
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1797
    return-void

    .line 1796
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method onCleanupUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 603
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 605
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 610
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 12
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 552
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 554
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 555
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 562
    return-void

    .line 561
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onSystemReady()V
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->onSystemReady()V

    .line 420
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryUsageStatsStore;->onSystemReady()V

    .line 422
    return-void
.end method

.method onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 614
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 620
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public publish()V
    .registers 4

    .line 379
    const-class v0, Landroid/os/BatteryStatsInternal;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$LocalService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "batterystats"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 381
    return-void
.end method

.method removeIsolatedUid(II)V
    .registers 6
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 636
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method removeUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 592
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 594
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method reportExcessiveCpu(ILjava/lang/String;JJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uptimeSince"    # J
    .param p5, "cputimeUsed"    # J

    .line 2964
    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2965
    :try_start_4
    iget-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2970
    monitor-exit v10

    .line 2971
    return-void

    .line 2970
    :catchall_17
    move-exception v0

    monitor-exit v10
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public resetBattery(Z)V
    .registers 3
    .param p1, "forceUpdate"    # Z

    .line 3058
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/BatteryManagerInternal;->resetBattery(Z)V

    .line 3059
    return-void
.end method

.method public scheduleWriteToDisk()V
    .registers 4

    .line 578
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    monitor-exit v0

    .line 584
    return-void

    .line 583
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setBatteryLevel(IZ)V
    .registers 4
    .param p1, "level"    # I
    .param p2, "forceUpdate"    # Z

    .line 3042
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryManagerInternal;->setBatteryLevel(IZ)V

    .line 3043
    return-void
.end method

.method public setBatteryState(IIIIIIIIJ)V
    .registers 32
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J

    .line 2204
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2206
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2207
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 2208
    .local v13, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 2209
    .local v15, "uptime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 2212
    .local v17, "currentTime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_3c

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v19, v10

    move/from16 v10, p8

    move-object/from16 v20, v12

    move-wide/from16 v11, p9

    :try_start_31
    invoke-direct/range {v1 .. v18}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2242
    nop

    .end local v13    # "elapsedRealtime":J
    .end local v15    # "uptime":J
    .end local v17    # "currentTime":J
    monitor-exit v20

    .line 2243
    return-void

    .line 2242
    :catchall_3c
    move-exception v0

    move-object/from16 v20, v12

    :goto_3f
    monitor-exit v20
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_41

    throw v0

    :catchall_41
    move-exception v0

    goto :goto_3f
.end method

.method public setChargerAcOnline(ZZ)V
    .registers 4
    .param p1, "online"    # Z
    .param p2, "forceUpdate"    # Z

    .line 3034
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryManagerInternal;->setChargerAcOnline(ZZ)V

    .line 3035
    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .registers 8
    .param p1, "delayMillis"    # I

    .line 2882
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2886
    .local v0, "ident":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2887
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "battery_charging_state_update_delay"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 2891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2887
    return v3

    .line 2891
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2892
    throw v2
.end method

.method public shutdown()V
    .registers 3

    .line 521
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 526
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 528
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 529
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 530
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_21

    .line 533
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->shutdown()V

    .line 534
    return-void

    .line 530
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public suspendBatteryInput()V
    .registers 2

    .line 3066
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->suspendBatteryInput()V

    .line 3067
    return-void
.end method

.method public systemServicesReady()V
    .registers 7

    .line 384
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->systemServicesReady()V

    .line 386
    const-string/jumbo v0, "network_management"

    .line 387
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 386
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 388
    .local v0, "nms":Landroid/os/INetworkManagementService;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 390
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_21
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 391
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_2c

    .line 394
    goto :goto_45

    .line 392
    :catch_2c
    move-exception v2

    .line 393
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not register INetworkManagement event observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_45
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 397
    :try_start_48
    const-class v3, Landroid/power/PowerStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/power/PowerStatsInternal;

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 398
    if-eqz v3, :cond_58

    .line 399
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->populatePowerEntityMaps()V

    goto :goto_5f

    .line 401
    :cond_58
    const-string v3, "BatteryStatsService"

    const-string v4, "Could not register PowerStatsInternal"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_81

    .line 404
    const-class v2, Landroid/os/BatteryManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryManagerInternal;

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 406
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 408
    new-instance v2, Lcom/android/server/am/DataConnectionStats;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/DataConnectionStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 409
    .local v2, "dataConnectionStats":Lcom/android/server/am/DataConnectionStats;
    invoke-virtual {v2}, Lcom/android/server/am/DataConnectionStats;->startMonitoring()V

    .line 411
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->registerStatsCallbacks()V

    .line 412
    return-void

    .line 403
    .end local v2    # "dataConnectionStats":Lcom/android/server/am/DataConnectionStats;
    :catchall_81
    move-exception v3

    :try_start_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v3
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .registers 8
    .param p1, "requestUid"    # I

    .line 2787
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 2788
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2794
    .local v0, "ident":J
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2795
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2796
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x3f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2798
    :cond_22
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_33
    .catchall {:try_start_12 .. :try_end_25} :catchall_31

    .line 2799
    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2e

    .line 2805
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2799
    return-object v3

    .line 2800
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    :try_start_30
    throw v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_31} :catch_33
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 2805
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :catchall_31
    move-exception v2

    goto :goto_54

    .line 2801
    :catch_33
    move-exception v2

    .line 2802
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_34
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2803
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    throw v2
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_31

    .line 2805
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :goto_54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2806
    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .registers 9
    .param p1, "requestUids"    # [I

    .line 2814
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2815
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2819
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 2822
    .local v2, "i":I
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2823
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2824
    const-string v3, "get-health-stats-for-uids"

    const/16 v4, 0x3f

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2826
    :cond_23
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_41
    .catchall {:try_start_13 .. :try_end_26} :catchall_3f

    .line 2827
    :try_start_26
    array-length v4, p1

    .line 2828
    .local v4, "N":I
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 2829
    .local v5, "results":[Landroid/os/health/HealthStatsParceler;
    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v4, :cond_37

    .line 2830
    aget v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2829
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 2832
    :cond_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3c

    .line 2839
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2832
    return-object v5

    .line 2833
    .end local v4    # "N":I
    .end local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    .end local v0    # "ident":J
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    :try_start_3e
    throw v4
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_41
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    .line 2839
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :catchall_3f
    move-exception v3

    goto :goto_44

    .line 2834
    :catch_41
    move-exception v3

    .line 2837
    .local v3, "ex":Ljava/lang/Exception;
    nop

    .end local v0    # "ident":J
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    :try_start_43
    throw v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_3f

    .line 2839
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :goto_44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2840
    throw v3
.end method

.method public unplugBattery(Z)V
    .registers 3
    .param p1, "forceUpdate"    # Z

    .line 3050
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/BatteryManagerInternal;->unplugBattery(Z)V

    .line 3051
    return-void
.end method

.method updateBatteryStatsOnActivityUsage(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "resumed"    # Z

    .line 2930
    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2931
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2932
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2933
    .local v7, "uptime":J
    iget-object v0, v10, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;

    move-object v1, v12

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v4, p3

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/am/BatteryStatsService;ZIJJLjava/lang/String;)V

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2944
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v11
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_2e

    .line 2945
    const/16 v0, 0x2a

    .line 2947
    if-eqz p5, :cond_25

    .line 2948
    const/4 v1, 0x1

    goto :goto_26

    .line 2949
    :cond_25
    const/4 v1, 0x0

    .line 2945
    :goto_26
    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    invoke-static {v0, v4, p1, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 2950
    return-void

    .line 2944
    :catchall_2e
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    :goto_33
    :try_start_33
    monitor-exit v11
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_35

    throw v0

    :catchall_35
    move-exception v0

    goto :goto_33
.end method

.method updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cpuTimeDiff"    # J

    .line 2897
    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2898
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2899
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2900
    .local v7, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;

    move-object v1, v13

    move-object v2, p0

    move/from16 v3, p2

    move-object v4, p1

    move-wide/from16 v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2912
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v12

    .line 2913
    return-void

    .line 2912
    :catchall_20
    move-exception v0

    monitor-exit v12
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method
