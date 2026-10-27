.class public abstract Landroid/media/MediaRoute2ProviderService;
.super Landroid/app/Service;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;,
        Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;,
        Landroid/media/MediaRoute2ProviderService$MediaStreams;,
        Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;,
        Landroid/media/MediaRoute2ProviderService$Reason;
    }
.end annotation


# static fields
.field public static final blacklist CATEGORY_SELF_SCAN_ONLY:Ljava/lang/String; = "android.media.MediaRoute2ProviderService.SELF_SCAN_ONLY"

.field public static final blacklist CATEGORY_SYSTEM_MEDIA:Ljava/lang/String; = "android.media.MediaRoute2ProviderService.SYSTEM_MEDIA"

.field private static final blacklist DEBUG:Z

.field private static final blacklist MAX_REQUEST_IDS_SIZE:I = 0x1f4

.field public static final blacklist REASON_FAILED_TO_REROUTE_SYSTEM_MEDIA:I = 0x6

.field public static final whitelist REASON_INVALID_COMMAND:I = 0x4

.field public static final whitelist REASON_NETWORK_ERROR:I = 0x2

.field public static final whitelist REASON_REJECTED:I = 0x1

.field public static final whitelist REASON_ROUTE_NOT_AVAILABLE:I = 0x3

.field public static final blacklist REASON_UNIMPLEMENTED:I = 0x5

.field public static final whitelist REASON_UNKNOWN_ERROR:I = 0x0

.field public static final whitelist REQUEST_ID_NONE:J = 0x0L

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRoute2ProviderService"

.field private static final blacklist TAG:Ljava/lang/String; = "MR2ProviderService"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mOngoingMediaStreams:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2ProviderService$MediaStreams;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingSystemSessionReleases:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field private blacklist mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

.field private final blacklist mRequestIds:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequestIdsLock:Ljava/lang/Object;

.field private final blacklist mSessionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionLock:Ljava/lang/Object;

.field private final blacklist mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

