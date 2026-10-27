.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$MetricsConstants;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$StreamEventHandler;,
        Landroid/media/AudioTrack$StreamEventCbInfo;,
        Landroid/media/AudioTrack$StreamEventCallback;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnCodecFormatChangedListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$TunerConfiguration;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$DualMonoMode;,
        Landroid/media/AudioTrack$EncapsulationMetadataType;,
        Landroid/media/AudioTrack$EncapsulationMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final greylist-max-o AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field private static final blacklist CHANNEL_PAIR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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
    .registers 1

    .line 1870
    new-instance v0, Landroid/media/AudioTrack$1;

    invoke-direct {v0}, Landroid/media/AudioTrack$1;-><init>()V

    sput-object v0, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor whitelist <init>(IIIIII)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 647
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 649
    return-void
.end method

.method public constructor whitelist <init>(IIIIIII)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 706
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 707
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 710
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 711
    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 712
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 706
    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 716
    const-string v0, "AudioTrack"

    const-string v1, "AudioTrack()"

    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 8
    .param p1, "nativeTrackInJavaObj"    # J

    .line 869
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 468
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 475
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 480
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 486
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 487
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 504
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 508
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 517
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 523
    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 529
    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 533
    iput v0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 548
    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 552
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 556
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 560
    iput v0, p0, Landroid/media/AudioTrack;->mOffset:I

    .line 564
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 568
    iput v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 572
    iput v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 578
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3680
    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3782
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3903
    new-instance v1, Landroid/media/Utils$ListenerList;

    invoke-direct {v1}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    .line 4106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 4107
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    .line 872
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 873
    iput-wide v1, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 877
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v3

    .local v4, "looper":Landroid/os/Looper;
    if-nez v3, :cond_6f

    .line 878
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 880
    :cond_6f
    iput-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 883
    cmp-long v1, p1, v1

    if-eqz v1, :cond_7c

    .line 884
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    .line 885
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_7e

    .line 887
    :cond_7c
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 889
    :goto_7e
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .registers 15
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 752
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    .line 754
    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V
    .registers 37
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .param p6, "offload"    # Z
    .param p7, "encapsulationMode"    # I
    .param p8, "tunerConfiguration"    # Landroid/media/AudioTrack$TunerConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 760
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v12, p3

    move/from16 v10, p5

    const/4 v11, 0x1

    invoke-direct {v15, v14, v11}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 463
    const/4 v9, 0x0

    iput v9, v15, Landroid/media/AudioTrack;->mState:I

    .line 468
    iput v11, v15, Landroid/media/AudioTrack;->mPlayState:I

    .line 475
    iput-boolean v9, v15, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 486
    iput v9, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 487
    iput v9, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 504
    iput v11, v15, Landroid/media/AudioTrack;->mChannelCount:I

    .line 508
    const/4 v0, 0x4

    iput v0, v15, Landroid/media/AudioTrack;->mChannelMask:I

    .line 517
    const/4 v1, 0x3

    iput v1, v15, Landroid/media/AudioTrack;->mStreamType:I

    .line 523
    iput v11, v15, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 529
    iput v0, v15, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 533
    iput v9, v15, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 548
    iput v9, v15, Landroid/media/AudioTrack;->mSessionId:I

    .line 552
    const/4 v1, 0x0

    iput-object v1, v15, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 556
    iput v9, v15, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 560
    iput v9, v15, Landroid/media/AudioTrack;->mOffset:I

    .line 564
    iput-boolean v9, v15, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 568
    iput v9, v15, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 572
    iput v9, v15, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 578
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, v15, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3680
    iput-object v1, v15, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3782
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v15, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3903
    new-instance v1, Landroid/media/Utils$ListenerList;

    invoke-direct {v1}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v1, v15, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    .line 4106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v15, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 4107
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v15, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    .line 763
    iput-object v14, v15, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    .line 765
    if-eqz v13, :cond_1c5

    .line 770
    iget-object v1, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move/from16 v8, p4

    invoke-static {v1, v13, v12, v8}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 771
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 772
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    and-int/lit16 v2, v2, -0x101

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 780
    :cond_88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-nez v1, :cond_95

    .line 781
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v7, v2

    goto :goto_96

    .line 780
    :cond_95
    move-object v7, v2

    .line 784
    .end local v2    # "looper":Landroid/os/Looper;
    .local v7, "looper":Landroid/os/Looper;
    :goto_96
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 785
    .local v1, "rate":I
    if-nez v1, :cond_a0

    .line 786
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_a2

    .line 785
    :cond_a0
    move/from16 v16, v1

    .line 789
    .end local v1    # "rate":I
    .local v16, "rate":I
    :goto_a2
    const/4 v1, 0x0

    .line 790
    .local v1, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b2

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v1

    move/from16 v17, v1

    goto :goto_b4

    .line 790
    :cond_b2
    move/from16 v17, v1

    .line 794
    .end local v1    # "channelIndexMask":I
    .local v17, "channelIndexMask":I
    :goto_b4
    const/4 v1, 0x0

    .line 795
    .local v1, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_c3

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    move/from16 v18, v1

    goto :goto_cc

    .line 798
    :cond_c3
    if-nez v17, :cond_ca

    .line 799
    const/16 v1, 0xc

    move/from16 v18, v1

    goto :goto_cc

    .line 798
    :cond_ca
    move/from16 v18, v1

    .line 802
    .end local v1    # "channelMask":I
    .local v18, "channelMask":I
    :goto_cc
    const/4 v0, 0x1

    .line 803
    .local v0, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v1

    and-int/2addr v1, v11

    if-eqz v1, :cond_db

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    move/from16 v19, v0

    goto :goto_dd

    .line 803
    :cond_db
    move/from16 v19, v0

    .line 806
    .end local v0    # "encoding":I
    .local v19, "encoding":I
    :goto_dd
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 807
    move/from16 v6, p6

    iput-boolean v6, v15, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 808
    const/4 v0, -0x1

    iput v0, v15, Landroid/media/AudioTrack;->mStreamType:I

    .line 810
    invoke-direct {v15, v12}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 812
    iput-object v7, v15, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 814
    if-ltz v10, :cond_1aa

    .line 818
    new-array v0, v11, [I

    iget v1, v15, Landroid/media/AudioTrack;->mSampleRate:I

    aput v1, v0, v9

    move-object/from16 v20, v0

    .line 819
    .local v20, "sampleRate":[I
    new-array v5, v11, [I

    .line 820
    .local v5, "session":[I
    aput v10, v5, v9

    .line 822
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    iget v4, v15, Landroid/media/AudioTrack;->mChannelMask:I

    iget v3, v15, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v0, v15, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v9, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v11, v15, Landroid/media/AudioTrack;->mDataLoadMode:I

    const-wide/16 v22, 0x0

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->getCurrentOpPackageName()Ljava/lang/String;

    move-result-object v24

    .line 822
    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v26, v3

    move-object/from16 v3, v20

    move-object/from16 v27, v5

    .end local v5    # "session":[I
    .local v27, "session":[I
    move/from16 v5, v26

    move/from16 v6, v25

    move-object/from16 v25, v7

    .end local v7    # "looper":Landroid/os/Looper;
    .local v25, "looper":Landroid/os/Looper;
    move v7, v9

    move v8, v11

    const/16 v21, 0x0

    move-object/from16 v9, v27

    move-wide/from16 v10, v22

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, v24

    invoke-direct/range {v0 .. v15}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZILjava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 827
    .local v0, "initResult":I
    if-eqz v0, :cond_160

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 829
    return-void

    .line 832
    :cond_160
    aget v1, v20, v21

    move-object/from16 v2, p0

    iput v1, v2, Landroid/media/AudioTrack;->mSampleRate:I

    .line 833
    aget v1, v27, v21

    iput v1, v2, Landroid/media/AudioTrack;->mSessionId:I

    .line 837
    iget-object v1, v2, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_194

    .line 839
    iget v1, v2, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 840
    iget v1, v2, Landroid/media/AudioTrack;->mChannelCount:I

    iget v3, v2, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v3

    mul-int/2addr v1, v3

    .local v1, "frameSizeInBytes":I
    goto :goto_187

    .line 842
    .end local v1    # "frameSizeInBytes":I
    :cond_186
    const/4 v1, 0x1

    .line 844
    .restart local v1    # "frameSizeInBytes":I
    :goto_187
    const/high16 v3, 0x41a00000    # 20.0f

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/2addr v3, v1

    iput v3, v2, Landroid/media/AudioTrack;->mOffset:I

    .line 847
    .end local v1    # "frameSizeInBytes":I
    :cond_194
    iget v1, v2, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_19c

    .line 848
    const/4 v1, 0x2

    iput v1, v2, Landroid/media/AudioTrack;->mState:I

    goto :goto_19f

    .line 850
    :cond_19c
    const/4 v1, 0x1

    iput v1, v2, Landroid/media/AudioTrack;->mState:I

    .line 853
    :goto_19f
    iget v1, v2, Landroid/media/AudioTrack;->mSessionId:I

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    .line 854
    iget v1, v2, Landroid/media/AudioTrack;->mPlayerIId:I

    invoke-direct {v2, v1}, Landroid/media/AudioTrack;->native_setPlayerIId(I)V

    .line 855
    return-void

    .line 815
    .end local v0    # "initResult":I
    .end local v20    # "sampleRate":[I
    .end local v25    # "looper":Landroid/os/Looper;
    .end local v27    # "session":[I
    .restart local v7    # "looper":Landroid/os/Looper;
    :cond_1aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    .end local v7    # "looper":Landroid/os/Looper;
    .end local v16    # "rate":I
    .end local v17    # "channelIndexMask":I
    .end local v18    # "channelMask":I
    .end local v19    # "encoding":I
    :cond_1c5
    move v3, v10

    move-object v2, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;Landroid/media/AudioTrack-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    return-void
.end method

.method private greylist-max-o audioBuffSizeCheck(I)V
    .registers 5
    .param p1, "audioBufferSize"    # I

    .line 1949
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1950
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    .local v0, "frameSizeInBytes":I
    goto :goto_13

    .line 1952
    .end local v0    # "frameSizeInBytes":I
    :cond_12
    const/4 v0, 0x1

    .line 1954
    .restart local v0    # "frameSizeInBytes":I
    :goto_13
    rem-int v1, p1, v0

    if-nez v1, :cond_21

    const/4 v1, 0x1

    if-lt p1, v1, :cond_21

    .line 1958
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 1959
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 1960
    return-void

    .line 1955
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o audioParamCheck(IIIII)V
    .registers 13
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .line 1784
    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p1, v0, :cond_8

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p1, v0, :cond_a

    :cond_8
    if-nez p1, :cond_102

    .line 1790
    :cond_a
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1792
    const/16 v0, 0xd

    const/16 v1, 0xc

    if-ne p4, v0, :cond_3a

    if-eq p2, v1, :cond_3a

    .line 1794
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3a

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENCODING_IEC61937 is configured with channel mask as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", which is not 2 or 8 channels"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_3a
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 1803
    const/4 v0, 0x0

    const-string v2, " for encoding "

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_11c

    .line 1816
    if-nez p2, :cond_56

    if-eqz p3, :cond_56

    .line 1817
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1818
    goto :goto_64

    .line 1812
    :sswitch_4a
    const/4 v4, 0x2

    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1813
    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1814
    goto :goto_64

    .line 1807
    :sswitch_50
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1808
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1809
    goto :goto_64

    .line 1820
    :cond_56
    invoke-static {p2, p4}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1825
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1826
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1829
    :goto_64
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 1830
    if-eqz p3, :cond_b6

    .line 1832
    const v1, 0xffffff

    .line 1833
    .local v1, "fullIndexMask":I
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 1834
    .local v4, "channelIndexCount":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    if-nez v5, :cond_80

    .line 1835
    invoke-static {p4}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v5

    if-eqz v5, :cond_7e

    sget v5, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    if-gt v4, v5, :cond_80

    :cond_7e
    move v0, v3

    goto :goto_81

    :cond_80
    nop

    .line 1837
    .local v0, "accepted":Z
    :goto_81
    if-eqz v0, :cond_95

    .line 1842
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_8a

    .line 1843
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_b6

    .line 1844
    :cond_8a
    if-ne v2, v4, :cond_8d

    goto :goto_b6

    .line 1845
    :cond_8d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1838
    :cond_95
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported channel index mask configuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1851
    .end local v0    # "accepted":Z
    .end local v1    # "fullIndexMask":I
    .end local v4    # "channelIndexCount":I
    :cond_b6
    :goto_b6
    if-ne p4, v3, :cond_b9

    .line 1852
    const/4 p4, 0x2

    .line 1855
    :cond_b9
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1858
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1862
    if-eq p5, v3, :cond_c5

    if-nez p5, :cond_ce

    :cond_c5
    if-eq p5, v3, :cond_d6

    .line 1863
    invoke-static {p4}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    goto :goto_d6

    .line 1864
    :cond_ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1866
    :cond_d6
    :goto_d6
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 1867
    return-void

    .line 1856
    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported audio encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1821
    :cond_e1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported channel mask configuration "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1787
    :cond_102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_50
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_50
        0xc -> :sswitch_4a
    .end sparse-switch
.end method

.method private blacklist beginStreamEventHandling()V
    .registers 3

    .line 4204
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    .line 4205
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.media.AudioTrack.StreamEvent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    .line 4206
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4207
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4208
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1f

    .line 4209
    new-instance v1, Landroid/media/AudioTrack$StreamEventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$StreamEventHandler;-><init>(Landroid/media/AudioTrack;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4212
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1f
    return-void
.end method

.method private blacklist blockUntilOffloadDrain(I)Z
    .registers 6
    .param p1, "writeMode"    # I

    .line 3603
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3604
    :goto_3
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_f

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    goto :goto_f

    .line 3613
    :cond_d
    monitor-exit v0

    return v3

    .line 3605
    :cond_f
    :goto_f
    if-ne p1, v3, :cond_14

    .line 3606
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1c

    return v1

    .line 3609
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_1a
    .catchall {:try_start_14 .. :try_end_19} :catchall_1c

    goto :goto_1b

    .line 3610
    :catch_1a
    move-exception v1

    .line 3611
    :goto_1b
    goto :goto_3

    .line 3614
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private greylist-max-o broadcastRoutingChange()V
    .registers 4

    .line 3887
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 3888
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseUpdateDeviceId(Landroid/media/AudioDeviceInfo;)V

    .line 3889
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3890
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

    .line 3891
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 3892
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_17

    .line 3893
    :cond_27
    monitor-exit v0

    .line 3894
    return-void

    .line 3893
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static greylist-max-o clampGainOrLevel(F)F
    .registers 2
    .param p0, "gainOrLevel"    # F

    .line 2617
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2620
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_d

    .line 2621
    const/4 p0, 0x0

    goto :goto_15

    .line 2622
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_15

    .line 2623
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2625
    :cond_15
    :goto_15
    return p0

    .line 2618
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist endStreamEventHandling()V
    .registers 2

    .line 4216
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_a

    .line 4217
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 4218
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    .line 4220
    :cond_a
    return-void
.end method

.method public static whitelist getMaxVolume()F
    .registers 1

    .line 2020
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static whitelist getMinBufferSize(III)I
    .registers 7
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .line 2421
    const/4 v0, 0x0

    .line 2422
    .local v0, "channelCount":I
    const/4 v1, -0x2

    sparse-switch p1, :sswitch_data_5a

    .line 2432
    invoke-static {p1, p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2433
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2434
    return v1

    .line 2429
    :sswitch_11
    const/4 v0, 0x2

    .line 2430
    goto :goto_19

    .line 2425
    :sswitch_13
    const/4 v0, 0x1

    .line 2426
    goto :goto_19

    .line 2436
    :cond_15
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 2440
    :goto_19
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2441
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2442
    return v1

    .line 2447
    :cond_25
    sget v2, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p0, v2, :cond_3c

    sget v2, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p0, v2, :cond_2e

    goto :goto_3c

    .line 2453
    :cond_2e
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 2454
    .local v1, "size":I
    if-gtz v1, :cond_3b

    .line 2455
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2456
    const/4 v2, -0x1

    return v2

    .line 2459
    :cond_3b
    return v1

    .line 2449
    .end local v1    # "size":I
    :cond_3c
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2450
    return v1

    nop

    :sswitch_data_5a
    .sparse-switch
        0x2 -> :sswitch_13
        0x3 -> :sswitch_11
        0x4 -> :sswitch_13
        0xc -> :sswitch_11
    .end sparse-switch
.end method

.method public static whitelist getMinVolume()F
    .registers 1

    .line 2008
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getNativeOutputSampleRate(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 2394
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method public static whitelist isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z
    .registers 9
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1539
    if-eqz p0, :cond_2d

    .line 1542
    if-eqz p1, :cond_25

    .line 1545
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 1546
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    .line 1547
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v6

    .line 1545
    invoke-static/range {v0 .. v6}, Landroid/media/AudioTrack;->native_is_direct_output_supported(IIIIIII)Z

    move-result v0

    return v0

    .line 1543
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isMultichannelConfigSupported(II)Z
    .registers 10
    .param p0, "channelConfig"    # I
    .param p1, "encoding"    # I

    .line 1898
    const v0, 0xffffffc

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_d

    .line 1899
    const-string v0, "Channel configuration features unsupported channels"

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1900
    return v1

    .line 1902
    :cond_d
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 1905
    .local v0, "channelCount":I
    :try_start_11
    invoke-static {p1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1906
    sget v2, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_19} :catch_ad

    goto :goto_1c

    .line 1907
    :cond_1a
    const/16 v2, 0x18

    :goto_1c
    nop

    .line 1911
    .local v2, "channelCountLimit":I
    nop

    .line 1912
    if-le v0, v2, :cond_51

    .line 1913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel configuration contains too many channels for encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1915
    return v1

    .line 1920
    :cond_51
    const/16 v3, 0xc

    .line 1922
    .local v3, "frontPair":I
    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-eq v4, v5, :cond_5f

    .line 1923
    const-string v4, "Front channels must be present in multichannel configurations"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1924
    return v1

    .line 1927
    :cond_5f
    sget-object v4, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1928
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1929
    .local v6, "positionPair":I
    and-int v7, p0, v6

    if-eqz v7, :cond_aa

    and-int v7, p0, v6

    if-eq v7, v6, :cond_aa

    .line 1931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel pair ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") cannot be used independently"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1932
    return v1

    .line 1934
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "positionPair":I
    :cond_aa
    goto :goto_69

    .line 1935
    :cond_ab
    const/4 v1, 0x1

    return v1

    .line 1908
    .end local v2    # "channelCountLimit":I
    .end local v3    # "frontPair":I
    :catch_ad
    move-exception v2

    .line 1909
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1910
    return v1
.end method

.method private static blacklist isValidAudioDescriptionMixLevel(F)Z
    .registers 2
    .param p0, "level"    # F

    .line 1565
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_e

    const/high16 v0, 0x42400000    # 48.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist isValidDualMonoMode(I)Z
    .registers 2
    .param p0, "dualMonoMode"    # I

    .line 1622
    packed-switch p0, :pswitch_data_8

    .line 1629
    const/4 v0, 0x0

    return v0

    .line 1627
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 4510
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    return-void
.end method

.method private static greylist-max-o loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 4514
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
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

.method private final native greylist-max-o native_getRoutedDeviceId()I
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

.method private final native blacklist native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZILjava/lang/Object;Ljava/lang/String;)I
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
    .registers 10
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 4336
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 4337
    .local v0, "track":Landroid/media/AudioTrack;
    if-nez v0, :cond_c

    .line 4338
    return-void

    .line 4341
    :cond_c
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_14

    .line 4342
    invoke-direct {v0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 4343
    return-void

    .line 4346
    :cond_14
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3a

    .line 4347
    move-object v1, p4

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 4348
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4349
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4350
    invoke-static {v1}, Landroid/media/AudioMetadata;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;

    move-result-object v2

    .line 4351
    .local v2, "audioMetaData":Landroid/media/AudioMetadataReadMap;
    if-nez v2, :cond_33

    .line 4352
    const-string v3, "android.media.AudioTrack"

    const-string v4, "Unable to get audio metadata from byte buffer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    return-void

    .line 4355
    :cond_33
    iget-object v3, v0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/media/Utils$ListenerList;->notify(ILjava/lang/Object;)V

    .line 4356
    return-void

    .line 4359
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "audioMetaData":Landroid/media/AudioMetadataReadMap;
    :cond_3a
    const/16 v1, 0x9

    if-eq p1, v1, :cond_57

    const/4 v1, 0x6

    if-eq p1, v1, :cond_57

    const/4 v1, 0x7

    if-ne p1, v1, :cond_45

    goto :goto_57

    .line 4366
    :cond_45
    iget-object v1, v0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 4367
    .local v1, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v1, :cond_56

    .line 4368
    invoke-virtual {v1}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 4369
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_56

    .line 4370
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4371
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4374
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    :cond_56
    return-void

    .line 4362
    .end local v1    # "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    :cond_57
    :goto_57
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->handleStreamEventFromNative(II)V

    .line 4363
    return-void
.end method

.method private static greylist-max-o shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 14
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "mode"    # I

    .line 1726
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x318

    .line 1730
    .local v0, "flags":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_27

    if-nez v0, :cond_26

    .line 1732
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-ne v3, v1, :cond_26

    .line 1733
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-eqz v3, :cond_27

    .line 1734
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    .line 1735
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_27

    .line 1736
    :cond_26
    return v2

    .line 1740
    :cond_27
    if-eqz p1, :cond_75

    .line 1741
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    if-eqz v3, :cond_75

    .line 1742
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1743
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1744
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    if-ge v3, v1, :cond_4a

    goto :goto_75

    .line 1749
    :cond_4a
    if-eq p3, v1, :cond_4d

    .line 1750
    return v2

    .line 1755
    :cond_4d
    if-eqz p2, :cond_74

    .line 1756
    const-wide/16 v3, 0x64

    .line 1757
    .local v3, "BUFFER_TARGET_MODE_STREAM_MS":J
    const/16 v5, 0x3e8

    .line 1758
    .local v5, "MILLIS_PER_SECOND":I
    const-wide/16 v6, 0x64

    .line 1760
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v8, v6

    .line 1761
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    invoke-static {v6}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v8, v6

    .line 1762
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v8, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v8, v6

    .line 1764
    .local v8, "bufferTargetSize":J
    int-to-long v6, p2

    cmp-long v6, v6, v8

    if-gez v6, :cond_74

    .line 1765
    return v2

    .line 1769
    .end local v3    # "BUFFER_TARGET_MODE_STREAM_MS":J
    .end local v5    # "MILLIS_PER_SECOND":I
    .end local v8    # "bufferTargetSize":J
    :cond_74
    return v1

    .line 1745
    :cond_75
    :goto_75
    return v2
.end method

.method private greylist-max-o startImpl()V
    .registers 5

    .line 2951
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2952
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v1, :cond_d

    .line 2953
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 2955
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2b

    .line 2956
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2957
    const/4 v0, 0x0

    :try_start_12
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseStart(I)V

    .line 2958
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 2961
    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_21

    .line 2962
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_26

    .line 2964
    :cond_21
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2965
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 2967
    :goto_26
    monitor-exit v1

    .line 2968
    return-void

    .line 2967
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v0

    .line 2955
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private greylist-max-o testDisableNativeRoutingCallbacksLocked()V
    .registers 2

    .line 3764
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_11

    .line 3766
    :try_start_c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_10

    .line 3770
    goto :goto_11

    .line 3767
    :catch_10
    move-exception v0

    .line 3772
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist testEnableNativeRoutingCallbacksLocked()Z
    .registers 4

    .line 3746
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_20

    .line 3748
    :try_start_c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_11

    .line 3749
    const/4 v0, 0x1

    return v0

    .line 3750
    :catch_11
    move-exception v0

    .line 3751
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x3

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3752
    const-string v1, "testEnableNativeRoutingCallbacks failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3756
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist tryToDisableNativeRoutingCallback()V
    .registers 3

    .line 3732
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3733
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-eqz v1, :cond_d

    .line 3734
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3735
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3737
    :cond_d
    monitor-exit v0

    .line 3738
    return-void

    .line 3737
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2
    .param p1, "audioPolicy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 1406
    iput-object p1, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1407
    return-void
.end method


# virtual methods
.method public whitelist addOnCodecFormatChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    .line 3935
    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    new-instance v1, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V

    invoke-virtual {v0, p2, p1, v1}, Landroid/media/Utils$ListenerList;->add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    .line 3943
    return-void
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 8
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3801
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3802
    if-eqz p1, :cond_28

    :try_start_5
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3803
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3804
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3806
    if-eqz p2, :cond_1b

    move-object v3, p2

    goto :goto_22

    :cond_1b
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_22
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3804
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3808
    :cond_28
    monitor-exit v0

    .line 3809
    return-void

    .line 3808
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3868
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3869
    return-void
.end method

.method public whitelist attachAuxEffect(I)I
    .registers 3
    .param p1, "effectId"    # I

    .line 3639
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 3640
    const/4 v0, -0x3

    return v0

    .line 3642
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method public whitelist createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .registers 3
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .line 2696
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method greylist-max-r deferred_connect(J)V
    .registers 23
    .param p1, "nativeTrackInJavaObj"    # J

    .line 896
    move-object/from16 v15, p0

    iget v0, v15, Landroid/media/AudioTrack;->mState:I

    const/4 v14, 0x1

    if-eq v0, v14, :cond_5b

    .line 899
    new-array v0, v14, [I

    const/16 v16, 0x0

    aput v16, v0, v16

    move-object/from16 v17, v0

    .line 900
    .local v17, "session":[I
    new-array v3, v14, [I

    aput v16, v3, v16

    .line 901
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-wide/from16 v10, p1

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    invoke-direct/range {v0 .. v15}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZILjava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 915
    .local v0, "initResult":I
    if-eqz v0, :cond_51

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 917
    return-void

    .line 920
    :cond_51
    aget v1, v17, v16

    move-object/from16 v2, p0

    iput v1, v2, Landroid/media/AudioTrack;->mSessionId:I

    .line 922
    const/4 v1, 0x1

    iput v1, v2, Landroid/media/AudioTrack;->mState:I

    goto :goto_5c

    .line 896
    .end local v0    # "initResult":I
    .end local v3    # "rates":[I
    .end local v17    # "session":[I
    :cond_5b
    move-object v2, v15

    .line 924
    :goto_5c
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 1993
    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    .line 1994
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1995
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 1996
    return-void
.end method

.method public whitelist flush()V
    .registers 3

    .line 3043
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3045
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 3046
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3047
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3050
    :cond_e
    return-void
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3

    .line 2064
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_9

    .line 2067
    return-object v0

    .line 2065
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAudioDescriptionMixLeveldB()F
    .registers 6

    .line 1609
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v0, v1

    .line 1611
    .local v0, "level":[F
    :try_start_8
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_audio_description_mix_level_db([F)I

    move-result v3

    .line 1612
    .local v3, "status":I
    if-nez v3, :cond_1b

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_1c

    if-eqz v4, :cond_17

    goto :goto_1b

    .line 1617
    .end local v3    # "status":I
    :cond_17
    nop

    .line 1618
    aget v1, v0, v1

    return v1

    .line 1613
    .restart local v3    # "status":I
    :cond_1b
    :goto_1b
    return v2

    .line 1615
    .end local v3    # "status":I
    :catch_1c
    move-exception v1

    .line 1616
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method

.method public whitelist getAudioFormat()I
    .registers 2

    .line 2075
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public whitelist getAudioSessionId()I
    .registers 2

    .line 2469
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public whitelist getBufferCapacityInFrames()I
    .registers 2

    .line 2234
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getBufferSizeInFrames()I
    .registers 2

    .line 2177
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getChannelConfiguration()I
    .registers 2

    .line 2100
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 2125
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public whitelist getDualMonoMode()I
    .registers 5

    .line 1672
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1674
    .local v0, "dualMonoMode":[I
    :try_start_6
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_dual_mono_mode([I)I

    move-result v2

    .line 1675
    .local v2, "status":I
    if-nez v2, :cond_19

    aget v3, v0, v1

    invoke-static {v3}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_1a

    if-nez v3, :cond_15

    goto :goto_19

    .line 1680
    .end local v2    # "status":I
    :cond_15
    nop

    .line 1681
    aget v1, v0, v1

    return v1

    .line 1676
    .restart local v2    # "status":I
    :cond_19
    :goto_19
    return v1

    .line 1678
    .end local v2    # "status":I
    :catch_1a
    move-exception v2

    .line 1679
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .registers 3

    .line 2109
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 2110
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2111
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2112
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_18

    .line 2113
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 2115
    :cond_18
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1f

    .line 2116
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 2118
    :cond_1f
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public greylist getLatency()I
    .registers 2

    .line 2349
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 4249
    iget-object v0, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 2578
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2579
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method protected whitelist getNativeFrameCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2304
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getNotificationMarkerPosition()I
    .registers 2

    .line 2313
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public whitelist getOffloadDelay()I
    .registers 3

    .line 1449
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_13

    .line 1452
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    .line 1455
    iget v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    return v0

    .line 1453
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOffloadPadding()I
    .registers 3

    .line 1467
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_13

    .line 1470
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    .line 1473
    iget v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    return v0

    .line 1471
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1468
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native blacklist getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public whitelist getPerformanceMode()I
    .registers 3

    .line 2380
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    .line 2381
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    .line 2382
    const/4 v1, 0x1

    return v1

    .line 2383
    :cond_a
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_10

    .line 2384
    const/4 v1, 0x2

    return v1

    .line 2386
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getPlayState()I
    .registers 3

    .line 2147
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2148
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    packed-switch v1, :pswitch_data_14

    .line 2154
    goto :goto_f

    .line 2152
    :pswitch_9
    const/4 v1, 0x2

    monitor-exit v0

    return v1

    .line 2150
    :pswitch_c
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 2154
    :goto_f
    monitor-exit v0

    return v1

    .line 2156
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist getPlaybackHeadPosition()I
    .registers 2

    .line 2336
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public whitelist getPlaybackParams()Landroid/media/PlaybackParams;
    .registers 2

    .line 2050
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPlaybackRate()I
    .registers 2

    .line 2040
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public whitelist getPositionNotificationPeriod()I
    .registers 2

    .line 2321
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 3712
    monitor-enter p0

    .line 3713
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 3714
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 3724
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .line 3725
    .local v0, "deviceId":I
    if-nez v0, :cond_8

    .line 3726
    const/4 v1, 0x0

    return-object v1

    .line 3728
    :cond_8
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 2033
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public whitelist getStartThresholdInFrames()I
    .registers 3

    .line 2287
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 2290
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_e

    .line 2293
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getStartThresholdInFrames()I

    move-result v0

    return v0

    .line 2291
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2288
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 2137
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public whitelist getStreamType()I
    .registers 2

    .line 2087
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public whitelist getTimestamp(Landroid/media/AudioTimestamp;)Z
    .registers 7
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 2514
    if-eqz p1, :cond_17

    .line 2518
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2519
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 2520
    .local v1, "ret":I
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 2521
    return v2

    .line 2523
    :cond_d
    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2524
    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 2525
    return v2

    .line 2515
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .registers 6
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 2556
    if-eqz p1, :cond_14

    .line 2560
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2561
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 2562
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2563
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 2564
    return v1

    .line 2557
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getUnderrunCount()I
    .registers 2

    .line 2366
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method blacklist handleStreamEventFromNative(II)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # I

    .line 4123
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    if-nez v0, :cond_5

    .line 4124
    return-void

    .line 4126
    :cond_5
    packed-switch p1, :pswitch_data_38

    :pswitch_8
    goto :goto_37

    .line 4129
    :pswitch_9
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->removeMessages(I)V

    .line 4130
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/4 v3, 0x0

    .line 4131
    invoke-virtual {v2, v1, p2, v3}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4130
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4133
    goto :goto_37

    .line 4139
    :pswitch_1d
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/4 v2, 0x7

    .line 4140
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4139
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37

    .line 4135
    :pswitch_2a
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/4 v2, 0x6

    .line 4136
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4135
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4137
    nop

    .line 4143
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

    .line 1515
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    return v0
.end method

.method synthetic blacklist lambda$addOnCodecFormatChangedListener$0$android-media-AudioTrack(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;
    .param p2, "eventCode"    # I
    .param p3, "readMap"    # Landroid/media/AudioMetadataReadMap;

    .line 3940
    invoke-interface {p1, p0, p3}, Landroid/media/AudioTrack$OnCodecFormatChangedListener;->onCodecFormatChanged(Landroid/media/AudioTrack;Landroid/media/AudioMetadataReadMap;)V

    .line 3941
    return-void
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

    .line 3010
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3015
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3016
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 3017
    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    .line 3018
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    .line 3019
    const/4 v1, 0x5

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_1a

    .line 3021
    :cond_17
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3023
    :goto_1a
    monitor-exit v0

    .line 3024
    return-void

    .line 3023
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v1

    .line 3011
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

    .line 2922
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2926
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    .line 2927
    .local v0, "delay":I
    if-nez v0, :cond_f

    .line 2928
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    goto :goto_17

    .line 2930
    :cond_f
    new-instance v1, Landroid/media/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$2;-><init>(Landroid/media/AudioTrack;I)V

    .line 2946
    invoke-virtual {v1}, Landroid/media/AudioTrack$2;->start()V

    .line 2948
    :goto_17
    return-void

    .line 2923
    .end local v0    # "delay":I
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 2685
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 3
    .param p1, "id"    # I

    .line 2690
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o playerPause()V
    .registers 1

    .line 4320
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    .line 4321
    return-void
.end method

.method greylist-max-o playerSetAuxEffectSendLevel(ZF)I
    .registers 5
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 3672
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 3673
    invoke-direct {p0, p2}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 3674
    .local v0, "err":I
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    return v1
.end method

.method greylist-max-o playerSetVolume(ZFF)V
    .registers 6
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 2656
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    move v1, p2

    :goto_6
    invoke-static {v1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 2657
    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    move v0, p3

    :goto_e
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p3

    .line 2659
    invoke-direct {p0, p2, p3}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 2660
    return-void
.end method

.method greylist-max-o playerStart()V
    .registers 1

    .line 4315
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 4316
    return-void
.end method

.method greylist-max-o playerStop()V
    .registers 1

    .line 4325
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 4326
    return-void
.end method

.method public whitelist registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventCallback"    # Landroid/media/AudioTrack$StreamEventCallback;

    .line 4042
    if-eqz p2, :cond_4c

    .line 4045
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_44

    .line 4049
    if-eqz p1, :cond_3c

    .line 4052
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4054
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

    .line 4055
    .local v2, "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    iget-object v3, v2, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-eq v3, p2, :cond_22

    .line 4059
    .end local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    goto :goto_11

    .line 4056
    .restart local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "StreamEventCallback already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    throw v1

    .line 4060
    .end local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    .restart local p0    # "this":Landroid/media/AudioTrack;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    :cond_2a
    invoke-direct {p0}, Landroid/media/AudioTrack;->beginStreamEventHandling()V

    .line 4061
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    new-instance v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    invoke-direct {v2, p1, p2}, Landroid/media/AudioTrack$StreamEventCbInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4062
    monitor-exit v0

    .line 4063
    return-void

    .line 4062
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v1

    .line 4050
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4046
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4043
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .registers 3

    .line 1967
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1968
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    .line 1969
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2f

    .line 1973
    :try_start_7
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1976
    goto :goto_c

    .line 1974
    :catch_b
    move-exception v0

    .line 1977
    :goto_c
    iget-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v0, :cond_16

    .line 1978
    invoke-static {v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 1979
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1982
    :cond_16
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1983
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 1984
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1985
    const/4 v0, 0x0

    :try_start_20
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 1986
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1987
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1988
    monitor-exit v1

    .line 1989
    return-void

    .line 1988
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0

    .line 1969
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist reloadStaticData()I
    .registers 3

    .line 3592
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_a

    goto :goto_f

    .line 3595
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0

    .line 3593
    :cond_f
    :goto_f
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist removeOnCodecFormatChangedListener(Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    .line 3954
    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    invoke-virtual {v0, p1}, Landroid/media/Utils$ListenerList;->remove(Ljava/lang/Object;)V

    .line 3955
    return-void
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 3819
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3820
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3821
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3823
    :cond_10
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3824
    monitor-exit v0

    .line 3825
    return-void

    .line 3824
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3880
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 3881
    return-void
.end method

.method public whitelist setAudioDescriptionMixLeveldB(F)Z
    .registers 5
    .param p1, "level"    # F

    .line 1588
    invoke-static {p1}, Landroid/media/AudioTrack;->isValidAudioDescriptionMixLevel(F)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1591
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_audio_description_mix_level_db(F)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1589
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuxEffectSendLevel(F)I
    .registers 3
    .param p1, "level"    # F

    .line 3664
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 3665
    const/4 v0, -0x3

    return v0

    .line 3667
    :cond_6
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public whitelist setBufferSizeInFrames(I)I
    .registers 3
    .param p1, "bufferSizeInFrames"    # I

    .line 2205
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_9

    goto :goto_12

    .line 2208
    :cond_9
    if-gez p1, :cond_d

    .line 2209
    const/4 v0, -0x2

    return v0

    .line 2211
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0

    .line 2206
    :cond_12
    :goto_12
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setDualMonoMode(I)Z
    .registers 5
    .param p1, "dualMonoMode"    # I

    .line 1653
    invoke-static {p1}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1657
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_dual_mono_mode(I)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1654
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Dual Mono mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 4
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 4235
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4236
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_11

    .line 4239
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    .line 4240
    .local v0, "stringId":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setLogSessionId(Ljava/lang/String;)V

    .line 4241
    iput-object p1, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 4242
    return-void

    .line 4237
    .end local v0    # "stringId":Ljava/lang/String;
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLoopPoints(III)I
    .registers 6
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .line 2843
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_26

    .line 2844
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_26

    .line 2847
    :cond_11
    if-nez p3, :cond_14

    goto :goto_1f

    .line 2849
    :cond_14
    if-ltz p1, :cond_24

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_24

    if-ge p1, p2, :cond_24

    if-le p2, v0, :cond_1f

    goto :goto_24

    .line 2853
    :cond_1f
    :goto_1f
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    .line 2851
    :cond_24
    :goto_24
    const/4 v0, -0x2

    return v0

    .line 2845
    :cond_26
    :goto_26
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setNotificationMarkerPosition(I)I
    .registers 3
    .param p1, "markerInFrames"    # I

    .line 2760
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2761
    const/4 v0, -0x3

    return v0

    .line 2763
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public whitelist setOffloadDelayPadding(II)V
    .registers 5
    .param p1, "delayInFrames"    # I
    .param p2, "paddingInFrames"    # I

    .line 1423
    if-ltz p2, :cond_2c

    .line 1426
    if-ltz p1, :cond_24

    .line 1429
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_1c

    .line 1432
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_14

    .line 1435
    iput p1, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 1436
    iput p2, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 1437
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_set_delay_padding(II)V

    .line 1438
    return-void

    .line 1433
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal use of delay/padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative delay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1424
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative padding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOffloadEndOfStream()V
    .registers 4

    .line 1487
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_45

    .line 1490
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_3d

    .line 1493
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 1496
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1497
    :try_start_10
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 1500
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_32

    .line 1502
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1503
    :try_start_1c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 1505
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1506
    monitor-exit v1

    .line 1507
    return-void

    .line 1506
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v0

    .line 1498
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "EOS not supported without StreamEventCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    throw v1

    .line 1500
    .restart local p0    # "this":Landroid/media/AudioTrack;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v1

    .line 1494
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported if not playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1491
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native blacklist setParameters(Ljava/lang/String;)I
.end method

.method public whitelist setPlaybackHeadPosition(I)I
    .registers 4
    .param p1, "positionInFrames"    # I

    .line 2800
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_1f

    .line 2801
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_1f

    .line 2804
    :cond_11
    if-ltz p1, :cond_1d

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_18

    goto :goto_1d

    .line 2807
    :cond_18
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0

    .line 2805
    :cond_1d
    :goto_1d
    const/4 v0, -0x2

    return v0

    .line 2802
    :cond_1f
    :goto_1f
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 4
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 2743
    if-eqz p1, :cond_6

    .line 2746
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 2747
    return-void

    .line 2744
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 2595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 2596
    return-void
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2608
    if-eqz p1, :cond_a

    .line 2609
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_d

    .line 2611
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 2613
    :goto_d
    return-void
.end method

.method public whitelist setPlaybackRate(I)I
    .registers 4
    .param p1, "sampleRateInHz"    # I

    .line 2718
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 2719
    const/4 v0, -0x3

    return v0

    .line 2721
    :cond_7
    if-gtz p1, :cond_b

    .line 2722
    const/4 v0, -0x2

    return v0

    .line 2724
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPositionNotificationPeriod(I)I
    .registers 3
    .param p1, "periodInFrames"    # I

    .line 2774
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2775
    const/4 v0, -0x3

    return v0

    .line 2777
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 5
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 3693
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3694
    return v0

    .line 3696
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 3697
    .local v0, "preferredDeviceId":I
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 3698
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 3699
    monitor-enter p0

    .line 3700
    :try_start_18
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3701
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw v2

    .line 3703
    :cond_1f
    :goto_1f
    return v1
.end method

.method public whitelist setPresentation(Landroid/media/AudioPresentation;)I
    .registers 4
    .param p1, "presentation"    # Landroid/media/AudioPresentation;

    .line 2869
    if-eqz p1, :cond_f

    .line 2872
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    .line 2873
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v1

    .line 2872
    invoke-direct {p0, v0, v1}, Landroid/media/AudioTrack;->native_setPresentation(II)I

    move-result v0

    return v0

    .line 2870
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audio presentation is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStartThresholdInFrames(I)I
    .registers 5
    .param p1, "startThresholdInFrames"    # I

    .line 2255
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 2258
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_2f

    .line 2261
    if-lt p1, v1, :cond_10

    .line 2265
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setStartThresholdInFrames(I)I

    move-result v0

    return v0

    .line 2262
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startThresholdInFrames "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2259
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2256
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist setState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2885
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2886
    return-void
.end method

.method public whitelist setStereoVolume(FF)I
    .registers 4
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2646
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2647
    const/4 v0, -0x3

    return v0

    .line 2650
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 2651
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setVolume(F)I
    .registers 3
    .param p1, "gain"    # F

    .line 2678
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public whitelist stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2980
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 2985
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2986
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 2987
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    .line 2988
    iget-boolean v2, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1b

    .line 2989
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_2a

    .line 2991
    :cond_1b
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2992
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 2993
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2994
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2995
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2997
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2f

    .line 2998
    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    .line 2999
    return-void

    .line 2997
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 2981
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V
    .registers 7
    .param p1, "eventCallback"    # Landroid/media/AudioTrack$StreamEventCallback;

    .line 4071
    if-eqz p1, :cond_46

    .line 4074
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_3e

    .line 4077
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4078
    const/4 v1, 0x0

    .line 4079
    .local v1, "seciToRemove":Landroid/media/AudioTrack$StreamEventCbInfo;
    :try_start_a
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack$StreamEventCbInfo;

    .line 4080
    .local v3, "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    iget-object v4, v3, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-ne v4, p1, :cond_32

    .line 4082
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4083
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_30

    .line 4084
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    .line 4086
    :cond_30
    monitor-exit v0

    return-void

    .line 4088
    .end local v3    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    :cond_32
    goto :goto_10

    .line 4089
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StreamEventCallback was not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    .end local p1    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    throw v2

    .line 4090
    .end local v1    # "seciToRemove":Landroid/media/AudioTrack$StreamEventCbInfo;
    .restart local p0    # "this":Landroid/media/AudioTrack;
    .restart local p1    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_3b

    throw v1

    .line 4075
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4072
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;II)I
    .registers 14
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .line 3422
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const-string v1, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3423
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    const/4 v0, -0x3

    return v0

    .line 3427
    :cond_d
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_19

    if-eq p3, v2, :cond_19

    .line 3428
    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    return v0

    .line 3432
    :cond_19
    if-eqz p1, :cond_79

    if-ltz p2, :cond_79

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le p2, v3, :cond_24

    goto :goto_79

    .line 3437
    :cond_24
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    .line 3438
    return v1

    .line 3441
    :cond_2c
    const/4 v0, 0x0

    .line 3442
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 3443
    nop

    .line 3444
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_3e

    move v9, v2

    goto :goto_3f

    :cond_3e
    move v9, v1

    .line 3443
    :goto_3f
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I

    move-result v0

    goto :goto_61

    .line 3447
    :cond_47
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 3448
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5a

    move v8, v2

    goto :goto_5b

    :cond_5a
    move v8, v1

    .line 3447
    :goto_5b
    move-object v3, p0

    move v6, p2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    .line 3453
    :goto_61
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_6e

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6e

    if-lez v0, :cond_6e

    .line 3457
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 3460
    :cond_6e
    if-lez v0, :cond_78

    .line 3461
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3464
    :cond_78
    return v0

    .line 3433
    .end local v0    # "ret":I
    :cond_79
    :goto_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    return v0
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;IIJ)I
    .registers 12
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .line 3500
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3501
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    return v1

    .line 3505
    :cond_d
    const/4 v0, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_19

    if-eq p3, v3, :cond_19

    .line 3506
    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    return v0

    .line 3510
    :cond_19
    iget v4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v4, v3, :cond_23

    .line 3511
    const-string v0, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    return v1

    .line 3515
    :cond_23
    iget-object v1, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-nez v1, :cond_38

    .line 3516
    const-string v0, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 3520
    :cond_38
    if-eqz p1, :cond_ce

    if-ltz p2, :cond_ce

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_44

    goto/16 :goto_ce

    .line 3525
    :cond_44
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    .line 3526
    return v1

    .line 3530
    :cond_4c
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_65

    .line 3531
    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3532
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3533
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550002

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3536
    :cond_65
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v0, :cond_84

    .line 3537
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 3538
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 3539
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget v4, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 3540
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3541
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3545
    :cond_84
    const/4 v0, 0x0

    .line 3546
    .local v0, "ret":I
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b2

    .line 3547
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v3, v5, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 3548
    if-gez v0, :cond_a4

    .line 3549
    const-string v3, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3551
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3552
    return v0

    .line 3554
    :cond_a4
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_b2

    .line 3555
    const-string v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    return v1

    .line 3561
    :cond_b2
    iget v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3562
    .local v3, "sizeToWrite":I
    invoke-virtual {p0, p1, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 3563
    if-gez v0, :cond_c8

    .line 3564
    const-string v5, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3566
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3567
    return v0

    .line 3570
    :cond_c8
    iget v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3572
    return v0

    .line 3521
    .end local v0    # "ret":I
    .end local v3    # "sizeToWrite":I
    :cond_ce
    :goto_ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") value"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    return v0
.end method

.method public whitelist write([BII)I
    .registers 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 3088
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist write([BIII)I
    .registers 14
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .line 3136
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_4e

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    goto :goto_4e

    .line 3140
    :cond_a
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_18

    if-eq p4, v1, :cond_18

    .line 3141
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    return v0

    .line 3145
    :cond_18
    if-eqz p1, :cond_4d

    if-ltz p2, :cond_4d

    if-ltz p3, :cond_4d

    add-int v2, p2, p3

    if-ltz v2, :cond_4d

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_28

    goto :goto_4d

    .line 3151
    :cond_28
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_30

    .line 3152
    return v2

    .line 3155
    :cond_30
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_36

    move v8, v1

    goto :goto_37

    :cond_36
    move v8, v2

    :goto_37
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    .line 3158
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_4c

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    if-lez v0, :cond_4c

    .line 3162
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 3165
    :cond_4c
    return v0

    .line 3148
    .end local v0    # "ret":I
    :cond_4d
    :goto_4d
    return v0

    .line 3137
    :cond_4e
    :goto_4e
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist write([FIII)I
    .registers 14
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .line 3337
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3338
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    return v1

    .line 3342
    :cond_d
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_18

    .line 3343
    const-string v0, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    return v1

    .line 3347
    :cond_18
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_24

    if-eq p4, v1, :cond_24

    .line 3348
    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    return v0

    .line 3352
    :cond_24
    if-eqz p1, :cond_59

    if-ltz p2, :cond_59

    if-ltz p3, :cond_59

    add-int v3, p2, p3

    if-ltz v3, :cond_59

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_34

    goto :goto_59

    .line 3359
    :cond_34
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    .line 3360
    return v2

    .line 3363
    :cond_3c
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_42

    move v8, v1

    goto :goto_43

    :cond_42
    move v8, v2

    :goto_43
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v0

    .line 3366
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_58

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_58

    if-lez v0, :cond_58

    .line 3370
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 3373
    :cond_58
    return v0

    .line 3355
    .end local v0    # "ret":I
    :cond_59
    :goto_59
    const-string v1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    return v0
.end method

.method public whitelist write([SII)I
    .registers 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 3203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public whitelist write([SIII)I
    .registers 14
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .line 3249
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_52

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_52

    const/16 v1, 0x14

    if-le v0, v1, :cond_e

    goto :goto_52

    .line 3256
    :cond_e
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1c

    if-eq p4, v1, :cond_1c

    .line 3257
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    return v0

    .line 3261
    :cond_1c
    if-eqz p1, :cond_51

    if-ltz p2, :cond_51

    if-ltz p3, :cond_51

    add-int v2, p2, p3

    if-ltz v2, :cond_51

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2c

    goto :goto_51

    .line 3267
    :cond_2c
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_34

    .line 3268
    return v2

    .line 3271
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

    move-result v0

    .line 3274
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_50

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_50

    if-lez v0, :cond_50

    .line 3278
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 3281
    :cond_50
    return v0

    .line 3264
    .end local v0    # "ret":I
    :cond_51
    :goto_51
    return v0

    .line 3253
    :cond_52
    :goto_52
    const/4 v0, -0x3

    return v0
.end method
