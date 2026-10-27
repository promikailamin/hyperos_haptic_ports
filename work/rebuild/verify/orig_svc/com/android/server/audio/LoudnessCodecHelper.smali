.class public Lcom/android/server/audio/LoudnessCodecHelper;
.super Ljava/lang/Object;
.source "LoudnessCodecHelper.java"


# static fields
.field static final SPL_RANGE_LARGE:I = 0x3

.field static final SPL_RANGE_MEDIUM:I = 0x2

.field static final SPL_RANGE_SMALL:I = 0x1

.field static final SPL_RANGE_UNKNOWN:I

.field public static final sLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mCachedProperties:Ljava/util/HashMap;

.field public final mDispatcherLock:Ljava/lang/Object;

.field public final mLock:Ljava/lang/Object;

.field public final mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

.field public final mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

.field public final mPiidToPidCache:Landroid/util/SparseIntArray;

.field public final mStartedConfigInfo:Ljava/util/HashMap;

.field public final mStartedConfigPiids:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$Ajcn9BvyI0W7WD6temMDzo_JpWE(Lcom/android/server/audio/LoudnessCodecHelper;Landroid/media/AudioPlaybackConfiguration;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/LoudnessCodecHelper;->updateCodecParametersForConfiguration(Landroid/media/AudioPlaybackConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMGLUxl1YafNqp8Zhcj3n2OqJPo(IILandroid/media/AudioPlaybackConfiguration;)Z
    .registers 4

    .line 446
    invoke-virtual {p2}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    move-result v0

    if-ne v0, p0, :cond_e

    .line 447
    invoke-virtual {p2}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result p0

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ZGgIBkkFUgAmKH1I5GVSQ8sDWFU(Lcom/android/server/audio/LoudnessCodecHelper;Ljava/util/HashSet;ILandroid/media/AudioPlaybackConfiguration;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/LoudnessCodecHelper;->lambda$startLoudnessCodecUpdates$1(Ljava/util/HashSet;ILandroid/media/AudioPlaybackConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tG2UQ_Gx-U1MRWCSRLcaixSVMPo(ILjava/util/Map$Entry;)Z
    .registers 2

    .line 604
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    invoke-static {p1}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->-$$Nest$fgetmPid(Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;)I

    move-result p1

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$tsoYN4BPDMPKxwL5Bx4EhDIiuok(IILandroid/media/AudioPlaybackConfiguration;)Z
    .registers 4

    .line 378
    invoke-virtual {p2}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    move-result v0

    if-ne v0, p0, :cond_e

    .line 379
    invoke-virtual {p2}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result p0

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$utGdds8PGTb38gBf05StyRB2eTQ(ILjava/util/Map$Entry;)Z
    .registers 2

    .line 605
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    invoke-static {p1}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->-$$Nest$fgetmPid(Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;)I

    move-result p1

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monClientPidDied(Lcom/android/server/audio/LoudnessCodecHelper;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/LoudnessCodecHelper;->onClientPidDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsLogger()Lcom/android/server/utils/EventLogger;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smsplRangeToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/LoudnessCodecHelper;->splRangeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 132
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x1e

    const-string v2, "Loudness updates"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mDispatcherLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;-><init>(Lcom/android/server/audio/LoudnessCodecHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    .line 154
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    .line 158
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 340
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/audio/AudioService;

    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    return-void
.end method

.method public static splRangeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    .line 731
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 725
    :cond_d
    const-string/jumbo p0, "large"

    return-object p0

    .line 727
    :cond_11
    const-string/jumbo p0, "medium"

    return-object p0

    .line 729
    :cond_15
    const-string/jumbo p0, "small"

    return-object p0
.end method

.method public static stringToSplRange(Ljava/lang/String;)I
    .registers 6

    .line 737
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_3a

    goto :goto_32

    :sswitch_f
    const-string/jumbo v0, "small"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_32

    :cond_19
    move v4, v1

    goto :goto_32

    :sswitch_1b
    const-string/jumbo v0, "large"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_32

    :cond_25
    move v4, v2

    goto :goto_32

    :sswitch_27
    const-string/jumbo v0, "medium"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_32

    :cond_31
    move v4, v3

    :goto_32
    packed-switch v4, :pswitch_data_48

    return v3

    :pswitch_36
    return v2

    :pswitch_37
    const/4 p0, 0x3

    return p0

    :pswitch_39
    return v1

    :sswitch_data_3a
    .sparse-switch
        -0x4041708b -> :sswitch_27
        0x61fbb3b -> :sswitch_1b
        0x6879507 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_39
        :pswitch_37
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method public addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    .registers 10

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 427
    new-instance v1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;-><init>(IILcom/android/server/audio/LoudnessCodecHelper-IA;)V

    .line 430
    iget-object v2, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 431
    :try_start_d
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_bb

    .line 437
    :cond_1f
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 438
    iget-object v4, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 439
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_b9

    .line 442
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    .line 443
    :try_start_37
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 444
    iget-object v4, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 445
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1, v0}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 447
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 454
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 455
    invoke-virtual {p0, p3}, Lcom/android/server/audio/LoudnessCodecHelper;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object p3

    .line 454
    invoke-virtual {v2, p2, p3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_9f

    :catchall_65
    move-exception p0

    goto :goto_ae

    .line 457
    :cond_67
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v4

    if-eqz v4, :cond_9f

    .line 459
    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_76
    .catchall {:try_start_37 .. :try_end_76} :catchall_65

    .line 461
    :try_start_76
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 465
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v0

    .line 466
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/server/audio/LoudnessCodecHelper;->getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object p3

    .line 463
    invoke-virtual {v2, p2, p3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 467
    monitor-exit v5

    goto :goto_9f

    :catchall_9c
    move-exception p0

    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_76 .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw p0

    .line 470
    :cond_9f
    :goto_9f
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result p2

    if-nez p2, :cond_a8

    .line 471
    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/LoudnessCodecHelper;->dispatchNewLoudnessParameters(ILandroid/os/PersistableBundle;)V
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_65

    :cond_a8
    if-eqz v1, :cond_ad

    .line 473
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_ad
    return-void

    :goto_ae
    if-eqz v1, :cond_b8

    .line 442
    :try_start_b0
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_b8

    :catchall_b4
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b8
    :goto_b8
    throw p0

    :catchall_b9
    move-exception p0

    goto :goto_d3

    .line 433
    :cond_bb
    :goto_bb
    :try_start_bb
    const-string p0, "AS.LoudnessCodecHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot add new loudness info for stopped config "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    monitor-exit v2

    return-void

    .line 440
    :goto_d3
    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_bb .. :try_end_d4} :catchall_b9

    throw p0
.end method

.method public final dispatchNewLoudnessParameters(ILandroid/os/PersistableBundle;)V
    .registers 10

    .line 649
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mDispatcherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3c

    .line 653
    :try_start_c
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/ILoudnessCodecUpdatesDispatcher;

    .line 654
    invoke-interface {v3, p1, p2}, Landroid/media/ILoudnessCodecUpdatesDispatcher;->dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_1a
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_39

    :catchall_18
    move-exception p0

    goto :goto_43

    :catch_1a
    move-exception v3

    .line 656
    :try_start_1b
    const-string v4, "AS.LoudnessCodecHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching for sessionId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bundle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 661
    :cond_3c
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 662
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1b .. :try_end_44} :catchall_18

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 11

    .line 570
    const-string v0, "\nRegistered clients:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 573
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 574
    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 575
    iget-object v6, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    .line 576
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 575
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_28

    .line 578
    const-string v7, "Player piid %d pid %d active codec types %s\n"

    .line 580
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v8, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v8, ", "

    .line 581
    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    .line 580
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 579
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    :catchall_76
    move-exception p0

    goto :goto_85

    .line 585
    :cond_78
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 586
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_8 .. :try_end_7c} :catchall_76

    .line 588
    sget-object p0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 589
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    .line 586
    :goto_85
    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_76

    throw p0
.end method

.method public final getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;
    .registers 5

    .line 669
    new-instance v0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;

    invoke-direct {v0}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;-><init>()V

    .line 671
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/LoudnessCodecHelper;->getDeviceSplRange(ILjava/lang/String;)I

    move-result p1

    .line 670
    invoke-virtual {v0, p1}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->setDeviceSplRange(I)Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;

    move-result-object p1

    iget-boolean p2, p3, Landroid/media/LoudnessCodecInfo;->isDownmixing:Z

    .line 672
    invoke-virtual {p1, p2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->setIsDownmixing(Z)Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;

    move-result-object p1

    iget p2, p3, Landroid/media/LoudnessCodecInfo;->metadataType:I

    .line 673
    invoke-virtual {p1, p2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->setMetadataType(I)Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;

    move-result-object p1

    .line 674
    invoke-virtual {p1}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties$Builder;->build()Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    move-result-object p1

    .line 676
    iget-object p2, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 677
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    return-object p0

    .line 679
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->createLoudnessParameters()Landroid/os/PersistableBundle;

    move-result-object p2

    .line 680
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final getDeviceSplRange(ILjava/lang/String;)I
    .registers 7

    .line 687
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 688
    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result p2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_63

    if-eqz v0, :cond_f

    .line 689
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3a

    .line 691
    const-string p1, "audio.loudness.builtin-speaker-spl-range-size"

    const-string/jumbo p2, "unknown"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    .line 694
    invoke-static {p1}, Lcom/android/server/audio/LoudnessCodecHelper;->stringToSplRange(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 698
    :cond_27
    iget-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result p1

    if-nez p1, :cond_39

    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_39

    :cond_38
    return v0

    :cond_39
    :goto_39
    return v1

    :cond_3a
    const/high16 p0, 0x4000000

    const/4 v2, 0x3

    if-eq p1, p0, :cond_62

    const/16 p0, 0x8

    if-eq p1, p0, :cond_62

    const/4 p0, 0x4

    if-eq p1, p0, :cond_62

    .line 706
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    if-ne p2, v2, :cond_4f

    goto :goto_62

    .line 709
    :cond_4f
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result p1

    if-eqz p1, :cond_60

    if-ne p2, p0, :cond_58

    return v1

    :cond_58
    const/4 p0, 0x5

    if-ne p2, p0, :cond_5c

    return v0

    :cond_5c
    const/4 p0, 0x6

    if-ne p2, p0, :cond_60

    return v0

    :cond_60
    const/4 p0, 0x0

    return p0

    :cond_62
    :goto_62
    return v2

    :catchall_63
    move-exception p0

    if-eqz v0, :cond_6e

    .line 687
    :try_start_66
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw p0
.end method

.method public getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;
    .registers 5

    .line 500
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 502
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 503
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    .line 501
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 506
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 507
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_29
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    .line 509
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/audio/LoudnessCodecHelper;->getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_37
    move-exception p0

    .line 510
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_37

    throw p0

    .line 514
    :cond_3a
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    return-object p0
.end method

.method public final synthetic lambda$startLoudnessCodecUpdates$1(Ljava/util/HashSet;ILandroid/media/AudioPlaybackConfiguration;)V
    .registers 6

    .line 380
    invoke-virtual {p3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p3

    .line 381
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p3, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 384
    sget-object p0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {p3, p2}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->getStartPiid(II)Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 385
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final onClientPidDied(I)V
    .registers 6

    .line 593
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 594
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 595
    iget-object v2, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 596
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_22

    .line 600
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_43

    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 604
    :cond_25
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 605
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 606
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_20

    throw p0
.end method

.method public registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mDispatcherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 346
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    .registers 6

    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 482
    new-instance v1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;-><init>(IILcom/android/server/audio/LoudnessCodecHelper-IA;)V

    .line 483
    iget-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 484
    :try_start_d
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_47

    .line 489
    :cond_1e
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 490
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    .line 491
    const-string p0, "AS.LoudnessCodecHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find to remove codecInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_5f

    .line 493
    :cond_45
    :goto_45
    monitor-exit p1

    return-void

    .line 486
    :cond_47
    :goto_47
    const-string p0, "AS.LoudnessCodecHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot remove loudness info for stopped config "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    monitor-exit p1

    return-void

    .line 493
    :goto_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_d .. :try_end_60} :catchall_43

    throw p0
.end method

.method public startLoudnessCodecUpdates(I)V
    .registers 7

    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 363
    new-instance v1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;-><init>(IILcom/android/server/audio/LoudnessCodecHelper-IA;)V

    .line 365
    iget-object v2, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 366
    :try_start_d
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 367
    const-string p0, "AS.LoudnessCodecHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already started loudness updates for config: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    monitor-exit v2

    return-void

    :catchall_2d
    move-exception p0

    goto :goto_75

    .line 371
    :cond_2f
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 373
    iget-object v4, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_2d

    .line 376
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    .line 377
    :try_start_48
    iget-object v2, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v0}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/LoudnessCodecHelper;Ljava/util/HashSet;I)V

    .line 379
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_63
    .catchall {:try_start_48 .. :try_end_63} :catchall_69

    if-eqz v1, :cond_68

    .line 387
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_68
    return-void

    :catchall_69
    move-exception p0

    if-eqz v1, :cond_74

    .line 376
    :try_start_6c
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    throw p0

    .line 374
    :goto_75
    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_2d

    throw p0
.end method

.method public stopLoudnessCodecUpdates(I)V
    .registers 10

    .line 391
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 397
    new-instance v1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;-><init>(IILcom/android/server/audio/LoudnessCodecHelper-IA;)V

    .line 398
    iget-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 399
    :try_start_d
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 400
    const-string p0, "AS.LoudnessCodecHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loudness updates are already stopped config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    monitor-exit p1

    return-void

    :catchall_2d
    move-exception p0

    goto :goto_98

    .line 404
    :cond_2f
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_51

    .line 406
    const-string p0, "AS.LoudnessCodecHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loudness updates are already stopped config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    monitor-exit p1

    return-void

    .line 409
    :cond_51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 410
    sget-object v3, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->getStopPiid(II)Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 411
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 412
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_55

    .line 414
    :cond_8c
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    monitor-exit p1

    return-void

    :goto_98
    monitor-exit p1
    :try_end_99
    .catchall {:try_start_d .. :try_end_99} :catchall_2d

    throw p0
.end method

.method public unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mDispatcherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 353
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateCodecParameters(Ljava/util/List;)V
    .registers 10

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 526
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v3

    .line 527
    iget-object v4, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 528
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v5

    if-nez v5, :cond_33

    if-eqz v4, :cond_c

    .line 534
    iget-object v2, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_c

    :catchall_31
    move-exception p0

    goto :goto_7e

    .line 541
    :cond_33
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v6

    if-ne v4, v6, :cond_3a

    goto :goto_c

    .line 549
    :cond_3a
    iget-object v4, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    new-instance v4, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    move-result v5

    .line 551
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;-><init>(IILcom/android/server/audio/LoudnessCodecHelper-IA;)V

    .line 552
    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 557
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v2, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 562
    :cond_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_8 .. :try_end_75} :catchall_31

    .line 564
    new-instance p1, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/audio/LoudnessCodecHelper;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 562
    :goto_7e
    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_31

    throw p0
.end method

.method public final updateCodecParametersForConfiguration(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 10

    .line 619
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 621
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_8
    new-instance v2, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    move-result v3

    .line 623
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;-><init>(IILcom/android/server/audio/LoudnessCodecHelper-IA;)V

    .line 624
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 625
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v3

    if-eqz v2, :cond_52

    if-eqz v3, :cond_52

    .line 628
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/LoudnessCodecInfo;

    if-eqz v4, :cond_2a

    .line 630
    invoke-virtual {v4}, Landroid/media/LoudnessCodecInfo;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 631
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v6

    .line 632
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 631
    invoke-virtual {p0, v6, v7, v4}, Lcom/android/server/audio/LoudnessCodecHelper;->getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 630
    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_2a

    :catchall_50
    move-exception p0

    goto :goto_61

    .line 636
    :cond_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_50

    .line 638
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    .line 639
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/LoudnessCodecHelper;->dispatchNewLoudnessParameters(ILandroid/os/PersistableBundle;)V

    :cond_60
    return-void

    .line 636
    :goto_61
    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_50

    throw p0
.end method