.field private final blacklist mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$BAMtUqlalAVo5pA_dMO3XaM2BP8(Landroid/media/MediaRoute2ProviderService;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;->updateSessions()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CMAn32GoLb2qbfqbLFNlWpeRyfM(Landroid/media/MediaRoute2ProviderService;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;->publishState()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Ln8ToHZmL2yO9OXM6r_nlFcC1LU(Landroid/media/MediaRoute2ProviderService;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService;->lambda$notifySystemRoutingSessionCreated$0(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OyGclWI2aX_biYfQaeJNr1g4BXc(Landroid/media/MediaRoute2ProviderService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->lambda$onCreateSystemRoutingSession$1(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOngoingMediaStreams(Landroid/media/MediaRoute2ProviderService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingSystemSessionReleases(Landroid/media/MediaRoute2ProviderService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mPendingSystemSessionReleases:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderInfo(Landroid/media/MediaRoute2ProviderService;)Landroid/media/MediaRoute2ProviderInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestIdsLock(Landroid/media/MediaRoute2ProviderService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionLock(Landroid/media/MediaRoute2ProviderService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemRoutingSessionCreationRequests(Landroid/media/MediaRoute2ProviderService;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeReleaseMediaStreams(Landroid/media/MediaRoute2ProviderService;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService;->maybeReleaseMediaStreams(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 86
    const-string v0, "MR2ProviderService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 230
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    .line 216
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;

    .line 220
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 223
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    .line 226
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mPendingSystemSessionReleases:Landroid/util/ArrayMap;

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    .line 232
    return-void
.end method

.method private blacklist addRequestId(J)V
    .registers 6

    .line 897
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_12

    .line 899
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 901
    :cond_12
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 902
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private synthetic blacklist lambda$notifySystemRoutingSessionCreated$0(Landroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 440
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/MediaRoute2ProviderService;->onReleaseSession(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCreateSystemRoutingSession$1(J)V
    .registers 4

    .line 687
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaRoute2ProviderService;->notifyRequestFailed(JI)V

    return-void
.end method

.method static synthetic blacklist lambda$updateSessions$2(Ljava/util/List;Landroid/media/MediaRoute2ProviderService$MediaStreams;)V
    .registers 2

    .line 880
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist maybeReleaseMediaStreams(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 5

    .line 568
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 569
    return-object v1

    .line 571
    :cond_8
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_b
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRoute2ProviderService$MediaStreams;

    .line 573
    if-eqz p1, :cond_26

    .line 574
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmAudioPolicy(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v1

    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmAudioRecord(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/media/MediaRoute2ProviderService;->releaseAudioStream(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/AudioRecord;)V

    .line 576
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 578
    :cond_26
    monitor-exit v0

    .line 579
    return-object v1

    .line 578
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private blacklist populateAudioStream(Landroid/media/AudioFormat;ILandroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)V
    .registers 7

    .line 459
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 460
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 461
    new-instance v2, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    .line 463
    invoke-virtual {v2, v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 464
    const/4 v1, -0x1

    if-eq p2, v1, :cond_22

    .line 465
    const/4 v1, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 467
    :cond_22
    new-instance p2, Landroid/media/audiopolicy/AudioMix$Builder;

    .line 468
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 469
    invoke-virtual {p2, p1}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object p1

    .line 470
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object p1

    .line 471
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object p1

    .line 472
    new-instance p2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    invoke-direct {p2, p0}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    .line 473
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object p2

    .line 474
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/MediaRoute2ProviderService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 475
    const-string v1, "MR2ProviderService"

    if-nez v0, :cond_61

    .line 476
    const-string p1, "Couldn\'t fetch the audio manager."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 479
    :cond_61
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v2

    .line 480
    if-eqz v2, :cond_6d

    .line 481
    const-string p1, "Failed to register the audio policy."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void

    .line 484
    :cond_6d
    invoke-virtual {p2, p1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object p1

    .line 485
    if-nez p1, :cond_7c

    .line 486
    const-string p1, "Audio record creation failed."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 488
    return-void

    .line 490
    :cond_7c
    invoke-virtual {p3, p2, p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->setAudioStream(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/AudioRecord;)Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;

    .line 491
    return-void
.end method

.method private blacklist publishState()V
    .registers 4

    .line 842
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 843
    return-void

    .line 846
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_10

    .line 847
    return-void

    .line 850
    :cond_10
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    if-nez v0, :cond_15

    .line 851
    return-void

    .line 855
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-interface {v0, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 858
    goto :goto_25

    .line 856
    :catch_1d
    move-exception v0

    .line 857
    const-string v1, "MR2ProviderService"

    const-string v2, "Failed to publish provider state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    :goto_25
    return-void
.end method

.method private blacklist releaseAudioStream(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/AudioRecord;)V
    .registers 4

    .line 585
    if-nez p1, :cond_3

    .line 586
    return-void

    .line 588
    :cond_3
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/MediaRoute2ProviderService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 589
    if-nez v0, :cond_e

    .line 590
    return-void

    .line 592
    :cond_e
    invoke-virtual {p2}, Landroid/media/AudioRecord;->release()V

    .line 593
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 594
    return-void
.end method

.method private blacklist removeRequestId(J)Z
    .registers 5

    .line 917
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 919
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private blacklist updateSessions()V
    .registers 5

    .line 868
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 869
    return-void

    .line 872
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_10

    .line 873
    return-void

    .line 877
    :cond_10
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_13
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 879
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 880
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 882
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_42

    .line 885
    :try_start_33
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionsUpdated(Ljava/util/List;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    .line 888
    goto :goto_41

    .line 886
    :catch_39
    move-exception v0

    .line 887
    const-string v0, "MR2ProviderService"

    const-string v1, "Failed to notify session info changed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_41
    return-void

    .line 882
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method


# virtual methods
.method public final whitelist getAllSessionInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 297
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final whitelist getSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 4

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 285
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_9
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    monitor-exit v0

    return-object p1

    .line 287
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p1

    .line 283
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sessionId must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist notifyRequestFailed(JI)V
    .registers 6

    .line 609
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_5

    .line 610
    return-void

    .line 613
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->removeRequestId(J)Z

    move-result v0

    const-string v1, "MR2ProviderService"

    if-nez v0, :cond_24

    .line 614
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyRequestFailed: The requestId doesn\'t exist. requestId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void

    .line 620
    :cond_24
    :try_start_24
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifyRequestFailed(JI)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 623
    goto :goto_30

    .line 621
    :catch_2a
    move-exception p1

    .line 622
    const-string p1, "Failed to notify that the request has failed."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :goto_30
    return-void
.end method

.method public final whitelist notifyRoutes(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 794
    const-string v0, "routes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 797
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 798
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 799
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->supportsRemoteRouting()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 800
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->supportsSystemMediaRouting()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 801
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_54

    .line 802
    :cond_3b
    nop

    .line 807
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 803
    const-string v0, "Route with id=\'%s\' name=\'%s\' supports both system media and remote type routing, but doesn\'t contain a deduplication id, which it needs. You can add the route id as a deduplication id."

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 808
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_54
    :goto_54
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->isSystemRouteType()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add a system route type from a non-system route provider. Overriding type to TYPE_UNKNOWN. Route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2ProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v2, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 818
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    .line 819
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v1

    .line 816
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 821
    :cond_84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :goto_87
    goto :goto_12

    .line 825
    :cond_88
    new-instance p1, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoutes(Ljava/util/Collection;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 826
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->schedulePublishState()V

    .line 827
    return-void
.end method

.method public final whitelist notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .registers 7

    .line 316
    const-string v0, "sessionInfo must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 319
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionCreated: Creating a session. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2b
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_50

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->removeRequestId(J)Z

    move-result v0

    if-nez v0, :cond_50

    .line 324
    const-string p3, "MR2ProviderService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySessionCreated: The requestId doesn\'t exist. requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 328
    :cond_50
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_57
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 331
    const-string p1, "MR2ProviderService"

    const-string p2, "notifySessionCreated: Ignoring duplicate session id."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    monitor-exit v1

    return-void

    .line 334
    :cond_68
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_77

    .line 337
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_57 .. :try_end_76} :catchall_87

    return-void

    .line 340
    :cond_77
    :try_start_77
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7c} :catch_7d
    .catchall {:try_start_77 .. :try_end_7c} :catchall_87

    .line 343
    goto :goto_85

    .line 341
    :catch_7d
    move-exception p1

    .line 342
    :try_start_7e
    const-string p1, "MR2ProviderService"

    const-string p2, "Failed to notify session created."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_85
    monitor-exit v1

    .line 345
    return-void

    .line 344
    :catchall_87
    move-exception p1

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_87

    throw p1
.end method

.method public final whitelist notifySessionReleased(Ljava/lang/String;)V
    .registers 5

    .line 526
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 529
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 530
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionReleased: Releasing session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_22
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_25
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 536
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 537
    if-nez v1, :cond_39

    .line 538
    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService;->maybeReleaseMediaStreams(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 540
    :cond_39
    if-nez v1, :cond_44

    .line 541
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mPendingSystemSessionReleases:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 544
    :cond_44
    if-nez v1, :cond_4f

    .line 545
    const-string p1, "MR2ProviderService"

    const-string v1, "notifySessionReleased: Ignoring unknown session info."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    monitor-exit v0

    return-void

    .line 549
    :cond_4f
    iget-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez p1, :cond_55

    .line 550
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_25 .. :try_end_54} :catchall_65

    return-void

    .line 553
    :cond_55
    :try_start_55
    iget-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {p1, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5b
    .catchall {:try_start_55 .. :try_end_5a} :catchall_65

    .line 556
    goto :goto_63

    .line 554
    :catch_5b
    move-exception p1

    .line 555
    :try_start_5c
    const-string v1, "MR2ProviderService"

    const-string v2, "Failed to notify session released."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    :goto_63
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_65
    move-exception p1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_65

    throw p1

    .line 527
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sessionId must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 498
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 500
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 501
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionUpdated: Updating session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_21
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 505
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_28
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderService$MediaStreams;

    .line 507
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v3

    if-eqz v3, :cond_3c

    if-eqz v2, :cond_3c

    .line 508
    invoke-static {v2, p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fputmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams;Landroid/media/RoutingSessionInfo;)V

    goto :goto_49

    .line 509
    :cond_3c
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 510
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_57

    .line 516
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->scheduleUpdateSessions()V

    .line 517
    return-void

    .line 512
    :cond_4e
    :try_start_4e
    const-string p1, "MR2ProviderService"

    const-string v0, "notifySessionUpdated: Ignoring unknown session info."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    monitor-exit v1

    return-void

    .line 515
    :catchall_57
    move-exception p1

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_57

    throw p1
.end method

.method public final blacklist notifySystemRoutingSessionCreated(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;)Landroid/media/MediaRoute2ProviderService$MediaStreams;
    .registers 11

    .line 378
    const-string v0, "sessionInfo must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 379
    const-string v0, "formats must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 381
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySystemRoutingSessionCreated: Creating a session. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_30
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_33
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 392
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSystemRoutingSessionCreationRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 393
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_11f

    .line 395
    if-eqz v1, :cond_fc

    .line 403
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-eqz v0, :cond_f4

    .line 407
    nop

    .line 408
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 409
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 410
    iget-object v5, v0, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 411
    if-eqz v5, :cond_6f

    .line 415
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getSupportedRoutingTypes()I

    move-result v4

    or-int/2addr v3, v4

    .line 416
    goto :goto_53

    .line 412
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid selected route with id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_88
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_ec

    .line 425
    invoke-static {p4}, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;->-$$Nest$fgetmAudioFormat(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;)Landroid/media/AudioFormat;

    move-result-object p4

    .line 426
    new-instance v0, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;

    invoke-direct {v0, p3}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 427
    if-eqz p4, :cond_9e

    .line 428
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p4, v1, v0}, Landroid/media/MediaRoute2ProviderService;->populateAudioStream(Landroid/media/AudioFormat;ILandroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)V

    .line 432
    :cond_9e
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->build()Landroid/media/MediaRoute2ProviderService$MediaStreams;

    move-result-object p4

    .line 433
    invoke-static {p4}, Landroid/media/MediaRoute2ProviderService$MediaStreams;->-$$Nest$fgetmAudioRecord(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/AudioRecord;

    move-result-object v0

    .line 434
    if-nez v0, :cond_d0

    .line 435
    const-string p4, "MR2ProviderService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio record is not populated. Returning an empty stream and scheduling the session release for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p4, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaRoute2ProviderService;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    const/4 p3, 0x6

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaRoute2ProviderService;->notifyRequestFailed(JI)V

    .line 442
    const/4 p1, 0x0

    return-object p1

    .line 445
    :cond_d0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_d3
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_d8} :catch_db
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_d9

    .line 450
    goto :goto_df

    .line 453
    :catchall_d9
    move-exception p1

    goto :goto_ea

    .line 448
    :catch_db
    move-exception p1

    .line 449
    :try_start_dc
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 451
    :goto_df
    iget-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mOngoingMediaStreams:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    monitor-exit v0

    return-object p4

    .line 453
    :goto_ea
    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_dc .. :try_end_eb} :catchall_d9

    throw p1

    .line 420
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Selected routes for system media don\'t support any system media routing types."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_f4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected: remote callback is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :cond_fc
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected system routing session created (request id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "):"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 393
    :catchall_11f
    move-exception p1

    :try_start_120
    monitor-exit v0
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    throw p1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 243
    const-string v0, "android.media.MediaRoute2ProviderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 244
    iget-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    if-nez p1, :cond_17

    .line 245
    new-instance p1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    invoke-direct {p1, p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    .line 247
    :cond_17
    iget-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    return-object p1

    .line 249
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract whitelist onCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public blacklist onCreateSystemRoutingSession(JLjava/lang/String;Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;)V
    .registers 5

    .line 687
    iget-object p3, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance p4, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p1, p2}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaRoute2ProviderService;J)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    return-void
.end method

.method public abstract whitelist onDeselectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public whitelist onDiscoveryPreferenceChanged(Landroid/media/RouteDiscoveryPreference;)V
    .registers 2

    .line 760
    return-void
.end method

.method public whitelist onDiscoveryPreferenceChanged(Landroid/media/RouteDiscoveryPreference;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RouteDiscoveryPreference;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/RouteDiscoveryPreference;",
            ">;)V"
        }
    .end annotation

    .line 782
    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2ProviderService;->onDiscoveryPreferenceChanged(Landroid/media/RouteDiscoveryPreference;)V

    .line 783
    return-void
.end method

.method public abstract whitelist onReleaseSession(JLjava/lang/String;)V
.end method

.method public abstract whitelist onSelectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist onSetRouteVolume(JLjava/lang/String;I)V
.end method

.method public abstract whitelist onSetSessionVolume(JLjava/lang/String;I)V
.end method

.method public abstract whitelist onTransferToRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method blacklist schedulePublishState()V
    .registers 4

    .line 836
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 837
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    :cond_14
    return-void
.end method

.method blacklist scheduleUpdateSessions()V
    .registers 4

    .line 862
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 863
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 865
    :cond_14
    return-void
.end method

.method blacklist setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V
    .registers 2

    .line 830
    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    .line 831
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->schedulePublishState()V

    .line 832
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->scheduleUpdateSessions()V

    .line 833
    return-void
.end method
