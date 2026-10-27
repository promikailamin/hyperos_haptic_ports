.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$TunerConfiguration;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnCodecFormatChangedListener;,
        Landroid/media/AudioTrack$StreamEventCbInfo;,
        Landroid/media/AudioTrack$StreamEventCallback;,
        Landroid/media/AudioTrack$StreamEventHandler;,
        Landroid/media/AudioTrack$MetricsConstants;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$DualMonoMode;,
        Landroid/media/AudioTrack$SupplementaryAudioPlacement;,
        Landroid/media/AudioTrack$EncapsulationMetadataType;,
        Landroid/media/AudioTrack$EncapsulationMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final greylist-max-o AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field private static final blacklist CHANNEL_PAIR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DUAL_MONO_MODE_LL:I = 0x2

.field public static final whitelist DUAL_MONO_MODE_LR:I = 0x1

.field public static final whitelist DUAL_MONO_MODE_OFF:I = 0x0

.field public static final whitelist DUAL_MONO_MODE_RR:I = 0x3

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_DVB_AD_DESCRIPTOR:I = 0x2

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_FRAMEWORK_TUNER:I = 0x1

.field public static final blacklist ENCAPSULATION_METADATA_TYPE_NONE:I = 0x0

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_SUPPLEMENTARY_AUDIO_PLACEMENT:I = 0x3

.field public static final whitelist ENCAPSULATION_MODE_ELEMENTARY_STREAM:I = 0x1

.field public static final whitelist ENCAPSULATION_MODE_HANDLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENCAPSULATION_MODE_NONE:I = 0x0

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x2

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x6

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x3

.field private static final greylist-max-o ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final greylist-max-o ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final greylist-max-o ERROR_WOULD_BLOCK:I = -0x7

.field private static final greylist-max-o GAIN_MAX:F = 1.0f

.field private static final greylist-max-o GAIN_MIN:F = 0.0f

.field private static final greylist-max-o HEADER_V2_SIZE_BYTES:F = 20.0f

.field private static final blacklist MAX_AUDIO_DESCRIPTION_MIX_LEVEL:F = 48.0f

.field public static final whitelist MODE_STATIC:I = 0x0

.field public static final whitelist MODE_STREAM:I = 0x1

.field private static final blacklist NATIVE_EVENT_CAN_WRITE_MORE_DATA:I = 0x9

.field private static final blacklist NATIVE_EVENT_CODEC_FORMAT_CHANGE:I = 0x64

.field private static final greylist-max-o NATIVE_EVENT_MARKER:I = 0x3

.field private static final greylist-max-o NATIVE_EVENT_NEW_IAUDIOTRACK:I = 0x6

.field private static final greylist-max-o NATIVE_EVENT_NEW_POS:I = 0x4

.field private static final greylist-max-o NATIVE_EVENT_STREAM_END:I = 0x7

.field public static final whitelist PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final whitelist PERFORMANCE_MODE_NONE:I = 0x0

.field public static final whitelist PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final whitelist PLAYSTATE_PAUSED:I = 0x2

.field private static final blacklist PLAYSTATE_PAUSED_STOPPING:I = 0x5

.field public static final whitelist PLAYSTATE_PLAYING:I = 0x3

.field public static final whitelist PLAYSTATE_STOPPED:I = 0x1

.field private static final blacklist PLAYSTATE_STOPPING:I = 0x4

.field public static final whitelist STATE_INITIALIZED:I = 0x1

.field public static final whitelist STATE_NO_STATIC_DATA:I = 0x2

.field public static final whitelist STATE_UNINITIALIZED:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_LEFT:I = 0x1

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_NORMAL:I = 0x0

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_RIGHT:I = 0x2

.field private static final greylist-max-o SUPPORTED_OUT_CHANNELS:I = 0xffffffc

.field private static final greylist-max-o TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final whitelist WRITE_BLOCKING:I = 0x0

.field public static final whitelist WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private greylist-max-o mAudioFormat:I

.field private blacklist mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private greylist-max-o mAvSyncBytesRemaining:I

.field private greylist-max-o mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private greylist-max-o mChannelConfiguration:I

.field private greylist-max-o mChannelCount:I

.field private greylist-max-o mChannelIndexMask:I

.field private greylist-max-o mChannelMask:I

.field private final blacklist mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/Utils$ListenerList<",
            "Landroid/media/AudioMetadataReadMap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mDataLoadMode:I

.field private blacklist mEnableSelfRoutingMonitor:Z

.field private greylist-max-o mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final greylist-max-o mInitializationLooper:Landroid/os/Looper;

.field private greylist-max-r mJniData:J

.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist-max-o mNativeBufferSizeInBytes:I

.field private greylist-max-o mNativeBufferSizeInFrames:I

.field protected greylist mNativeTrackInJavaObj:J

.field private blacklist mOffloadDelayFrames:I

.field private blacklist mOffloadEosPending:Z

.field private blacklist mOffloadPaddingFrames:I

.field private blacklist mOffloaded:Z

.field private greylist-max-o mOffset:I

.field private greylist-max-o mPlayState:I

.field private final greylist-max-o mPlayStateLock:Ljava/lang/Object;

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private greylist-max-o mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSampleRate:I

.field private greylist-max-o mSessionId:I

.field private greylist-max-o mState:I

.field private blacklist mStreamEventCbInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/AudioTrack$StreamEventCbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStreamEventCbLock:Ljava/lang/Object;

.field private volatile blacklist mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

.field private blacklist mStreamEventHandlerThread:Landroid/os/HandlerThread;

