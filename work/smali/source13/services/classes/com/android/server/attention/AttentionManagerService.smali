.class public Lcom/android/server/attention/AttentionManagerService;
.super Lcom/android/server/SystemService;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$BinderService;,
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;,
        Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;,
        Lcom/android/server/attention/AttentionManagerService$AttentionHandler;,
        Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;,
        Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheck;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;,
        Lcom/android/server/attention/AttentionManagerService$LocalService;
    }
.end annotation


# static fields
.field protected static final ATTENTION_CACHE_BUFFER_SIZE:I = 0x5

.field private static final CONNECTION_TTL_MILLIS:J = 0xea60L

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SERVICE_ENABLED:Z = true

.field static final DEFAULT_STALE_AFTER_MILLIS:J = 0x3e8L

.field static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field static final KEY_STALE_AFTER_MILLIS:Ljava/lang/String; = "stale_after_millis"

.field private static final LOG_TAG:Ljava/lang/String; = "AttentionManagerService"

.field private static final SERVICE_BINDING_WAIT_MILLIS:J = 0x3e8L

.field private static sTestAttentionServicePackage:Ljava/lang/String;


# instance fields
.field private mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

.field private mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

.field private mBinding:Z

.field mComponentName:Landroid/content/ComponentName;

.field private final mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

.field private final mContext:Landroid/content/Context;

.field mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

.field mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

.field mIsServiceEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field protected mService:Landroid/service/attention/IAttentionService;

.field private mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