.field private greylist mStreamType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$EG1sDnofkWd-yTxahEDuDlLu2YA(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->lambda$addOnCodecFormatChangedListener$0(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializationLooper(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffloadEosPending(Landroid/media/AudioTrack;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayState(Landroid/media/AudioTrack;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioTrack;->mPlayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayStateLock(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamEventCbInfoList(Landroid/media/AudioTrack;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamEventCbLock(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAvSyncBytesRemaining(Landroid/media/AudioTrack;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAvSyncHeader(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffloadEosPending(Landroid/media/AudioTrack;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPlayState(Landroid/media/AudioTrack;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioTrack;->mPlayState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_start(Landroid/media/AudioTrack;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartImpl(Landroid/media/AudioTrack;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioTrack;Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smshouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 19

    .line 1948
    nop

    .line 1949
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1951
    const/16 v0, 0xc0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1953
    const/16 v0, 0x300

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1955
    const/16 v0, 0x1800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1956
    const v0, 0x14000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1958
    const/high16 v0, 0xa0000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1960
    const/high16 v0, 0x300000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1962
    const/high16 v0, 0x1400000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1964
    const/high16 v0, 0xc000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 1948
    const-string v1, "front"

    const-string v3, "back"

    const-string v5, "front of center"

    const-string v7, "side"

    const-string v9, "top front"

    const-string v11, "top back"

    const-string v13, "top side"

    const-string v15, "bottom front"

    const-string v17, "front wide"

    invoke-static/range {v1 .. v18}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>(IIIIII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 700
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 702
    return-void
.end method

.method public constructor whitelist <init>(IIIIIII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 759
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 760
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 763
    invoke-virtual {v1, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 764
    invoke-virtual {p3, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 765
    invoke-virtual {p3, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p2

    .line 766
    invoke-virtual {p2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p4

    .line 759
    move-object p2, p0

    move-object p3, v0

    invoke-direct/range {p2 .. p7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 769
    const-string p2, "AudioTrack"

    const-string p3, "AudioTrack()"

    invoke-static {p1, p2, p3}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 7

    .line 928
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 521
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 528
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 533
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 539
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 540
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 557
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 561
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 570
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 576
    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 582
    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 586
    iput v0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 601
    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 605
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 609
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 613
    iput v0, p0, Landroid/media/AudioTrack;->mOffset:I

    .line 617
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 621
    iput v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 625
    iput v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 631
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3756
    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3892
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 4013
    new-instance v1, Landroid/media/Utils$ListenerList;

    invoke-direct {v1}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    .line 4193
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 4194
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    .line 931
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 932
    iput-wide v1, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 936
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_6e

    .line 937
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 939
    :cond_6e
    iput-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 942
    cmp-long v1, p1, v1

    if-eqz v1, :cond_7b

    .line 943
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    .line 944
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_7d

    .line 946
    :cond_7b
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 948
    :goto_7d
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v7, p4

    move/from16 v8, p6

    const/4 v9, 0x1

    invoke-direct {v0, v1, v9}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 516
    const/4 v10, 0x0

    iput v10, v0, Landroid/media/AudioTrack;->mState:I

    .line 521
    iput v9, v0, Landroid/media/AudioTrack;->mPlayState:I

    .line 528
    iput-boolean v10, v0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 533
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 539
    iput v10, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 540
    iput v10, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 557
    iput v9, v0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 561
    const/4 v3, 0x4

    iput v3, v0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 570
    const/4 v4, 0x3

    iput v4, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 576
    iput v9, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 582
    iput v3, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 586
    iput v10, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 601
    iput v10, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 605
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 609
    iput v10, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 613
    iput v10, v0, Landroid/media/AudioTrack;->mOffset:I

    .line 617
    iput-boolean v10, v0, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 621
    iput v10, v0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 625
    iput v10, v0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 631
    sget-object v5, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v5, v0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3756
    iput-object v4, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3892
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 4013
    new-instance v4, Landroid/media/Utils$ListenerList;

    invoke-direct {v4}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v4, v0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    .line 4193
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 4194
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    .line 816
    iput-object v1, v0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    .line 818
    if-eqz v2, :cond_1c9

    .line 823
    iget-object v1, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move/from16 v5, p5

    invoke-static {v1, v2, v7, v5}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 824
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v1, v4}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 825
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x200

    and-int/lit16 v4, v4, -0x101

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 828
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 833
    :cond_8a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_96

    .line 834
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v11, v1

    goto :goto_97

    .line 833
    :cond_96
    move-object v11, v1

    .line 837
    :goto_97
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 838
    if-nez v1, :cond_9e

    .line 839
    move v1, v10

    .line 842
    :cond_9e
    nop

    .line 843
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_ac

    .line 845
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v4

    goto :goto_ad

    .line 843
    :cond_ac
    move v4, v10

    .line 847
    :goto_ad
    nop

    .line 848
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v12

    and-int/2addr v3, v12

    if-eqz v3, :cond_ba

    .line 850
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    goto :goto_c0

    .line 851
    :cond_ba
    if-nez v4, :cond_bf

    .line 852
    const/16 v3, 0xc

    goto :goto_c0

    .line 851
    :cond_bf
    move v3, v10

    .line 855
    :goto_c0
    nop

    .line 856
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v12

    and-int/2addr v12, v9

    if-eqz v12, :cond_cd

    .line 857
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    goto :goto_ce

    .line 856
    :cond_cd
    move v2, v9

    .line 859
    :goto_ce
    move/from16 v20, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 860
    move/from16 v15, p7

    iput-boolean v15, v0, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 861
    const/4 v1, -0x1

    iput v1, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 863
    invoke-direct {v0, v7}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 865
    iput-object v11, v0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 867
    if-ltz v8, :cond_1b0

    .line 871
    iget v1, v0, Landroid/media/AudioTrack;->mSampleRate:I

    filled-new-array {v1}, [I

    move-result-object v5

    .line 872
    nop

    .line 873
    invoke-static {v6, v8}, Landroid/media/AudioTrack;->resolvePlaybackSessionId(Landroid/content/Context;I)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v11

    .line 875
    if-nez v6, :cond_fb

    .line 876
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    goto :goto_ff

    :cond_fb
    invoke-virtual {v6}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 879
    :goto_ff
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v1

    .line 880
    :try_start_103
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    iget v6, v0, Landroid/media/AudioTrack;->mChannelMask:I

    iget v7, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v8, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    move v2, v9

    iget v9, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    move v12, v10

    iget v10, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 883
    move v13, v12

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v12

    .line 884
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getCurrentOpPackageName()Ljava/lang/String;

    move-result-object v18

    .line 880
    move/from16 v16, v13

    const-wide/16 v13, 0x0

    move/from16 v17, v2

    move-object v2, v0

    move/from16 v0, v17

    move-object/from16 v17, p9

    move/from16 v19, v16

    move/from16 v16, p8

    invoke-direct/range {v2 .. v18}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 885
    if-eqz v3, :cond_156

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V
    :try_end_150
    .catchall {:try_start_103 .. :try_end_150} :catchall_1a3

    .line 889
    if-eqz v1, :cond_155

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 887
    :cond_155
    return-void

    .line 889
    :cond_156
    if-eqz v1, :cond_15b

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 891
    :cond_15b
    aget v1, v5, v19

    iput v1, v2, Landroid/media/AudioTrack;->mSampleRate:I

    .line 892
    aget v1, v11, v19

    iput v1, v2, Landroid/media/AudioTrack;->mSessionId:I

    .line 896
    iget-object v1, v2, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_18e

    .line 898
    iget v1, v2, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 899
    iget v1, v2, Landroid/media/AudioTrack;->mChannelCount:I

    iget v3, v2, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v3

    mul-int v9, v1, v3

    goto :goto_181

    .line 901
    :cond_180
    move v9, v0

    .line 903
    :goto_181
    const/high16 v1, 0x41a00000    # 20.0f

    int-to-float v3, v9

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    mul-int/2addr v1, v9

    iput v1, v2, Landroid/media/AudioTrack;->mOffset:I

    .line 906
    :cond_18e
    iget v1, v2, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_196

    .line 907
    const/4 v0, 0x2

    iput v0, v2, Landroid/media/AudioTrack;->mState:I

    goto :goto_198

    .line 909
    :cond_196
    iput v0, v2, Landroid/media/AudioTrack;->mState:I

    .line 912
    :goto_198
    iget v0, v2, Landroid/media/AudioTrack;->mSessionId:I

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    .line 913
    iget v0, v2, Landroid/media/AudioTrack;->mPlayerIId:I

    invoke-direct {v2, v0}, Landroid/media/AudioTrack;->native_setPlayerIId(I)V

    .line 914
    return-void

    .line 879
    :catchall_1a3
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1af

    :try_start_1a7
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1aa
    .catchall {:try_start_1a7 .. :try_end_1aa} :catchall_1ab

    goto :goto_1af

    :catchall_1ab
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1af
    :goto_1af
    throw v2

    .line 868
    :cond_1b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_1c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;Landroid/media/AudioTrack-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 805
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v9}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    .line 807
    return-void
.end method

.method private greylist-max-o audioBuffSizeCheck(I)V
    .registers 5

    .line 2025
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 2026
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int/2addr v0, v2

    goto :goto_14

    .line 2028
    :cond_13
    move v0, v1

    .line 2030
    :goto_14
    rem-int v2, p1, v0

    if-nez v2, :cond_20

    if-lt p1, v1, :cond_20

    .line 2034
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 2035
    div-int/2addr p1, v0

    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 2036
    return-void

    .line 2031
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid audio buffer size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o audioParamCheck(IIIII)V
    .registers 10

    .line 1862
    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p1, v0, :cond_8

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p1, v0, :cond_a

    :cond_8
    if-nez p1, :cond_105

    .line 1868
    :cond_a
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1870
    const/16 p1, 0xd

    const/16 v0, 0xc

    if-ne p4, p1, :cond_3a

    if-eq p2, v0, :cond_3a

    .line 1872
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3a

    .line 1873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENCODING_IEC61937 is configured with channel mask as "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", which is not 2 or 8 channels"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.media.AudioTrack"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_3a
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 1881
    const/4 p1, 0x0

    const-string v1, " for encoding "

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_11e

    .line 1894
    if-nez p2, :cond_56

    if-eqz p3, :cond_56

    .line 1895
    iput p1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1896
    goto :goto_64

    .line 1890
    :sswitch_4b
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1891
    iput v0, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1892
    goto :goto_64

    .line 1885
    :sswitch_50
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1886
    const/4 p2, 0x4

    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1887
    goto :goto_64

    .line 1898
    :cond_56
    invoke-static {p2, p4}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1903
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1904
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result p2

    iput p2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1907
    :goto_64
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 1908
    iget p2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz p2, :cond_b7

    .line 1911
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    .line 1912
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    if-nez v0, :cond_7f

    .line 1913
    invoke-static {p4}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    sget v0, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    if-gt p2, v0, :cond_7f

    :cond_7d
    move p1, v3

    goto :goto_80

    :cond_7f
    nop

    .line 1915
    :goto_80
    if-eqz p1, :cond_96

    .line 1920
    iget p1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez p1, :cond_89

    .line 1921
    iput p2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_b7

    .line 1922
    :cond_89
    iget p1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-ne p1, p2, :cond_8e

    goto :goto_b7

    .line 1923
    :cond_8e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Channel count must match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1916
    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unsupported channel index mask configuration "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1929
    :cond_b7
    :goto_b7
    if-ne p4, v3, :cond_ba

    .line 1930
    move p4, v2

    .line 1933
    :cond_ba
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 1936
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1940
    if-eq p5, v3, :cond_c6

    if-nez p5, :cond_d1

    :cond_c6
    if-eq p5, v3, :cond_d9

    iget p1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1941
    invoke-static {p1}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result p1

    if-eqz p1, :cond_d1

    goto :goto_d9

    .line 1942
    :cond_d1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid mode."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1944
    :cond_d9
    :goto_d9
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 1945
    return-void

    .line 1934
    :cond_dc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported audio encoding."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1899
    :cond_e4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unsupported channel mask configuration "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1865
    :cond_105
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "Hz is not a supported sample rate."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_data_11e
    .sparse-switch
        0x1 -> :sswitch_50
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_50
        0xc -> :sswitch_4b
    .end sparse-switch
.end method

.method private blacklist beginStreamEventHandling()V
    .registers 3

    .line 4291
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_21

    .line 4292
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.media.AudioTrack.StreamEvent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    .line 4293
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4294
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4295
    if-eqz v0, :cond_21

    .line 4296
    new-instance v1, Landroid/media/AudioTrack$StreamEventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$StreamEventHandler;-><init>(Landroid/media/AudioTrack;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4299
    :cond_21
    return-void
.end method

.method private blacklist blockUntilOffloadDrain(I)Z
    .registers 6

    .line 3679
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3680
    :goto_3
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_11

    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    goto :goto_11

    .line 3689
    :cond_f
    monitor-exit v0

    return v3

    .line 3681
    :cond_11
    :goto_11
    if-ne p1, v3, :cond_16

    .line 3682
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1e

    const/4 p1, 0x0

    return p1

    .line 3685
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1e

    goto :goto_1d

    .line 3686
    :catch_1c
    move-exception v1

    .line 3687
    :goto_1d
    goto :goto_3

    .line 3690
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private greylist-max-o broadcastRoutingChange()V
    .registers 4

    .line 3997
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 3998
    invoke-direct {p0}, Landroid/media/AudioTrack;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseUpdateDeviceIds(Ljava/util/List;)V

    .line 3999
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4000
    :try_start_d
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 4001
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 4002
    goto :goto_17

    .line 4003
    :cond_27
    monitor-exit v0

    .line 4004
    return-void

    .line 4003
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static greylist-max-o clampGainOrLevel(F)F
    .registers 3

    .line 2693
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2696
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_d

    .line 2697
    move p0, v0

    goto :goto_14

    .line 2698
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_14

    .line 2699
    move p0, v0

    .line 2701
    :cond_14
    :goto_14
    return p0

    .line 2694
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private blacklist endStreamEventHandling()V
    .registers 2

    .line 4303
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 4304
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 4305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    .line 4307
    :cond_c
    return-void
.end method

.method public static whitelist getMaxVolume()F
    .registers 1

    .line 2096
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static whitelist getMinBufferSize(III)I
    .registers 5

    .line 2497
    nop

    .line 2498
    const/4 v0, -0x2

    sparse-switch p1, :sswitch_data_5c

    .line 2508
    invoke-static {p1, p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2509
    const-string p0, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2510
    return v0

    .line 2505
    :sswitch_11
    nop

    .line 2506
    const/4 p1, 0x2

    goto :goto_1b

    .line 2501
    :sswitch_14
    nop

    .line 2502
    const/4 p1, 0x1

    goto :goto_1b

    .line 2512
    :cond_17
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result p1

    .line 2516
    :goto_1b
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2517
    const-string p0, "getMinBufferSize(): Invalid audio format."

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2518
    return v0

    .line 2523
    :cond_27
    sget v1, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p0, v1, :cond_3e

    sget v1, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p0, v1, :cond_30

    goto :goto_3e

    .line 2529
    :cond_30
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result p0

    .line 2530
    if-gtz p0, :cond_3d

    .line 2531
    const-string p0, "getMinBufferSize(): error querying hardware"

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2532
    const/4 p0, -0x1

    return p0

    .line 2535
    :cond_3d
    return p0

    .line 2525
    :cond_3e
    :goto_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMinBufferSize(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " Hz is not a supported sample rate."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2526
    return v0

    nop

    :sswitch_data_5c
    .sparse-switch
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_14
        0xc -> :sswitch_11
    .end sparse-switch
.end method

.method public static whitelist getMinVolume()F
    .registers 1

    .line 2084
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getNativeOutputSampleRate(I)I
    .registers 1

    .line 2470
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result p0

    return p0
.end method

.method private blacklist getRoutedDevicesInternal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 3797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3798
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceIds()[I

    move-result-object v1

    .line 3799
    if-eqz v1, :cond_23

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_23

    .line 3803
    :cond_f
    const/4 v2, 0x0

    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 3804
    aget v3, v1, v2

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 3806
    if-eqz v3, :cond_1f

    .line 3807
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3803
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3810
    :cond_22
    return-object v0

    .line 3800
    :cond_23
    :goto_23
    return-object v0
.end method

.method public static whitelist isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1609
    if-eqz p0, :cond_2d

    .line 1612
    if-eqz p1, :cond_25

    .line 1615
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 1616
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    .line 1617
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v6

    .line 1615
    invoke-static/range {v0 .. v6}, Landroid/media/AudioTrack;->native_is_direct_output_supported(IIIIIII)Z

    move-result p0

    return p0

    .line 1613
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null AudioAttributes argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1610
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null AudioFormat argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist isMultichannelConfigSupported(II)Z
    .registers 6

    .line 1974
    const v0, 0xffffffc

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_d

    .line 1975
    const-string p0, "Channel configuration features unsupported channels"

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1976
    return v1

    .line 1978
    :cond_d
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 1981
    :try_start_11
    invoke-static {p1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1982
    sget v2, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_19} :catch_a8

    goto :goto_1c

    .line 1983
    :cond_1a
    const/16 v2, 0x18

    .line 1987
    :goto_1c
    nop

    .line 1988
    if-le v0, v2, :cond_50

    .line 1989
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel configuration contains too many channels for encoding "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " > "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1991
    return v1

    .line 1998
    :cond_50
    and-int/lit8 p1, p0, 0xc

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5c

    .line 1999
    const-string p0, "Front channels must be present in multichannel configurations"

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2000
    return v1

    .line 2003
    :cond_5c
    sget-object p1, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2004
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2005
    and-int v3, p0, v2

    if-eqz v3, :cond_a5

    if-eq v3, v2, :cond_a5

    .line 2007
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Channel pair ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") cannot be used independently"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2008
    return v1

    .line 2010
    :cond_a5
    goto :goto_66

    .line 2011
    :cond_a6
    const/4 p0, 0x1

    return p0

    .line 1984
    :catch_a8
    move-exception p0

    .line 1985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported encoding "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1986
    return v1
.end method

.method private static blacklist isValidAudioDescriptionMixLevel(F)Z
    .registers 2

    .line 1635
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_e

    const/high16 v0, 0x42400000    # 48.0f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static blacklist isValidDualMonoMode(I)Z
    .registers 1

    .line 1692
    packed-switch p0, :pswitch_data_8

    .line 1699
    const/4 p0, 0x0

    return p0

    .line 1697
    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private synthetic blacklist lambda$addOnCodecFormatChangedListener$0(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .registers 4

    .line 4050
    invoke-interface {p1, p0, p3}, Landroid/media/AudioTrack$OnCodecFormatChangedListener;->onCodecFormatChanged(Landroid/media/AudioTrack;Landroid/media/AudioMetadataReadMap;)V

    .line 4051
    return-void
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .registers 2

    .line 4597
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    return-void
.end method

.method private static greylist-max-o loge(Ljava/lang/String;)V
    .registers 2

    .line 4601
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    return-void
.end method

.method private native greylist-max-o native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native greylist-max-o native_attachAuxEffect(I)I
.end method

.method private final native greylist-max-o native_disableDeviceCallback()V
.end method

.method private final native greylist-max-o native_enableDeviceCallback()V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_flush()V
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getPortId()I
.end method

.method private native blacklist native_getRoutedDeviceIds()[I
.end method

.method private native blacklist native_getStartThresholdInFrames()I
.end method

.method private native greylist-max-o native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private native blacklist native_get_audio_description_mix_level_db([F)I
.end method

.method private final native greylist-max-o native_get_buffer_capacity_frames()I
.end method

.method private final native greylist-max-o native_get_buffer_size_frames()I
.end method

.method private native blacklist native_get_dual_mono_mode([I)I
.end method

.method private final native greylist-max-o native_get_flags()I
.end method

.method private final native greylist-max-o native_get_latency()I
.end method

.method private final native greylist-max-o native_get_marker_pos()I
.end method

.method private static final native greylist-max-o native_get_min_buff_size(III)I
.end method

.method private static final native greylist-max-o native_get_output_sample_rate(I)I
.end method

.method private final native greylist-max-o native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native greylist-max-o native_get_playback_rate()I
.end method

.method private final native greylist-max-o native_get_pos_update_period()I
.end method

.method private final native greylist-max-o native_get_position()I
.end method

.method private final native greylist-max-o native_get_timestamp([J)I
.end method

.method private final native greylist-max-o native_get_underrun_count()I
.end method

.method private static native blacklist native_is_direct_output_supported(IIIIIII)Z
.end method

.method private final native greylist-max-o native_pause()V
.end method

.method private final native greylist-max-o native_reload_static()I
.end method

.method private final native greylist-max-o native_setAuxEffectSendLevel(F)I
.end method

.method private native blacklist native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native greylist-max-o native_setOutputDevice(I)Z
.end method

.method private native blacklist native_setPlayerIId(I)V
.end method

.method private final native greylist-max-o native_setPresentation(II)I
.end method

.method private native blacklist native_setStartThresholdInFrames(I)I
.end method

.method private final native greylist-max-o native_setVolume(FF)V
.end method

.method private native blacklist native_set_audio_description_mix_level_db(F)I
.end method

.method private final native greylist-max-o native_set_buffer_size_frames(I)I
.end method

.method private native blacklist native_set_delay_padding(II)V
.end method

.method private native blacklist native_set_dual_mono_mode(I)I
.end method

.method private final native greylist-max-o native_set_loop(III)I
.end method

.method private final native greylist-max-o native_set_marker_pos(I)I
.end method

.method private final native greylist-max-o native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native greylist-max-o native_set_playback_rate(I)I
.end method

.method private final native greylist-max-o native_set_pos_update_period(I)I
.end method

.method private final native greylist-max-o native_set_position(I)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I
.end method

.method private final native greylist-max-o native_start()V
.end method

.method private final native greylist-max-o native_stop()V
.end method

.method private final native greylist-max-o native_write_byte([BIIIZ)I
.end method

.method private final native greylist-max-o native_write_float([FIIIZ)I
.end method

.method private final native blacklist native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I
.end method

.method private final native greylist-max-o native_write_short([SIIIZ)I
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 6

    .line 4423
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioTrack;

    .line 4424
    if-nez p0, :cond_b

    .line 4425
    return-void

    .line 4428
    :cond_b
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 4429
    invoke-direct {p0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 4430
    return-void

    .line 4433
    :cond_13
    const/16 v0, 0x64

    if-ne p1, v0, :cond_38

    .line 4434
    check-cast p4, Ljava/nio/ByteBuffer;

    .line 4435
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4436
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4437
    invoke-static {p4}, Landroid/media/AudioMetadata;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;

    move-result-object p1

    .line 4438
    if-nez p1, :cond_31

    .line 4439
    const-string p0, "android.media.AudioTrack"

    const-string p1, "Unable to get audio metadata from byte buffer"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    return-void

    .line 4442
    :cond_31
    iget-object p0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/media/Utils$ListenerList;->notify(ILjava/lang/Object;)V

    .line 4443
    return-void

    .line 4446
    :cond_38
    const/16 v0, 0x9

    if-eq p1, v0, :cond_55

    const/4 v0, 0x6

    if-eq p1, v0, :cond_55

    const/4 v0, 0x7

    if-ne p1, v0, :cond_43

    goto :goto_55

    .line 4453
    :cond_43
    iget-object p0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 4454
    if-eqz p0, :cond_54

    .line 4455
    invoke-virtual {p0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 4456
    if-eqz p0, :cond_54

    .line 4457
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4458
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4461
    :cond_54
    return-void

    .line 4449
    :cond_55
    :goto_55
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->handleStreamEventFromNative(II)V

    .line 4450
    return-void
.end method

.method private static greylist-max-o shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 10

    .line 1796
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x318

    .line 1800
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_2d

    if-nez v0, :cond_2c

    .line 1802
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 1803
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1804
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    if-eq v0, v2, :cond_2d

    .line 1805
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    if-eq v0, v1, :cond_2d

    .line 1806
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2d

    .line 1807
    :cond_2c
    return v3

    .line 1811
    :cond_2d
    if-eqz p1, :cond_88

    .line 1812
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p0

    if-eqz p0, :cond_88

    .line 1813
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result p0

    if-eqz p0, :cond_88

    .line 1814
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result p0

    if-eqz p0, :cond_88

    .line 1815
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result p0

    if-ge p0, v2, :cond_50

    goto :goto_88

    .line 1821
    :cond_50
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result p0

    if-gt p0, v1, :cond_87

    .line 1822
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p0

    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    if-le p0, v0, :cond_5f

    goto :goto_87

    .line 1827
    :cond_5f
    if-eq p3, v2, :cond_62

    .line 1828
    return v3

    .line 1833
    :cond_62
    if-eqz p2, :cond_86

    .line 1836
    nop

    .line 1838
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    .line 1839
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result p0

    int-to-long v4, p0

    mul-long/2addr v0, v4

    .line 1840
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    .line 1842
    int-to-long p0, p2

    cmp-long p0, p0, v0

    if-gez p0, :cond_86

    .line 1843
    return v3

    .line 1847
    :cond_86
    return v2

    .line 1823
    :cond_87
    :goto_87
    return v3

    .line 1816
    :cond_88
    :goto_88
    return v3
.end method

.method private greylist-max-o startImpl()V
    .registers 5

    .line 3027
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3028
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v1, :cond_d

    .line 3029
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3031
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2d

    .line 3032
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3033
    const/4 v0, 0x0

    :try_start_12
    new-array v2, v0, [I

    invoke-virtual {p0, v2}, Landroid/media/AudioTrack;->baseStart([I)V

    .line 3034
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 3037
    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_23

    .line 3038
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_28

    .line 3040
    :cond_23
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3041
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 3043
    :goto_28
    monitor-exit v1

    .line 3044
    return-void

    .line 3043
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2a

    throw v0

    .line 3031
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private greylist-max-o testDisableNativeRoutingCallbacksLocked()V
    .registers 2

    .line 3874
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_11

    .line 3876
    :try_start_c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_10

    .line 3880
    goto :goto_11

    .line 3877
    :catch_10
    move-exception v0

    .line 3882
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist testEnableNativeRoutingCallbacksLocked()Z
    .registers 4

    .line 3856
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_20

    .line 3858
    :try_start_c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_11

    .line 3859
    const/4 v0, 0x1

    return v0

    .line 3860
    :catch_11
    move-exception v0

    .line 3861
    const/4 v1, 0x3

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3862
    const-string v1, "testEnableNativeRoutingCallbacks failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3866
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist tryToDisableNativeRoutingCallback()V
    .registers 3

    .line 3842
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3843
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-eqz v1, :cond_d

    .line 3844
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3845
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3847
    :cond_d
    monitor-exit v0

    .line 3848
    return-void

    .line 3847
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2

    .line 1476
    iput-object p1, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1477
    return-void
.end method


# virtual methods
.method public whitelist addOnCodecFormatChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 5

    .line 4045
    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    new-instance v1, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V

    invoke-virtual {v0, p2, p1, v1}, Landroid/media/Utils$ListenerList;->add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    .line 4053
    return-void
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 7

    .line 3911
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3912
    if-eqz p1, :cond_28

    :try_start_5
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3913
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3914
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3916
    if-eqz p2, :cond_1a

    :goto_19
    goto :goto_22

    :cond_1a
    new-instance p2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_19

    :goto_22
    invoke-direct {v2, p0, p1, p2}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3914
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3918
    :cond_28
    monitor-exit v0

    .line 3919
    return-void

    .line 3918
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3978
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3979
    return-void
.end method

.method public whitelist attachAuxEffect(I)I
    .registers 3

    .line 3715
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 3716
    const/4 p1, -0x3

    return p1

    .line 3718
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result p1

    return p1
.end method

.method public whitelist createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .registers 3

    .line 2772
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method greylist-max-r deferred_connect(J)V
    .registers 23

    .line 955
    move-object/from16 v2, p0

    iget v0, v2, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_71

    .line 958
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v11

    .line 959
    filled-new-array {v0}, [I

    move-result-object v5

    .line 961
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v19

    .line 962
    :try_start_18
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 971
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v12

    const-string v18, ""

    .line 962
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v13, p1

    invoke-direct/range {v2 .. v18}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 977
    if-eqz v3, :cond_58

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when initializing AudioTrack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_18 .. :try_end_52} :catchall_64

    .line 981
    if-eqz v19, :cond_57

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 979
    :cond_57
    return-void

    .line 981
    :cond_58
    if-eqz v19, :cond_5d

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 983
    :cond_5d
    aget v0, v11, v0

    iput v0, v2, Landroid/media/AudioTrack;->mSessionId:I

    .line 985
    iput v1, v2, Landroid/media/AudioTrack;->mState:I

    goto :goto_71

    .line 960
    :catchall_64
    move-exception v0

    move-object v1, v0

    if-eqz v19, :cond_70

    :try_start_68
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    throw v1

    .line 987
    :cond_71
    :goto_71
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 2069
    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    .line 2070
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 2071
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 2072
    return-void
.end method

.method public whitelist flush()V
    .registers 3

    .line 3119
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3121
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 3122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3123
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3126
    :cond_e
    return-void
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3

    .line 2140
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_b

    .line 2143
    iget-object v0, p0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0

    .line 2141
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAudioDescriptionMixLeveldB()F
    .registers 5

    .line 1679
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v0, v1

    .line 1681
    :try_start_8
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_audio_description_mix_level_db([F)I

    move-result v3

    .line 1682
    if-nez v3, :cond_1b

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_1c

    if-eqz v3, :cond_17

    goto :goto_1b

    .line 1687
    :cond_17
    nop

    .line 1688
    aget v0, v0, v1

    return v0

    .line 1683
    :cond_1b
    :goto_1b
    return v2

    .line 1685
    :catch_1c
    move-exception v0

    .line 1686
    return v2
.end method

.method public whitelist getAudioFormat()I
    .registers 2

    .line 2151
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public whitelist getAudioSessionId()I
    .registers 2

    .line 2545
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public whitelist getBufferCapacityInFrames()I
    .registers 2

    .line 2310
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getBufferSizeInFrames()I
    .registers 2

    .line 2253
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getChannelConfiguration()I
    .registers 2

    .line 2176
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 2201
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public whitelist getDualMonoMode()I
    .registers 4

    .line 1742
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    .line 1744
    :try_start_5
    invoke-direct {p0, v1}, Landroid/media/AudioTrack;->native_get_dual_mono_mode([I)I

    move-result v2

    .line 1745
    if-nez v2, :cond_18

    aget v2, v1, v0

    invoke-static {v2}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_19

    if-nez v2, :cond_14

    goto :goto_18

    .line 1750
    :cond_14
    nop

    .line 1751
    aget v0, v1, v0

    return v0

    .line 1746
    :cond_18
    :goto_18
    return v0

    .line 1748
    :catch_19
    move-exception v1

    .line 1749
    return v0
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .registers 3

    .line 2185
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 2186
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2187
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2188
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_1a

    .line 2189
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 2191
    :cond_1a
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_23

    .line 2192
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 2194
    :cond_23
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLatency()I
    .registers 2

    .line 2425
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 4336
    iget-object v0, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 2654
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2655
    return-object v0
.end method

.method protected whitelist getNativeFrameCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2380
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getNotificationMarkerPosition()I
    .registers 2

    .line 2389
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public whitelist getOffloadDelay()I
    .registers 3

    .line 1519
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_13

    .line 1522
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    .line 1525
    iget v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    return v0

    .line 1523
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1520
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOffloadPadding()I
    .registers 3

    .line 1537
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_13

    .line 1540
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    .line 1543
    iget v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    return v0

    .line 1541
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1538
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPerformanceMode()I
    .registers 3

    .line 2456
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    .line 2457
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    .line 2458
    const/4 v0, 0x1

    return v0

    .line 2459
    :cond_a
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_10

    .line 2460
    const/4 v0, 0x2

    return v0

    .line 2462
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPlayState()I
    .registers 3

    .line 2223
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2224
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    packed-switch v1, :pswitch_data_16

    .line 2230
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_11

    .line 2228
    :pswitch_b
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    .line 2226
    :pswitch_e
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 2230
    :goto_11
    monitor-exit v0

    return v1

    .line 2232
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist getPlaybackHeadPosition()I
    .registers 2

    .line 2412
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public whitelist getPlaybackParams()Landroid/media/PlaybackParams;
    .registers 2

    .line 2126
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPlaybackRate()I
    .registers 2

    .line 2116
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public whitelist getPositionNotificationPeriod()I
    .registers 2

    .line 2397
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 3788
    monitor-enter p0

    .line 3789
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 3790
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 3822
    invoke-direct {p0}, Landroid/media/AudioTrack;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    .line 3823
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3824
    const/4 v0, 0x0

    return-object v0

    .line 3826
    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method public whitelist getRoutedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 3838
    invoke-direct {p0}, Landroid/media/AudioTrack;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 2109
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public whitelist getStartThresholdInFrames()I
    .registers 3

    .line 2363
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 2366
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_e

    .line 2369
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getStartThresholdInFrames()I

    move-result v0

    return v0

    .line 2367
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2364
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 2213
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public whitelist getStreamType()I
    .registers 2

    .line 2163
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public whitelist getTimestamp(Landroid/media/AudioTimestamp;)Z
    .registers 6

    .line 2590
    if-eqz p1, :cond_17

    .line 2594
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2595
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 2596
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 2597
    return v2

    .line 2599
    :cond_d
    aget-wide v1, v0, v2

    iput-wide v1, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2600
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 2601
    return v1

    .line 2591
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public greylist-max-o getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .registers 6

    .line 2632
    if-eqz p1, :cond_14

    .line 2636
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2637
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 2638
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2639
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 2640
    return v1

    .line 2633
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist getUnderrunCount()I
    .registers 2

    .line 2442
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method blacklist handleStreamEventFromNative(II)V
    .registers 6

    .line 4210
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    if-nez v0, :cond_5

    .line 4211
    return-void

    .line 4213
    :cond_5
    packed-switch p1, :pswitch_data_38

    :pswitch_8
    goto :goto_37

    .line 4216
    :pswitch_9
    iget-object p1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$StreamEventHandler;->removeMessages(I)V

    .line 4217
    iget-object p1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4218
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 4217
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4220
    goto :goto_37

    .line 4226
    :pswitch_1d
    iget-object p1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object p2, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4227
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 4226
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37

    .line 4222
    :pswitch_2a
    iget-object p1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object p2, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4223
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 4222
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4224
    nop

    .line 4230
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x6
        :pswitch_2a
        :pswitch_1d
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist isOffloadedPlayback()Z
    .registers 2

    .line 1585
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    return v0
.end method

.method public final native greylist native_release()V
.end method

.method public whitelist pause()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3086
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3091
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3092
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 3093
    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    .line 3094
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    .line 3095
    const/4 v1, 0x5

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_1a

    .line 3097
    :cond_17
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3099
    :goto_1a
    monitor-exit v0

    .line 3100
    return-void

    .line 3099
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v1

    .line 3087
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist play()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2998
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 3002
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    .line 3003
    if-nez v0, :cond_f

    .line 3004
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    goto :goto_17

    .line 3006
    :cond_f
    new-instance v1, Landroid/media/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    .line 3022
    invoke-virtual {v1}, Landroid/media/AudioTrack$1;->start()V

    .line 3024
    :goto_17
    return-void

    .line 2999
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 3

    .line 2761
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result p1

    return p1
.end method

.method greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 2

    .line 2766
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o playerPause()V
    .registers 1

    .line 4407
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    .line 4408
    return-void
.end method

.method greylist-max-o playerSetAuxEffectSendLevel(ZF)I
    .registers 3

    .line 3748
    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 3749
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result p1

    .line 3750
    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    const/4 p1, -0x1

    :goto_10
    return p1
.end method

.method greylist-max-o playerSetVolume(ZFF)V
    .registers 5

    .line 2732
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move p2, v0

    :cond_4
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 2733
    if-eqz p1, :cond_b

    move p3, v0

    :cond_b
    invoke-static {p3}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 2735
    invoke-direct {p0, p2, p1}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 2736
    return-void
.end method

.method greylist-max-o playerStart()V
    .registers 1

    .line 4402
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 4403
    return-void
.end method

.method greylist-max-o playerStop()V
    .registers 1

    .line 4412
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 4413
    return-void
.end method

.method public whitelist registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V
    .registers 6

    .line 4129
    if-eqz p2, :cond_4c

    .line 4132
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_44

    .line 4136
    if-eqz p1, :cond_3c

    .line 4139
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4141
    :try_start_b
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    .line 4142
    iget-object v2, v2, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-eq v2, p2, :cond_22

    .line 4146
    goto :goto_11

    .line 4143
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StreamEventCallback already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4147
    :cond_2a
    invoke-direct {p0}, Landroid/media/AudioTrack;->beginStreamEventHandling()V

    .line 4148
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    new-instance v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    invoke-direct {v2, p1, p2}, Landroid/media/AudioTrack$StreamEventCbInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4149
    monitor-exit v0

    .line 4150
    return-void

    .line 4149
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw p1

    .line 4137
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null Executor for the StreamEventCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4133
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4130
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null StreamEventCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist release()V
    .registers 3

    .line 2043
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2044
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    .line 2045
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_31

    .line 2049
    :try_start_7
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2052
    goto :goto_c

    .line 2050
    :catch_b
    move-exception v0

    .line 2053
    :goto_c
    iget-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v0, :cond_18

    .line 2054
    iget-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 2055
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 2058
    :cond_18
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 2059
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 2060
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2061
    const/4 v0, 0x0

    :try_start_22
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2062
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2063
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2064
    monitor-exit v1

    .line 2065
    return-void

    .line 2064
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_2e

    throw v0

    .line 2045
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist reloadStaticData()I
    .registers 3

    .line 3668
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_a

    goto :goto_f

    .line 3671
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0

    .line 3669
    :cond_f
    :goto_f
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist removeOnCodecFormatChangedListener(Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 3

    .line 4064
    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    invoke-virtual {v0, p1}, Landroid/media/Utils$ListenerList;->remove(Ljava/lang/Object;)V

    .line 4065
    return-void
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4

    .line 3929
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3930
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3931
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3933
    :cond_10
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3934
    monitor-exit v0

    .line 3935
    return-void

    .line 3934
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3990
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 3991
    return-void
.end method

.method public whitelist setAudioDescriptionMixLeveldB(F)Z
    .registers 5

    .line 1658
    invoke-static {p1}, Landroid/media/AudioTrack;->isValidAudioDescriptionMixLevel(F)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1661
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_audio_description_mix_level_db(F)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1

    .line 1659
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuxEffectSendLevel(F)I
    .registers 3

    .line 3740
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 3741
    const/4 p1, -0x3

    return p1

    .line 3743
    :cond_6
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result p1

    return p1
.end method

.method public whitelist setBufferSizeInFrames(I)I
    .registers 3

    .line 2281
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_9

    goto :goto_12

    .line 2284
    :cond_9
    if-gez p1, :cond_d

    .line 2285
    const/4 p1, -0x2

    return p1

    .line 2287
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result p1

    return p1

    .line 2282
    :cond_12
    :goto_12
    const/4 p1, -0x3

    return p1
.end method

.method public whitelist setDualMonoMode(I)Z
    .registers 5

    .line 1723
    invoke-static {p1}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1727
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_dual_mono_mode(I)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1

    .line 1724
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Dual Mono mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 3

    .line 4322
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4323
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_11

    .line 4326
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    .line 4327
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setLogSessionId(Ljava/lang/String;)V

    .line 4328
    iput-object p1, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 4329
    return-void

    .line 4324
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "track not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLoopPoints(III)I
    .registers 6

    .line 2919
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_28

    .line 2920
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_28

    .line 2923
    :cond_11
    if-nez p3, :cond_14

    goto :goto_21

    .line 2925
    :cond_14
    if-ltz p1, :cond_26

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_26

    if-ge p1, p2, :cond_26

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_21

    goto :goto_26

    .line 2929
    :cond_21
    :goto_21
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result p1

    return p1

    .line 2927
    :cond_26
    :goto_26
    const/4 p1, -0x2

    return p1

    .line 2921
    :cond_28
    :goto_28
    const/4 p1, -0x3

    return p1
.end method

.method public whitelist setNotificationMarkerPosition(I)I
    .registers 3

    .line 2836
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2837
    const/4 p1, -0x3

    return p1

    .line 2839
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result p1

    return p1
.end method

.method public whitelist setOffloadDelayPadding(II)V
    .registers 4

    .line 1493
    if-ltz p2, :cond_2c

    .line 1496
    if-ltz p1, :cond_24

    .line 1499
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_1c

    .line 1502
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_14

    .line 1505
    iput p1, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 1506
    iput p2, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 1507
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_set_delay_padding(II)V

    .line 1508
    return-void

    .line 1503
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Uninitialized track"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1500
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal use of delay/padding on non-offloaded track"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1497
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal negative delay"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1494
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal negative padding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOffloadEndOfStream()V
    .registers 4

    .line 1557
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_45

    .line 1560
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_3d

    .line 1563
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 1566
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1567
    :try_start_10
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 1570
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_32

    .line 1572
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1573
    :try_start_1c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1574
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 1575
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1576
    monitor-exit v1

    .line 1577
    return-void

    .line 1576
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v0

    .line 1568
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "EOS not supported without StreamEventCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1570
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v1

    .line 1564
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported if not playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackHeadPosition(I)I
    .registers 4

    .line 2876
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_1f

    .line 2877
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_1f

    .line 2880
    :cond_11
    if-ltz p1, :cond_1d

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_18

    goto :goto_1d

    .line 2883
    :cond_18
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result p1

    return p1

    .line 2881
    :cond_1d
    :goto_1d
    const/4 p1, -0x2

    return p1

    .line 2878
    :cond_1f
    :goto_1f
    const/4 p1, -0x3

    return p1
.end method

.method public whitelist setPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 3

    .line 2819
    if-eqz p1, :cond_6

    .line 2822
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 2823
    return-void

    .line 2820
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "params is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3

    .line 2671
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 2672
    return-void
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 4

    .line 2684
    if-eqz p1, :cond_a

    .line 2685
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_d

    .line 2687
    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 2689
    :goto_d
    return-void
.end method

.method public whitelist setPlaybackRate(I)I
    .registers 4

    .line 2794
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 2795
    const/4 p1, -0x3

    return p1

    .line 2797
    :cond_7
    if-gtz p1, :cond_b

    .line 2798
    const/4 p1, -0x2

    return p1

    .line 2800
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result p1

    return p1
.end method

.method public whitelist setPositionNotificationPeriod(I)I
    .registers 3

    .line 2850
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2851
    const/4 p1, -0x3

    return p1

    .line 2853
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result p1

    return p1
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 4

    .line 3769
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3770
    return v0

    .line 3772
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 3773
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v0

    .line 3774
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3775
    monitor-enter p0

    .line 3776
    :try_start_18
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3777
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw p1

    .line 3779
    :cond_1f
    :goto_1f
    return v0
.end method

.method public whitelist setPresentation(Landroid/media/AudioPresentation;)I
    .registers 3

    .line 2945
    if-eqz p1, :cond_f

    .line 2948
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    .line 2949
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result p1

    .line 2948
    invoke-direct {p0, v0, p1}, Landroid/media/AudioTrack;->native_setPresentation(II)I

    move-result p1

    return p1

    .line 2946
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "audio presentation is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setStartThresholdInFrames(I)I
    .registers 5

    .line 2331
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 2334
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_2f

    .line 2337
    if-lt p1, v1, :cond_10

    .line 2341
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setStartThresholdInFrames(I)I

    move-result p1

    return p1

    .line 2338
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startThresholdInFrames "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " must be positive"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2335
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AudioTrack must be a streaming track"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2332
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AudioTrack is not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist setState(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2961
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2962
    return-void
.end method

.method public whitelist setStereoVolume(FF)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2722
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2723
    const/4 p1, -0x3

    return p1

    .line 2726
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 2727
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setVolume(F)I
    .registers 2

    .line 2754
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result p1

    return p1
.end method

.method public whitelist stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3056
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 3061
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3062
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 3063
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    .line 3064
    iget-boolean v2, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1b

    .line 3065
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_2a

    .line 3067
    :cond_1b
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3068
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 3069
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3070
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3071
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3073
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2f

    .line 3074
    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    .line 3075
    return-void

    .line 3073
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 3057
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V
    .registers 6

    .line 4158
    if-eqz p1, :cond_46

    .line 4161
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_3e

    .line 4164
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4165
    nop

    .line 4166
    :try_start_a
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    .line 4167
    iget-object v3, v2, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-ne v3, p1, :cond_32

    .line 4169
    iget-object p1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4170
    iget-object p1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_30

    .line 4171
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    .line 4173
    :cond_30
    monitor-exit v0

    return-void

    .line 4175
    :cond_32
    goto :goto_10

    .line 4176
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "StreamEventCallback was not registered"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4177
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_3b

    throw p1

    .line 4162
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4159
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null StreamEventCallback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;II)I
    .registers 13

    .line 3498
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const-string v1, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3499
    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    const/4 p1, -0x3

    return p1

    .line 3503
    :cond_d
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_19

    if-eq p3, v2, :cond_19

    .line 3504
    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    return v0

    .line 3508
    :cond_19
    if-eqz p1, :cond_7e

    if-ltz p2, :cond_7e

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le p2, v3, :cond_26

    move v6, p2

    goto/16 :goto_7f

    .line 3513
    :cond_26
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 3514
    return v1

    .line 3517
    :cond_2e
    nop

    .line 3518
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3519
    nop

    .line 3520
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_40

    move v8, v2

    goto :goto_41

    :cond_40
    move v8, v1

    .line 3519
    :goto_41
    move-object v3, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I

    move-result p1

    move-object p2, v4

    goto :goto_66

    .line 3523
    :cond_4a
    move-object v3, p0

    move v6, p2

    move-object p2, p1

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 3524
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int v5, p1, v0

    iget v7, v3, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_61

    move v8, v2

    goto :goto_62

    :cond_61
    move v8, v1

    .line 3523
    :goto_62
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result p1

    .line 3529
    :goto_66
    iget p3, v3, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p3, :cond_73

    iget p3, v3, Landroid/media/AudioTrack;->mState:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_73

    if-lez p1, :cond_73

    .line 3533
    iput v2, v3, Landroid/media/AudioTrack;->mState:I

    .line 3536
    :cond_73
    if-lez p1, :cond_7d

    .line 3537
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3540
    :cond_7d
    return p1

    .line 3508
    :cond_7e
    move v6, p2

    .line 3509
    :goto_7f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") value"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    return v0
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;IIJ)I
    .registers 11

    .line 3576
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3577
    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    return v1

    .line 3581
    :cond_d
    const/4 v0, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_19

    if-eq p3, v3, :cond_19

    .line 3582
    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    return v0

    .line 3586
    :cond_19
    iget v4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v4, v3, :cond_23

    .line 3587
    const-string p1, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    return v1

    .line 3591
    :cond_23
    iget-object v1, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-nez v1, :cond_38

    .line 3592
    const-string p4, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    .line 3596
    :cond_38
    if-eqz p1, :cond_d2

    if-ltz p2, :cond_d2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_44

    goto/16 :goto_d2

    .line 3601
    :cond_44
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    .line 3602
    return v1

    .line 3606
    :cond_4c
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_67

    .line 3607
    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3608
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3609
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550002

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3612
    :cond_67
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v0, :cond_86

    .line 3613
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 3614
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 3615
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget p5, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {p4, v3, p5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 3616
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3617
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3621
    :cond_86
    nop

    .line 3622
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_b6

    .line 3623
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p4, v0, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p4

    .line 3624
    if-gez p4, :cond_a8

    .line 3625
    const-string p1, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    iput-object p5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3627
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3628
    return p4

    .line 3630
    :cond_a8
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_b6

    .line 3631
    const-string p1, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    return v1

    .line 3637
    :cond_b6
    iget p4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3638
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    .line 3639
    if-gez p1, :cond_cc

    .line 3640
    const-string p2, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    iput-object p5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3642
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3643
    return p1

    .line 3646
    :cond_cc
    iget p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3648
    return p1

    .line 3597
    :cond_d2
    :goto_d2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") value"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    return v0
.end method

.method public whitelist write([BII)I
    .registers 5

    .line 3164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result p1

    return p1
.end method

.method public whitelist write([BIII)I
    .registers 14

    .line 3212
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_4c

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    goto :goto_4c

    .line 3216
    :cond_a
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_18

    if-eq p4, v1, :cond_18

    .line 3217
    const-string p1, "android.media.AudioTrack"

    const-string p2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    return v0

    .line 3221
    :cond_18
    if-eqz p1, :cond_4b

    if-ltz p2, :cond_4b

    if-ltz p3, :cond_4b

    add-int v2, p2, p3

    if-ltz v2, :cond_4b

    array-length v3, p1

    if-le v2, v3, :cond_26

    goto :goto_4b

    .line 3227
    :cond_26
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    .line 3228
    return v2

    .line 3231
    :cond_2e
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_34

    move v8, v1

    goto :goto_35

    :cond_34
    move v8, v2

    :goto_35
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result p1

    .line 3234
    iget p2, v3, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_4a

    iget p2, v3, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4a

    if-lez p1, :cond_4a

    .line 3238
    iput v1, v3, Landroid/media/AudioTrack;->mState:I

    .line 3241
    :cond_4a
    return p1

    .line 3224
    :cond_4b
    :goto_4b
    return v0

    .line 3213
    :cond_4c
    :goto_4c
    const/4 p1, -0x3

    return p1
.end method

.method public whitelist write([FIII)I
    .registers 14

    .line 3413
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3414
    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    return v1

    .line 3418
    :cond_d
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_18

    .line 3419
    const-string p1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    return v1

    .line 3423
    :cond_18
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_24

    if-eq p4, v1, :cond_24

    .line 3424
    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    return v0

    .line 3428
    :cond_24
    if-eqz p1, :cond_57

    if-ltz p2, :cond_57

    if-ltz p3, :cond_57

    add-int v3, p2, p3

    if-ltz v3, :cond_57

    array-length v4, p1

    if-le v3, v4, :cond_32

    goto :goto_57

    .line 3435
    :cond_32
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3a

    .line 3436
    return v2

    .line 3439
    :cond_3a
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_40

    move v8, v1

    goto :goto_41

    :cond_40
    move v8, v2

    :goto_41
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result p1

    .line 3442
    iget p2, v3, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_56

    iget p2, v3, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_56

    if-lez p1, :cond_56

    .line 3446
    iput v1, v3, Landroid/media/AudioTrack;->mState:I

    .line 3449
    :cond_56
    return p1

    .line 3431
    :cond_57
    :goto_57
    const-string p1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    return v0
.end method

.method public whitelist write([SII)I
    .registers 5

    .line 3279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result p1

    return p1
.end method

.method public whitelist write([SIII)I
    .registers 14

    .line 3325
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_52

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_52

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_10

    goto :goto_52

    .line 3332
    :cond_10
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1e

    if-eq p4, v1, :cond_1e

    .line 3333
    const-string p1, "android.media.AudioTrack"

    const-string p2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    return v0

    .line 3337
    :cond_1e
    if-eqz p1, :cond_51

    if-ltz p2, :cond_51

    if-ltz p3, :cond_51

    add-int v2, p2, p3

    if-ltz v2, :cond_51

    array-length v3, p1

    if-le v2, v3, :cond_2c

    goto :goto_51

    .line 3343
    :cond_2c
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_34

    .line 3344
    return v2

    .line 3347
    :cond_34
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3a

    move v8, v1

    goto :goto_3b

    :cond_3a
    move v8, v2

    :goto_3b
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result p1

    .line 3350
    iget p2, v3, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_50

    iget p2, v3, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_50

    if-lez p1, :cond_50

    .line 3354
    iput v1, v3, Landroid/media/AudioTrack;->mState:I

    .line 3357
    :cond_50
    return p1

    .line 3340
    :cond_51
    :goto_51
    return v0

    .line 3329
    :cond_52
    :goto_52
    const/4 p1, -0x3

    return p1
.end method