.field mStaleAfterMillis:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceBindingLatch(Lcom/android/server/attention/AttentionManagerService;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBinding(Lcom/android/server/attention/AttentionManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceBindingLatch(Lcom/android/server/attention/AttentionManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$mappendResultToAttentionCacheBuffer(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->appendResultToAttentionCacheBuffer(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/attention/AttentionManagerService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePendingCallbackLocked(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->handlePendingCallbackLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsTestAttentionServicePackage(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$smresolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 1

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 157
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/attention/AttentionManagerService;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V

    .line 159
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 160
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "handler"    # Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection-IA;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    .line 166
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 168
    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 169
    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 170
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 171
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 172
    return-void
.end method

.method private appendResultToAttentionCacheBuffer(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V
    .registers 4
    .param p1, "cache"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 728
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-nez v1, :cond_e

    .line 730
    new-instance v1, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-direct {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    .line 732
    :cond_e
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->add(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V

    .line 733
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private awaitServiceBinding(J)V
    .registers 6
    .param p1, "millis"    # J

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    .line 445
    goto :goto_10

    .line 443
    :catch_8
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AttentionManagerService"

    const-string v2, "Interrupted while waiting to bind Attention Service."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_10
    return-void
.end method

.method private bindLocked()V
    .registers 3

    .line 897
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_9

    goto :goto_17

    .line 901
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    .line 905
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    new-instance v1, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void

    .line 898
    :cond_17
    :goto_17
    return-void
.end method

.method private cancelAfterTimeoutLocked(J)V
    .registers 5
    .param p1, "timeout"    # J

    .line 432
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 434
    return-void
.end method

.method private cancelAndUnbindLocked()V
    .registers 4

    .line 870
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 871
    :try_start_3
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-nez v1, :cond_d

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-nez v2, :cond_d

    .line 872
    monitor-exit v0

    return-void

    .line 874
    :cond_d
    if-eqz v1, :cond_12

    .line 875
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 877
    :cond_12
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v1, :cond_19

    .line 878
    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    .line 880
    :cond_19
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_1f

    .line 881
    monitor-exit v0

    return-void

    .line 883
    :cond_1f
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->post(Ljava/lang/Runnable;)Z

    .line 889
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 890
    monitor-exit v0

    .line 891
    return-void

    .line 890
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 491
    const-string v0, "Attention Manager Service (dumpsys attention) state:\n"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isServiceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStaleAfterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttentionServicePackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 495
    const-string v0, "Resolved component:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_9a

    .line 497
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 502
    :cond_9a
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 504
    const-string v1, "current attention check:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v1, :cond_c1

    .line 506
    invoke-virtual {v1, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 508
    :cond_c1
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-eqz v1, :cond_c8

    .line 509
    invoke-static {v1, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->-$$Nest$mdump(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 511
    :cond_c8
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v1, :cond_cf

    .line 512
    invoke-virtual {v1, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 514
    :cond_cf
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_d1
    move-exception v1

    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_9d .. :try_end_d3} :catchall_d1

    throw v1
.end method

.method private getIsServiceEnabled()Z
    .registers 4

    .line 208
    const-string v0, "attention_manager_service"

    const-string/jumbo v1, "service_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handlePendingCallbackLocked()V
    .registers 5

    .line 774
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const-string v1, "Cannot call into the AttentionService"

    const-string v2, "AttentionManagerService"

    if-eqz v0, :cond_31

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 775
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_27

    .line 777
    :try_start_12
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v3}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIAttentionCallback(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fputmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_26

    .line 779
    :catch_22
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    goto :goto_31

    .line 783
    :cond_27
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 786
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v0, :cond_56

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 787
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_4e

    .line 789
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-static {v3}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmIProximityUpdateCallback(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/service/attention/IProximityUpdateCallback;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/service/attention/IAttentionService;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_48} :catch_49

    goto :goto_4d

    .line 791
    :catch_49
    move-exception v0

    .line 792
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4d
    goto :goto_56

    .line 795
    :cond_4e
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 799
    :cond_56
    :goto_56
    return-void
.end method

.method public static isServiceConfigured(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "key":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_50

    :cond_18
    goto :goto_2e

    :sswitch_19
    const-string/jumbo v3, "service_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x0

    goto :goto_2e

    :sswitch_24
    const-string/jumbo v3, "stale_after_millis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    :goto_2e
    packed-switch v2, :pswitch_data_5a

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring change on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttentionManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_4

    .line 235
    .restart local v1    # "key":Ljava/lang/String;
    :pswitch_4a
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->readValuesFromDeviceConfig()V

    .line 236
    return-void

    .line 241
    .end local v1    # "key":Ljava/lang/String;
    :cond_4e
    return-void

    nop

    :sswitch_data_50
    .sparse-switch
        -0x14227711 -> :sswitch_24
        0x721f73b7 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method private readValuesFromDeviceConfig()V
    .registers 4

    .line 244
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->getIsServiceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getStaleAfterMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmIsServiceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmStaleAfterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method private static resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .line 453
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "serviceConfigPackage":Ljava/lang/String;
    const/high16 v1, 0x100000

    .line 457
    .local v1, "flags":I
    sget-object v2, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 458
    sget-object v2, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    .line 459
    .local v2, "resolvedPackage":Ljava/lang/String;
    const/16 v1, 0x80

    goto :goto_1b

    .line 460
    .end local v2    # "resolvedPackage":Ljava/lang/String;
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 461
    move-object v2, v0

    .line 466
    .restart local v2    # "resolvedPackage":Ljava/lang/String;
    :goto_1b
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.attention.AttentionService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 469
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 470
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const-string v10, "AttentionManagerService"

    if-eqz v6, :cond_64

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_3a

    goto :goto_64

    .line 477
    :cond_3a
    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 478
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 479
    .local v11, "permission":Ljava/lang/String;
    const-string v12, "android.permission.BIND_ATTENTION_SERVICE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 480
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    return-object v3

    .line 482
    :cond_4b
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 484
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    aput-object v14, v13, v8

    aput-object v12, v13, v7

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object v7, v13, v9

    .line 482
    const-string v7, "Service %s should require %s permission. Found %s permission"

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-object v3

    .line 471
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v11    # "permission":Ljava/lang/String;
    :cond_64
    :goto_64
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v8

    aput-object v0, v9, v7

    const-string v5, "Service %s not found in package %s"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-object v3

    .line 463
    .end local v2    # "resolvedPackage":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_74
    return-object v3
.end method


# virtual methods
.method cancel()V
    .registers 4

    .line 838
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 842
    return-void

    .line 846
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attention check failed, callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    .line 858
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_38

    .line 859
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIAttentionCallback(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/service/attention/IAttentionService;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_38} :catch_39

    .line 865
    :cond_38
    goto :goto_44

    .line 862
    :catch_39
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to cancel attention check"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    .line 866
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_44
    return-void
.end method

.method cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .registers 5
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 336
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 338
    const-string v1, "AttentionManagerService"

    const-string v2, "Cannot cancel a non-current request"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v0

    return-void

    .line 341
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 342
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .registers 14
    .param p1, "timeout"    # J
    .param p3, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 263
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 266
    const-string v0, "AttentionManagerService"

    const-string v2, "Trying to call checkAttention() on an unsupported device."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v1

    .line 270
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 271
    const-string v0, "AttentionManagerService"

    const-string v2, "Service is not available at this moment."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v1

    .line 275
    :cond_1e
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 276
    const-string v0, "AttentionManagerService"

    const-string v2, "Camera is locked by a toggle."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v1

    .line 281
    :cond_2f
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_41

    goto/16 :goto_f5

    .line 285
    :cond_41
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_44
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 290
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->bindLocked()V

    .line 291
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_f2

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 294
    .local v2, "now":J
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/attention/AttentionManagerService;->awaitServiceBinding(J)V

    .line 295
    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 297
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-nez v0, :cond_61

    const/4 v0, 0x0

    goto :goto_65

    .line 298
    :cond_61
    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->getLast()Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    move-result-object v0

    :goto_65
    nop

    .line 299
    .local v0, "cache":Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    const/4 v5, 0x1

    if-eqz v0, :cond_81

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmLastComputed(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-gez v6, :cond_81

    .line 300
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmResult(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result v1

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmTimestamp(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v6

    invoke-virtual {p3, v1, v6, v7}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 301
    monitor-exit v4

    return v5

    .line 305
    :cond_81
    iget-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v6, :cond_c4

    .line 306
    invoke-static {v6}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v6

    if-eqz v6, :cond_93

    iget-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v6}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v6

    if-nez v6, :cond_c4

    .line 309
    :cond_93
    const-string v5, "AttentionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prevent spamming with multiple requests, mIsDispatched: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIsFulfilled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v4

    return v1

    .line 316
    :cond_c4
    new-instance v6, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-direct {v6, p3, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;-><init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 318
    iget-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;
    :try_end_cd
    .catchall {:try_start_5b .. :try_end_cd} :catchall_ef

    if-eqz v6, :cond_ed

    .line 321
    :try_start_cf
    invoke-direct {p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService;->cancelAfterTimeoutLocked(J)V

    .line 322
    iget-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    iget-object v7, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fgetmIAttentionCallback(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 323
    iget-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v6, v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->-$$Nest$fputmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_e2} :catch_e3
    .catchall {:try_start_cf .. :try_end_e2} :catchall_ef

    .line 327
    goto :goto_ed

    .line 324
    :catch_e3
    move-exception v5

    .line 325
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_e4
    const-string v6, "AttentionManagerService"

    const-string v7, "Cannot call into the AttentionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    monitor-exit v4

    return v1

    .line 329
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_ed
    :goto_ed
    monitor-exit v4

    return v5

    .line 330
    .end local v0    # "cache":Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    :catchall_ef
    move-exception v0

    monitor-exit v4
    :try_end_f1
    .catchall {:try_start_e4 .. :try_end_f1} :catchall_ef

    throw v0

    .line 291
    .end local v2    # "now":J
    :catchall_f2
    move-exception v1

    :try_start_f3
    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw v1

    .line 282
    :cond_f5
    :goto_f5
    return v1
.end method

.method protected freeIfInactiveLocked()V
    .registers 5

    .line 423
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->removeMessages(I)V

    .line 426
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 428
    return-void
.end method

.method protected getStaleAfterMillis()J
    .registers 7

    .line 218
    const-string v0, "attention_manager_service"

    const-string/jumbo v1, "stale_after_millis"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 222
    .local v0, "millis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_19

    const-wide/16 v4, 0x2710

    cmp-long v4, v0, v4

    if-lez v4, :cond_18

    goto :goto_19

    .line 227
    :cond_18
    return-wide v0

    .line 223
    :cond_19
    :goto_19
    const-string v4, "AttentionManagerService"

    const-string v5, "Bad flag value supplied for: stale_after_millis"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-wide v2
.end method

.method protected isServiceAvailable()Z
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_c

    .line 202
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method synthetic lambda$bindLocked$2$com-android-server-attention-AttentionManagerService()V
    .registers 6

    .line 906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.attention.AttentionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 907
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 910
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v4, 0x4001001

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 914
    return-void
.end method

.method synthetic lambda$cancelAndUnbindLocked$1$com-android-server-attention-AttentionManagerService()V
    .registers 3

    .line 883
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method synthetic lambda$onBootPhase$0$com-android-server-attention-AttentionManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 183
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 176
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2c

    .line 177
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver-IA;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->readValuesFromDeviceConfig()V

    .line 181
    nop

    .line 182
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    .line 181
    const-string v2, "attention_manager_service"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 185
    :cond_2c
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 189
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$BinderService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$BinderService-IA;)V

    const-string v2, "attention"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/attention/AttentionManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 190
    const-class v0, Landroid/attention/AttentionManagerInternal;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/attention/AttentionManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z
    .registers 6
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 355
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 357
    const-string v0, "AttentionManagerService"

    const-string v2, "Trying to call onProximityUpdate() on an unsupported device."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v1

    .line 361
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 362
    const-string v0, "AttentionManagerService"

    const-string v2, "Service is not available at this moment."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v1

    .line 368
    :cond_1e
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 369
    const-string v0, "AttentionManagerService"

    const-string v2, "Proximity Service is unavailable during screen off at this moment."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v1

    .line 373
    :cond_2e
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 378
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->bindLocked()V

    .line 379
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_75

    .line 381
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/server/attention/AttentionManagerService;->awaitServiceBinding(J)V

    .line 382
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 388
    :try_start_40
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v0, :cond_65

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 389
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    move-result-object v0

    if-ne v0, p1, :cond_5c

    .line 390
    const-string v0, "AttentionManagerService"

    const-string v1, "Provided callback is already registered. Skipping."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 394
    :cond_5c
    const-string v0, "AttentionManagerService"

    const-string v3, "New proximity update cannot be processed because there is already an ongoing update"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    monitor-exit v2

    return v1

    .line 399
    :cond_65
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-direct {v0, p0, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;-><init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 400
    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->startUpdates()Z

    move-result v0

    monitor-exit v2

    return v0

    .line 401
    :catchall_72
    move-exception v0

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_40 .. :try_end_74} :catchall_72

    throw v0

    .line 379
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1
.end method

.method onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .registers 5
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 407
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_3
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v1, :cond_24

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    move-result-object v1

    .line 409
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_24

    .line 414
    :cond_1a
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    .line 415
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 411
    :cond_24
    :goto_24
    const-string v1, "AttentionManagerService"

    const-string v2, "Cannot stop a non-current callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    monitor-exit v0

    return-void

    .line 416
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method
