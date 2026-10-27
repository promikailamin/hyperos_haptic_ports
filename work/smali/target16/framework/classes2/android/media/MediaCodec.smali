.class public final Landroid/media/MediaCodec;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$BufferMap;,
        Landroid/media/MediaCodec$EventHandler;,
        Landroid/media/MediaCodec$PersistentSurface;,
        Landroid/media/MediaCodec$InvalidBufferFlagsException;,
        Landroid/media/MediaCodec$IncompatibleWithBlockModelException;,
        Landroid/media/MediaCodec$CryptoException;,
        Landroid/media/MediaCodec$CryptoInfo;,
        Landroid/media/MediaCodec$QueueRequest;,
        Landroid/media/MediaCodec$BufferInfo;,
        Landroid/media/MediaCodec$OutputFrame;,
        Landroid/media/MediaCodec$Callback;,
        Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;,
        Landroid/media/MediaCodec$OnFrameRenderedListener;,
        Landroid/media/MediaCodec$ParameterDescriptor;,
        Landroid/media/MediaCodec$MetricsConstants;,
        Landroid/media/MediaCodec$MediaImage;,
        Landroid/media/MediaCodec$VideoScalingMode;,
        Landroid/media/MediaCodec$OutputBufferInfo;,
        Landroid/media/MediaCodec$LinearBlock;,
        Landroid/media/MediaCodec$CodecException;,
        Landroid/media/MediaCodec$InstanceResourceInfo;,
        Landroid/media/MediaCodec$GlobalResourceInfo;,
        Landroid/media/MediaCodec$ConfigureFlag;,
        Landroid/media/MediaCodec$BufferFlag;
    }
.end annotation


# static fields
.field public static final whitelist BUFFER_FLAG_CODEC_CONFIG:I = 0x2

.field public static final whitelist BUFFER_FLAG_DECODE_ONLY:I = 0x20

.field public static final whitelist BUFFER_FLAG_END_OF_STREAM:I = 0x4

.field public static final whitelist BUFFER_FLAG_KEY_FRAME:I = 0x1

.field public static final greylist-max-o BUFFER_FLAG_MUXER_DATA:I = 0x10

.field public static final whitelist BUFFER_FLAG_PARTIAL_FRAME:I = 0x8

.field public static final whitelist BUFFER_FLAG_SYNC_FRAME:I = 0x1

.field private static final blacklist BUFFER_MODE_BLOCK:I = 0x1

.field private static final blacklist BUFFER_MODE_INVALID:I = -0x1

.field private static final blacklist BUFFER_MODE_LEGACY:I = 0x0

.field private static final blacklist CB_CRYPTO_ERROR:I = 0x6

.field private static final greylist-max-o CB_ERROR:I = 0x3

.field private static final greylist-max-o CB_INPUT_AVAILABLE:I = 0x1

.field private static final blacklist CB_LARGE_FRAME_OUTPUT_AVAILABLE:I = 0x7

.field private static final blacklist CB_METRICS_FLUSHED:I = 0x8

.field private static final greylist-max-o CB_OUTPUT_AVAILABLE:I = 0x2

.field private static final greylist-max-o CB_OUTPUT_FORMAT_CHANGE:I = 0x4

.field private static final blacklist CB_REQUIRED_RESOURCES_CHANGE:I = 0x9

.field public static final whitelist CONFIGURE_FLAG_DETACHED_SURFACE:I = 0x8

.field public static final whitelist CONFIGURE_FLAG_ENCODE:I = 0x1

.field public static final whitelist CONFIGURE_FLAG_USE_BLOCK_MODEL:I = 0x2

.field public static final whitelist CONFIGURE_FLAG_USE_CRYPTO_ASYNC:I = 0x4

.field public static final whitelist CRYPTO_MODE_AES_CBC:I = 0x2

.field public static final whitelist CRYPTO_MODE_AES_CTR:I = 0x1

.field public static final whitelist CRYPTO_MODE_UNENCRYPTED:I = 0x0

.field private static final blacklist EOS_AND_DECODE_ONLY_ERROR_MESSAGE:Ljava/lang/String; = "An input buffer cannot have both BUFFER_FLAG_END_OF_STREAM and BUFFER_FLAG_DECODE_ONLY flags"

.field private static final greylist-max-o EVENT_CALLBACK:I = 0x1

.field private static final blacklist EVENT_FIRST_TUNNEL_FRAME_READY:I = 0x4

.field private static final greylist-max-o EVENT_FRAME_RENDERED:I = 0x3

.field private static final greylist-max-o EVENT_SET_CALLBACK:I = 0x2

.field public static final whitelist INFO_OUTPUT_BUFFERS_CHANGED:I = -0x3

.field public static final whitelist INFO_OUTPUT_FORMAT_CHANGED:I = -0x2

.field public static final whitelist INFO_TRY_AGAIN_LATER:I = -0x1

.field public static final whitelist PARAMETER_KEY_HDR10_PLUS_INFO:Ljava/lang/String; = "hdr10-plus-info"

.field public static final whitelist PARAMETER_KEY_LOW_LATENCY:Ljava/lang/String; = "low-latency"

.field public static final whitelist PARAMETER_KEY_OFFSET_TIME:Ljava/lang/String; = "time-offset-us"

.field private static final blacklist PARAMETER_KEY_PICTURE_PROFILE_HANDLE:Ljava/lang/String; = "picture-profile-handle"

.field public static final whitelist PARAMETER_KEY_QP_OFFSET_MAP:Ljava/lang/String; = "qp-offset-map"

.field public static final whitelist PARAMETER_KEY_QP_OFFSET_RECTS:Ljava/lang/String; = "qp-offset-rects"

.field public static final whitelist PARAMETER_KEY_REQUEST_SYNC_FRAME:Ljava/lang/String; = "request-sync"

.field public static final whitelist PARAMETER_KEY_SUSPEND:Ljava/lang/String; = "drop-input-frames"

.field public static final whitelist PARAMETER_KEY_SUSPEND_TIME:Ljava/lang/String; = "drop-start-time-us"

.field public static final whitelist PARAMETER_KEY_TUNNEL_PEEK:Ljava/lang/String; = "tunnel-peek"

.field public static final whitelist PARAMETER_KEY_VIDEO_BITRATE:Ljava/lang/String; = "video-bitrate"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaCodec"

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final greylist-max-o mBufferLock:Ljava/lang/Object;

.field private blacklist mBufferMode:I

.field private greylist-max-o mCachedInputBuffers:[Ljava/nio/ByteBuffer;

.field private greylist-max-o mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

.field private greylist-max-o mCallback:Landroid/media/MediaCodec$Callback;

.field private greylist-max-o mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mCodecInfo:Landroid/media/MediaCodecInfo;

.field private final greylist-max-o mCodecInfoLock:Ljava/lang/Object;

.field private blacklist mCrypto:Landroid/media/MediaCrypto;

.field private final greylist-max-o mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final greylist-max-o mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final greylist-max-o mDequeuedOutputInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEventHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mHasSurface:Z

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private blacklist mNameAtCreation:Ljava/lang/String;

.field private greylist-max-p mNativeContext:J

.field private final blacklist mNativeContextLock:Ljava/util/concurrent/locks/Lock;

.field private blacklist mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

.field private blacklist mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

.field private greylist-max-o mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

.field private final blacklist mOutputFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$OutputFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQueueRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$QueueRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mValidInputIndices:Ljava/util/BitSet;

.field private blacklist mValidOutputIndices:Ljava/util/BitSet;


# direct methods
.method public static synthetic blacklist $r8$lambda$NmGWc2g-t7Mb5HMMclT2SYaPFWg(Landroid/media/MediaCodec;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->lambda$setCallback$8()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aWebg36Lmf8ipkB1sR8VC8o9VuM(Landroid/media/MediaCodec;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->lambda$setCallback$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ehc_5VQ2FrSPNRMaG6ycYn4dAfQ(Landroid/media/MediaCodec;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->lambda$setCallback$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jenittK9gOThgOR4pmt8B_RJicY(Landroid/media/MediaCodec;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->lambda$setCallback$9()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCachedInputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCachedOutputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnFirstTunnelFrameReadyListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnFrameRenderedListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_queueHardwareBuffer(Landroid/media/MediaCodec;ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/media/MediaCodec;->native_queueHardwareBuffer(ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_queueLinearBlock(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$LinearBlock;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueLinearBlock(ILandroid/media/MediaCodec$LinearBlock;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateInputByteBufferLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->validateInputByteBufferLocked([Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateOutputByteBufferLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->validateOutputByteBufferLocked([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateOutputByteBuffersLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILjava/util/ArrayDeque;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->validateOutputByteBuffersLocked([Ljava/nio/ByteBuffer;ILjava/util/ArrayDeque;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_closeMediaImage(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaCodec;->native_closeMediaImage(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_releasePersistentInputSurface(Landroid/view/Surface;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaCodec;->native_releasePersistentInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6098
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6099
    invoke-static {}, Landroid/media/MediaCodec;->native_init()V

    .line 6100
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;ZZ)V
    .registers 10

    .line 2170
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZII)V

    .line 2171
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ZZII)V
    .registers 10

    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1829
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    .line 1831
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mCodecInfoLock:Ljava/lang/Object;

    .line 2073
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    .line 2458
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    .line 4195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 4541
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    .line 4542
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    .line 4544
    new-instance v0, Landroid/media/MediaCodec$BufferMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec-IA;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    .line 4545
    new-instance v0, Landroid/media/MediaCodec$BufferMap;

    invoke-direct {v0, v1}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec-IA;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    .line 4546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    .line 5064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    .line 6102
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/MediaCodec;->mNativeContext:J

    .line 6104
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    .line 2176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 2177
    new-instance v2, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_72

    .line 2178
    :cond_62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 2179
    new-instance v2, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_72

    .line 2181
    :cond_70
    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    .line 2183
    :goto_72
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    .line 2184
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v0, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    .line 2185
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    .line 2187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    .line 2190
    if-eqz p2, :cond_88

    goto :goto_89

    :cond_88
    move-object v1, p1

    :goto_89
    iput-object v1, p0, Landroid/media/MediaCodec;->mNameAtCreation:Ljava/lang/String;

    .line 2192
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaCodec;->native_setup(Ljava/lang/String;ZZII)V

    .line 2193
    return-void
.end method

.method static blacklist GetFlag(Ljava/util/function/Supplier;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2061
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;Z)Z

    move-result p0

    return p0
.end method

.method static blacklist GetFlag(Ljava/util/function/Supplier;Z)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 2067
    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    .line 2068
    :catch_b
    move-exception p0

    .line 2069
    return p1
.end method

.method private blacklist cacheBuffersLocked(Z)V
    .registers 9

    .line 4674
    nop

    .line 4676
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getBuffers(Z)[Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_5} :catch_b

    .line 4677
    :try_start_5
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffersLocked([Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_8} :catch_9

    .line 4680
    goto :goto_d

    .line 4678
    :catch_9
    move-exception v1

    goto :goto_d

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    .line 4681
    :goto_d
    if-eqz v0, :cond_4d

    .line 4682
    if-eqz p1, :cond_14

    iget-object v1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    goto :goto_16

    :cond_14
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    .line 4683
    :goto_16
    const/4 v2, 0x0

    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_4a

    .line 4684
    aget-object v3, v0, v2

    .line 4685
    if-eqz v3, :cond_47

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_25

    .line 4686
    goto :goto_47

    .line 4688
    :cond_25
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4689
    if-nez p1, :cond_47

    .line 4690
    iget-object v4, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    .line 4691
    if-eqz v4, :cond_47

    .line 4692
    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 4683
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 4696
    :cond_4a
    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 4698
    :cond_4d
    if-eqz p1, :cond_52

    .line 4699
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_54

    .line 4701
    :cond_52
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 4703
    :goto_54
    return-void
.end method

.method private greylist-max-o configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V
    .registers 16

    .line 2464
    if-eqz p3, :cond_d

    if-nez p4, :cond_5

    goto :goto_d

    .line 2465
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t use crypto and descrambler together!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2469
    :cond_d
    :goto_d
    new-instance v0, Landroid/media/MediaCodec$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    .line 2470
    new-instance v1, Landroid/media/MediaCodec$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/media/MediaCodec$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 2473
    if-nez p2, :cond_34

    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_34

    if-eqz v0, :cond_2b

    goto :goto_34

    .line 2474
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Codec does not support detached surface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2478
    :cond_33
    move v0, v2

    .line 2481
    :cond_34
    :goto_34
    nop

    .line 2482
    nop

    .line 2484
    if-eqz p1, :cond_15b

    .line 2485
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 2486
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2487
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 2489
    nop

    .line 2490
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v2

    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_158

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2491
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "audio-session-id"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 2492
    nop

    .line 2494
    :try_start_6d
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_88

    .line 2498
    nop

    .line 2499
    const-string v6, "audio-hw-sync"

    aput-object v6, v1, v4

    .line 2500
    invoke-static {v5}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2501
    goto/16 :goto_154

    .line 2496
    :catch_88
    move-exception v0

    .line 2497
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong Session ID Parameter!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2501
    :cond_91
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->applyPictureProfiles()Z

    move-result v6

    if-eqz v6, :cond_f1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 2502
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "picture-profile-instance"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 2503
    nop

    .line 2505
    :try_start_ac
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/quality/PictureProfile;
    :try_end_b2
    .catch Ljava/lang/ClassCastException; {:try_start_ac .. :try_end_b2} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b2} :catch_d5

    .line 2513
    nop

    .line 2514
    if-eqz v5, :cond_cd

    .line 2518
    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v5

    .line 2519
    sget-object v6, Landroid/media/quality/PictureProfileHandle;->NONE:Landroid/media/quality/PictureProfileHandle;

    if-eq v5, v6, :cond_cb

    .line 2520
    const-string v6, "picture-profile-handle"

    aput-object v6, v1, v4

    .line 2521
    invoke-virtual {v5}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2523
    :cond_cb
    goto/16 :goto_154

    .line 2515
    :cond_cd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Picture profile instance parameter is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2509
    :catch_d5
    move-exception v0

    move-object p1, v0

    .line 2510
    const-string p2, "MediaCodec"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected exception when casting the instance parameter to PictureProfile!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2506
    :catch_e8
    move-exception v0

    .line 2507
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot cast the instance parameter to PictureProfile!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2523
    :cond_f1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->applyPictureProfiles()Z

    move-result v6

    if-eqz v6, :cond_146

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v6

    if-eqz v6, :cond_146

    .line 2524
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "picture-profile-id"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_146

    .line 2525
    nop

    .line 2527
    :try_start_10c
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_112
    .catch Ljava/lang/ClassCastException; {:try_start_10c .. :try_end_112} :catch_13d
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_112} :catch_12a

    .line 2535
    nop

    .line 2536
    if-eqz v5, :cond_122

    .line 2540
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_121

    .line 2541
    const-string v6, "picture-profile-id"

    aput-object v6, v1, v4

    .line 2542
    aput-object v5, v3, v4

    .line 2544
    :cond_121
    goto :goto_154

    .line 2537
    :cond_122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "KEY_PICTURE_PROFILE_ID parameter is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2531
    :catch_12a
    move-exception v0

    move-object p1, v0

    .line 2532
    const-string p2, "MediaCodec"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected exception when casting the KEY_PICTURE_PROFILE_ID parameter!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2528
    :catch_13d
    move-exception v0

    .line 2529
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot cast the KEY_PICTURE_PROFILE_ID parameter to String!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2545
    :cond_146
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v4

    .line 2546
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2548
    :goto_154
    add-int/lit8 v4, v4, 0x1

    .line 2549
    goto/16 :goto_52

    .line 2490
    :cond_158
    move-object v4, v1

    move-object v5, v3

    goto :goto_15e

    .line 2484
    :cond_15b
    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    .line 2552
    :goto_15e
    const/4 p1, 0x1

    if-eqz p2, :cond_163

    move v1, p1

    goto :goto_164

    :cond_163
    move v1, v2

    :goto_164
    iput-boolean v1, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    .line 2553
    iput-object p3, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2554
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2555
    and-int/lit8 v3, p5, 0x2

    if-eqz v3, :cond_172

    .line 2556
    :try_start_16f
    iput p1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    goto :goto_174

    .line 2558
    :cond_172
    iput v2, p0, Landroid/media/MediaCodec;->mBufferMode:I

    .line 2560
    :goto_174
    monitor-exit v1
    :try_end_175
    .catchall {:try_start_16f .. :try_end_175} :catchall_188

    .line 2562
    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/media/MediaCodec;->native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2564
    if-eqz v0, :cond_187

    .line 2567
    if-nez v6, :cond_187

    and-int/lit8 p2, v9, 0x8

    if-eqz p2, :cond_187

    .line 2568
    iput-boolean p1, v3, Landroid/media/MediaCodec;->mHasSurface:Z

    .line 2571
    :cond_187
    return-void

    .line 2560
    :catchall_188
    move-exception v0

    move-object p1, v0

    :try_start_18a
    monitor-exit v1
    :try_end_18b
    .catchall {:try_start_18a .. :try_end_18b} :catchall_188

    throw p1
.end method

.method public static whitelist createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2140
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createByCodecNameForClient(Ljava/lang/String;II)Landroid/media/MediaCodec;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2165
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZII)V

    return-object v0
.end method

.method public static whitelist createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2107
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2125
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createPersistentInputSurface()Landroid/view/Surface;
    .registers 1

    .line 2707
    invoke-static {}, Landroid/media/MediaCodec;->native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o freeAllTrackedBuffers()V
    .registers 3

    .line 4659
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4660
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->freeByteBuffersLocked([Ljava/nio/ByteBuffer;)V

    .line 4661
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->freeByteBuffersLocked([Ljava/nio/ByteBuffer;)V

    .line 4662
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    .line 4663
    iput-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 4664
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 4665
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 4666
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 4667
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 4668
    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4669
    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4670
    monitor-exit v0

    .line 4671
    return-void

    .line 4670
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private blacklist freeByteBufferLocked(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 4644
    if-eqz p1, :cond_5

    .line 4646
    invoke-static {p1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 4648
    :cond_5
    return-void
.end method

.method private blacklist freeByteBuffersLocked([Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 4651
    if-eqz p1, :cond_e

    .line 4652
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 4653
    invoke-direct {p0, v2}, Landroid/media/MediaCodec;->freeByteBufferLocked(Ljava/nio/ByteBuffer;)V

    .line 4652
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4656
    :cond_e
    return-void
.end method

.method private final native greylist-max-o getBuffer(ZI)Ljava/nio/ByteBuffer;
.end method

.method private final native greylist getBuffers(Z)[Ljava/nio/ByteBuffer;
.end method

.method private greylist-max-o getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;
    .registers 4

    .line 5882
    if-nez p1, :cond_5

    .line 5883
    iget-object p1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    return-object p1

    .line 5885
    :cond_5
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 5886
    invoke-virtual {p2}, Landroid/media/MediaCodec$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p1, :cond_10

    .line 5887
    return-object p2

    .line 5889
    :cond_10
    new-instance p2, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p2, p0, p0, p1}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    return-object p2
.end method

.method private final native greylist-max-o getFormatNative(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public static blacklist getGloballyAvailableResources()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodec$GlobalResourceInfo;",
            ">;"
        }
    .end annotation

    .line 2383
    invoke-static {}, Landroid/media/MediaCodec;->native_getGloballyAvailableResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final native greylist-max-o getImage(ZI)Landroid/media/Image;
.end method

.method private final native greylist-max-o getOutputFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native greylist-max-o getOwnCodecInfo()Landroid/media/MediaCodecInfo;
.end method

.method private blacklist invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V
    .registers 4

    .line 4552
    if-nez p1, :cond_f

    .line 4553
    if-ltz p2, :cond_1c

    .line 4554
    if-eqz p3, :cond_9

    iget-object p1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    goto :goto_b

    :cond_9
    iget-object p1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    .line 4555
    :goto_b
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->clear(I)V

    .line 4556
    goto :goto_1c

    .line 4557
    :cond_f
    if-ltz p2, :cond_1c

    array-length p3, p1

    if-ge p2, p3, :cond_1c

    .line 4558
    aget-object p1, p1, p2

    .line 4559
    if-eqz p1, :cond_1c

    .line 4560
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4563
    :cond_1c
    :goto_1c
    return-void
.end method

.method private blacklist invalidateByteBuffersLocked([Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 4634
    if-eqz p1, :cond_11

    .line 4635
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_11

    aget-object v3, p1, v2

    .line 4636
    if-eqz v3, :cond_e

    .line 4637
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4635
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4641
    :cond_11
    return-void
.end method

.method static synthetic blacklist lambda$configure$0()Ljava/lang/Boolean;
    .registers 1

    .line 2469
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nullOutputSurfaceSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$configure$1()Ljava/lang/Boolean;
    .registers 1

    .line 2470
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nullOutputSurface()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$detachOutputSurface$2()Ljava/lang/Boolean;
    .registers 1

    .line 2686
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->nullOutputSurfaceSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setCallback$5()Ljava/lang/Boolean;
    .registers 1

    .line 5550
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->setCallbackStall()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setCallback$6()V
    .registers 3

    .line 5562
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5563
    return-void
.end method

.method private synthetic blacklist lambda$setCallback$7()V
    .registers 3

    .line 5567
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5568
    return-void
.end method

.method private synthetic blacklist lambda$setCallback$8()V
    .registers 3

    .line 5581
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5582
    return-void
.end method

.method private synthetic blacklist lambda$setCallback$9()V
    .registers 3

    .line 5586
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5587
    return-void
.end method

.method static synthetic blacklist lambda$validateOutputByteBuffersLocked$3(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$BufferInfo;)I
    .registers 2

    .line 4600
    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$validateOutputByteBuffersLocked$4(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$BufferInfo;)I
    .registers 2

    .line 4602
    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private final blacklist lockAndGetContext()J
    .registers 3

    .line 6107
    iget-object v0, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6108
    iget-wide v0, p0, Landroid/media/MediaCodec;->mNativeContext:J

    return-wide v0
.end method

.method private blacklist logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 5522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 5524
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exit : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5525
    return-void
.end method

.method public static whitelist mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;
    .registers 1

    .line 3783
    invoke-static {p0}, Landroid/media/MediaCodec;->native_mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;

    move-result-object p0

    return-object p0
.end method

.method private static native blacklist native_closeMediaImage(J)V
.end method

.method private final native greylist-max-o native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V
.end method

.method private static final native greylist-max-o native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;
.end method

.method private final native greylist-max-o native_dequeueInputBuffer(J)I
.end method

.method private final native greylist-max-o native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
.end method

.method private native blacklist native_detachOutputSurface()V
.end method

.method private native blacklist native_enableOnFirstTunnelFrameReadyListener(Z)V
.end method

.method private native greylist-max-o native_enableOnFrameRenderedListener(Z)V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_flush()V
.end method

.method private static native blacklist native_getGloballyAvailableResources()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodec$GlobalResourceInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getOutputFrame(Landroid/media/MediaCodec$OutputFrame;I)V
.end method

.method private native blacklist native_getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;
.end method

.method private native blacklist native_getRequiredResources()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodec$InstanceResourceInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist native_getSupportedVendorParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private static native blacklist native_mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;
.end method

.method private native blacklist native_queueHardwareBuffer(ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/HardwareBuffer;",
            "JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native greylist-max-o native_queueInputBuffer(IIIJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native blacklist native_queueInputBuffers(I[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;,
            Landroid/media/MediaCodec$CodecException;
        }
    .end annotation
.end method

.method private native blacklist native_queueLinearBlock(ILandroid/media/MediaCodec$LinearBlock;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/media/MediaCodec$LinearBlock;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native greylist-max-o native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native blacklist native_queueSecureInputBuffers(I[Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;,
            Landroid/media/MediaCodec$CodecException;
        }
    .end annotation
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private static final native greylist-max-o native_releasePersistentInputSurface(Landroid/view/Surface;)V
.end method

.method private final native greylist-max-o native_reset()V
.end method

.method private native blacklist native_setAudioPresentation(II)V
.end method

.method private final native greylist-max-o native_setCallback(Landroid/media/MediaCodec$Callback;)V
.end method

.method private final native greylist-max-o native_setInputSurface(Landroid/view/Surface;)V
.end method

.method private native greylist-max-o native_setSurface(Landroid/view/Surface;)V
.end method

.method private final native blacklist native_setup(Ljava/lang/String;ZZII)V
.end method

.method private final native greylist-max-o native_start()V
.end method

.method private final native greylist-max-o native_stop()V
.end method

.method private native blacklist native_subscribeToVendorParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native blacklist native_unsubscribeFromVendorParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private greylist-max-o postEventFromNative(IIILjava/lang/Object;)V
    .registers 8

    .line 6034
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6035
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    .line 6036
    const/4 v2, 0x1

    if-ne p1, v2, :cond_b

    .line 6037
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_16

    .line 6038
    :cond_b
    const/4 v2, 0x4

    if-ne p1, v2, :cond_11

    .line 6039
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_16

    .line 6040
    :cond_11
    const/4 v2, 0x3

    if-ne p1, v2, :cond_16

    .line 6041
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    .line 6043
    :cond_16
    :goto_16
    if-eqz v1, :cond_1f

    .line 6044
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6045
    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6047
    :cond_1f
    monitor-exit v0

    .line 6048
    return-void

    .line 6047
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private final native greylist releaseOutputBuffer(IZZJ)V
.end method

.method private blacklist releaseOutputBufferInternal(IZZJ)V
    .registers 9

    .line 4383
    nop

    .line 4384
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4385
    :try_start_4
    iget v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5e

    .line 4399
    move-object p1, p0

    new-instance p2, Ljava/lang/IllegalStateException;

    goto :goto_40

    .line 4394
    :pswitch_e
    iget-object v0, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$OutputFrame;

    .line 4395
    invoke-virtual {v0, v2}, Landroid/media/MediaCodec$OutputFrame;->setAccessible(Z)V

    .line 4396
    invoke-virtual {v0}, Landroid/media/MediaCodec$OutputFrame;->clear()V

    .line 4397
    goto :goto_3b

    .line 4387
    :pswitch_1d
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v2}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4388
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 4389
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3b

    .line 4390
    :cond_2f
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    .line 4402
    :cond_3b
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_59

    .line 4403
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    .line 4405
    return-void

    .line 4399
    :goto_40
    :try_start_40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unrecognized buffer mode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Landroid/media/MediaCodec;->mBufferMode:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4402
    :catchall_59
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_59

    throw p1

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_e
    .end packed-switch
.end method

.method private blacklist revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V
    .registers 5

    .line 4582
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4583
    if-nez p1, :cond_12

    .line 4584
    if-ltz p2, :cond_1f

    .line 4585
    if-eqz p3, :cond_c

    :try_start_9
    iget-object p1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    goto :goto_e

    :cond_c
    iget-object p1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    .line 4586
    :goto_e
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    .line 4587
    goto :goto_1f

    .line 4588
    :cond_12
    if-ltz p2, :cond_1f

    array-length p3, p1

    if-ge p2, p3, :cond_1f

    .line 4589
    aget-object p1, p1, p2

    .line 4590
    if-eqz p1, :cond_1f

    .line 4591
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4594
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 4595
    return-void

    .line 4594
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private final blacklist setAndUnlockContext(J)V
    .registers 3

    .line 6112
    iput-wide p1, p0, Landroid/media/MediaCodec;->mNativeContext:J

    .line 6113
    iget-object p1, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6114
    return-void
.end method

.method private final native greylist setParameters([Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method private blacklist validateInputByteBufferLocked([Ljava/nio/ByteBuffer;I)V
    .registers 4

    .line 4567
    if-nez p1, :cond_a

    .line 4568
    if-ltz p2, :cond_1a

    .line 4569
    iget-object p1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1a

    .line 4571
    :cond_a
    if-ltz p2, :cond_1a

    array-length v0, p1

    if-ge p2, v0, :cond_1a

    .line 4572
    aget-object p1, p1, p2

    .line 4573
    if-eqz p1, :cond_1a

    .line 4574
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4575
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4578
    :cond_1a
    :goto_1a
    return-void
.end method

.method private blacklist validateOutputByteBufferLocked([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    .line 4620
    if-nez p1, :cond_a

    .line 4621
    if-ltz p2, :cond_25

    .line 4622
    iget-object p1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_25

    .line 4624
    :cond_a
    if-ltz p2, :cond_25

    array-length v0, p1

    if-ge p2, v0, :cond_25

    .line 4625
    aget-object p1, p1, p2

    .line 4626
    if-eqz p1, :cond_25

    .line 4627
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4628
    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 4631
    :cond_25
    :goto_25
    return-void
.end method

.method private blacklist validateOutputByteBuffersLocked([Ljava/nio/ByteBuffer;ILjava/util/ArrayDeque;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)V"
        }
    .end annotation

    .line 4599
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodec$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaCodec$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    .line 4601
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Landroid/media/MediaCodec$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaCodec$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p3

    .line 4603
    if-nez p1, :cond_24

    .line 4604
    if-ltz p2, :cond_5c

    .line 4605
    iget-object p1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_5c

    .line 4607
    :cond_24
    if-ltz p2, :cond_5c

    array-length v1, p1

    if-ge p2, v1, :cond_5c

    .line 4608
    aget-object p1, p1, p2

    .line 4609
    if-eqz p1, :cond_5c

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_5c

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 4610
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4611
    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4612
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4616
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public whitelist configure(Landroid/media/MediaFormat;Landroid/view/Surface;ILandroid/media/MediaDescrambler;)V
    .registers 11

    .line 2451
    nop

    .line 2452
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Landroid/media/MediaDescrambler;->getBinder()Landroid/os/IHwBinder;

    move-result-object p4

    goto :goto_9

    :cond_8
    const/4 p4, 0x0

    :goto_9
    move-object v4, p4

    .line 2451
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2453
    return-void
.end method

.method public whitelist configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .registers 11

    .line 2422
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2423
    return-void
.end method

.method public final native whitelist createInputSurface()Landroid/view/Surface;
.end method

.method public final whitelist dequeueInputBuffer(J)I
    .registers 8

    .line 3594
    const-string v0, "MediaCodec::dequeueInputBuffer#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3595
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3596
    :try_start_a
    iget v3, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    .line 3601
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2f

    .line 3602
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->native_dequeueInputBuffer(J)I

    move-result p1

    .line 3603
    if-ltz p1, :cond_23

    .line 3604
    iget-object p2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3605
    :try_start_19
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->validateInputByteBufferLocked([Ljava/nio/ByteBuffer;I)V

    .line 3606
    monitor-exit p2

    goto :goto_23

    :catchall_20
    move-exception p1

    monitor-exit p2
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw p1

    .line 3608
    :cond_23
    :goto_23
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3609
    return p1

    .line 3597
    :cond_27
    :try_start_27
    new-instance p1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string p2, "dequeueInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use MediaCodec.Callback objectes to get input buffer slots."

    invoke-direct {p1, p0, p2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 3601
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final whitelist dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    .registers 7

    .line 4280
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4281
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    .line 4286
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_42

    .line 4287
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p2

    .line 4288
    iget-object p3, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter p3

    .line 4289
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1a

    .line 4290
    const/4 p1, 0x0

    :try_start_14
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->cacheBuffersLocked(Z)V

    goto :goto_36

    .line 4297
    :catchall_18
    move-exception p1

    goto :goto_38

    .line 4291
    :cond_1a
    if-ltz p2, :cond_36

    .line 4292
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2, p1}, Landroid/media/MediaCodec;->validateOutputByteBufferLocked([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 4293
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_36

    .line 4294
    :cond_29
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaCodec$BufferInfo;->dup()Landroid/media/MediaCodec$BufferInfo;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4297
    :cond_36
    :goto_36
    monitor-exit p3

    .line 4298
    return p2

    .line 4297
    :goto_38
    monitor-exit p3
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_18

    throw p1

    .line 4282
    :cond_3a
    :try_start_3a
    new-instance p1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string p2, "dequeueOutputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use MediaCodec.Callback objects to get output buffer slots."

    invoke-direct {p1, p0, p2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 4286
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw p1
.end method

.method public whitelist detachOutputSurface()V
    .registers 3

    .line 2679
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v0, :cond_1b

    .line 2686
    new-instance v0, Landroid/media/MediaCodec$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2687
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_detachOutputSurface()V

    .line 2691
    return-void

    .line 2689
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec does not support detaching output surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2680
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec was not configured for an output surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 2199
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_finalize()V

    .line 2200
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2201
    return-void
.end method

.method public final whitelist flush()V
    .registers 3

    .line 2835
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2836
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->invalidateByteBuffersLocked([Ljava/nio/ByteBuffer;)V

    .line 2837
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->invalidateByteBuffersLocked([Ljava/nio/ByteBuffer;)V

    .line 2838
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2839
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2840
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 2841
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 2842
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    .line 2843
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_flush()V

    .line 2844
    return-void

    .line 2842
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final native whitelist getCanonicalName()Ljava/lang/String;
.end method

.method public whitelist getCodecInfo()Landroid/media/MediaCodecInfo;
    .registers 4

    .line 6063
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6064
    iget-object v1, p0, Landroid/media/MediaCodec;->mCodecInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6065
    :try_start_7
    iget-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v2, :cond_1b

    .line 6068
    invoke-direct {p0}, Landroid/media/MediaCodec;->getOwnCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 6069
    iget-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v2, :cond_1b

    .line 6070
    invoke-static {v0}, Landroid/media/MediaCodecList;->getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 6073
    :cond_1b
    iget-object v0, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    monitor-exit v1

    return-object v0

    .line 6074
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public whitelist getInputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 6

    .line 4804
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4805
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    .line 4811
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    .line 4812
    invoke-direct {p0, v2, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4813
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4814
    :try_start_10
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v2}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4815
    iget-object v2, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v2, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V

    .line 4816
    monitor-exit v1

    .line 4817
    return-object v0

    .line 4816
    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw p1

    .line 4806
    :cond_1f
    :try_start_1f
    new-instance p1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v1, "getInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {p1, p0, v1}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 4811
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw p1
.end method

.method public whitelist getInputBuffers()[Ljava/nio/ByteBuffer;
    .registers 4

    .line 4725
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4726
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    .line 4732
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v1, :cond_f

    .line 4733
    invoke-direct {p0, v2}, Landroid/media/MediaCodec;->cacheBuffersLocked(Z)V

    .line 4735
    :cond_f
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_17

    .line 4739
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    .line 4736
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 4727
    :cond_1d
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getInputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw v1

    .line 4740
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public final whitelist getInputFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 4449
    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getInputImage(I)Landroid/media/Image;
    .registers 6

    .line 4841
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4842
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    .line 4848
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    .line 4849
    invoke-direct {p0, v2, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v0

    .line 4850
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4851
    :try_start_10
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v2}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4852
    iget-object v2, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v2, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V

    .line 4853
    monitor-exit v1

    .line 4854
    return-object v0

    .line 4853
    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw p1

    .line 4843
    :cond_1f
    :try_start_1f
    new-instance p1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v1, "getInputImage() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {p1, p0, v1}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 4848
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw p1
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 5211
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 5212
    return-object v0
.end method

.method public final whitelist getName()Ljava/lang/String;
    .registers 3

    .line 5175
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 5176
    iget-object v1, p0, Landroid/media/MediaCodec;->mNameAtCreation:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v0, p0, Landroid/media/MediaCodec;->mNameAtCreation:Ljava/lang/String;

    :cond_a
    return-object v0
.end method

.method public whitelist getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 6

    .line 4878
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4879
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    .line 4884
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    .line 4885
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4886
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4887
    :try_start_11
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v0}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4888
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V

    .line 4889
    monitor-exit v2

    .line 4890
    return-object v1

    .line 4889
    :catchall_1d
    move-exception p1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw p1

    .line 4880
    :cond_20
    :try_start_20
    new-instance p1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v1, "getOutputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame() to get output frames."

    invoke-direct {p1, p0, v1}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 4884
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public whitelist getOutputBuffers()[Ljava/nio/ByteBuffer;
    .registers 4

    .line 4767
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4768
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    .line 4773
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v1, :cond_10

    .line 4774
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->cacheBuffersLocked(Z)V

    .line 4776
    :cond_10
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_18

    .line 4780
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    .line 4777
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 4769
    :cond_1e
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getOutputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame to get output frames."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw v1

    .line 4781
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final whitelist getOutputFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 4434
    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final whitelist getOutputFormat(I)Landroid/media/MediaFormat;
    .registers 3

    .line 4463
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getOutputFormatNative(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getOutputFrame(I)Landroid/media/MediaCodec$OutputFrame;
    .registers 7

    .line 5077
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5078
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8c

    .line 5081
    if-ltz p1, :cond_62

    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_62

    .line 5085
    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$OutputFrame;

    .line 5086
    if-eqz v1, :cond_49

    .line 5089
    invoke-virtual {v1}, Landroid/media/MediaCodec$OutputFrame;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 5093
    invoke-virtual {v1}, Landroid/media/MediaCodec$OutputFrame;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 5094
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->native_getOutputFrame(Landroid/media/MediaCodec$OutputFrame;I)V

    .line 5095
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$OutputFrame;->setLoaded(Z)V

    .line 5097
    :cond_2e
    monitor-exit v0

    return-object v1

    .line 5090
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The output frame is stale at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5087
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unavailable index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5082
    :cond_62
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected range of index: [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 5083
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]; actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5079
    :cond_8c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The codec is not configured for block model"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5098
    :catchall_94
    move-exception p1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw p1
.end method

.method public whitelist getOutputImage(I)Landroid/media/Image;
    .registers 6

    .line 4913
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4914
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    .line 4919
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    .line 4920
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v1

    .line 4921
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4922
    :try_start_11
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v0}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4923
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V

    .line 4924
    monitor-exit v2

    .line 4925
    return-object v1

    .line 4924
    :catchall_1d
    move-exception p1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw p1

    .line 4915
    :cond_20
    :try_start_20
    new-instance p1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v1, "getOutputImage() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame() to get output frames."

    invoke-direct {p1, p0, v1}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 4919
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public whitelist getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;
    .registers 2

    .line 5813
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getQueueRequest(I)Landroid/media/MediaCodec$QueueRequest;
    .registers 7

    .line 4208
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4209
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_84

    .line 4212
    if-ltz p1, :cond_5a

    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5a

    .line 4216
    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$QueueRequest;

    .line 4217
    if-eqz v1, :cond_41

    .line 4220
    invoke-virtual {v1}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4224
    invoke-virtual {v1}, Landroid/media/MediaCodec$QueueRequest;->clear()Landroid/media/MediaCodec$QueueRequest;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4221
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The request is stale at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4218
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unavailable index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4213
    :cond_5a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected range of index: [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 4214
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]; actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4210
    :cond_84
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The codec is not configured for block model"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4225
    :catchall_8c
    move-exception p1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw p1
.end method

.method public blacklist getRequiredResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodec$InstanceResourceInfo;",
            ">;"
        }
    .end annotation

    .line 2634
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getRequiredResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedVendorParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5748
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getSupportedVendorParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist queueInputBuffer(IIIJI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    .line 3156
    const-string v0, "MediaCodec::queueInputBuffer#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3157
    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_18

    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_10

    goto :goto_18

    .line 3159
    :cond_10
    new-instance p1, Landroid/media/MediaCodec$InvalidBufferFlagsException;

    const-string p2, "An input buffer cannot have both BUFFER_FLAG_END_OF_STREAM and BUFFER_FLAG_DECODE_ONLY flags"

    invoke-direct {p1, p0, p2}, Landroid/media/MediaCodec$InvalidBufferFlagsException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 3161
    :cond_18
    :goto_18
    iget-object v3, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3162
    :try_start_1b
    iget v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_44

    .line 3167
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v4}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 3168
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3169
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_4d

    .line 3171
    :try_start_2b
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueInputBuffer(IIIJI)V
    :try_end_2e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2e} :catch_36
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_36
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    .line 3177
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3178
    nop

    .line 3179
    return-void

    .line 3177
    :catchall_33
    move-exception v0

    move-object p1, v0

    goto :goto_40

    .line 3173
    :catch_36
    move-exception v0

    move p2, p1

    move-object p1, p0

    move-object p3, v0

    .line 3174
    :try_start_3a
    iget-object p4, p1, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, p4, p2, v4}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V

    .line 3175
    throw p3
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_33

    .line 3177
    :goto_40
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3178
    throw p1

    .line 3163
    :cond_44
    move-object p1, p0

    :try_start_45
    new-instance p2, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string p3, "queueInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {p2, p0, p3}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p2

    .line 3169
    :catchall_4d
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_4d

    throw p1
.end method

.method public final whitelist queueInputBuffers(ILjava/util/ArrayDeque;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)V"
        }
    .end annotation

    .line 3219
    const-string v0, "MediaCodec::queueInputBuffers#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3220
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3221
    :try_start_a
    iget v3, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    .line 3226
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v4}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 3227
    iget-object v3, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v3, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3228
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_3c

    .line 3230
    nop

    .line 3231
    :try_start_1b
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object p2

    .line 3230
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->native_queueInputBuffers(I[Ljava/lang/Object;)V
    :try_end_22
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_22} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_22} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_22} :catch_29
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    .line 3236
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3237
    nop

    .line 3238
    return-void

    .line 3236
    :catchall_27
    move-exception p1

    goto :goto_30

    .line 3232
    :catch_29
    move-exception p2

    .line 3233
    :try_start_2a
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v4}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V

    .line 3234
    throw p2
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_27

    .line 3236
    :goto_30
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3237
    throw p1

    .line 3222
    :cond_34
    :try_start_34
    new-instance p1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string p2, "queueInputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {p1, p0, p2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 3228
    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public final whitelist queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    .line 3497
    const-string v0, "MediaCodec::queueSecureInputBuffer#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3498
    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_18

    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_10

    goto :goto_18

    .line 3500
    :cond_10
    new-instance p1, Landroid/media/MediaCodec$InvalidBufferFlagsException;

    const-string p2, "An input buffer cannot have both BUFFER_FLAG_END_OF_STREAM and BUFFER_FLAG_DECODE_ONLY flags"

    invoke-direct {p1, p0, p2}, Landroid/media/MediaCodec$InvalidBufferFlagsException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 3502
    :cond_18
    :goto_18
    iget-object v3, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3503
    :try_start_1b
    iget v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_44

    .line 3508
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v4}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 3509
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3510
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_4d

    .line 3512
    :try_start_2b
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_2e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2e} :catch_36
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_36
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    .line 3518
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3519
    nop

    .line 3520
    return-void

    .line 3518
    :catchall_33
    move-exception v0

    move-object p1, v0

    goto :goto_40

    .line 3514
    :catch_36
    move-exception v0

    move p2, p1

    move-object p1, p0

    move-object p3, v0

    .line 3515
    :try_start_3a
    iget-object p4, p1, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, p4, p2, v4}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V

    .line 3516
    throw p3
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_33

    .line 3518
    :goto_40
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3519
    throw p1

    .line 3504
    :cond_44
    move-object p1, p0

    :try_start_45
    new-instance p2, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string p3, "queueSecureInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {p2, p0, p3}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p2

    .line 3510
    :catchall_4d
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_4d

    throw p1
.end method

.method public final whitelist queueSecureInputBuffers(ILjava/util/ArrayDeque;Ljava/util/ArrayDeque;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;)V"
        }
    .end annotation

    .line 3549
    const-string v0, "MediaCodec::queueSecureInputBuffers#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3550
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3551
    :try_start_a
    iget v3, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_38

    .line 3556
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v4}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 3557
    iget-object v3, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v3, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3558
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_40

    .line 3560
    nop

    .line 3561
    :try_start_1b
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object p3

    .line 3560
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_queueSecureInputBuffers(I[Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_26} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_26} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_26} :catch_2d
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 3566
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3567
    nop

    .line 3568
    return-void

    .line 3566
    :catchall_2b
    move-exception p1

    goto :goto_34

    .line 3562
    :catch_2d
    move-exception p2

    .line 3563
    :try_start_2e
    iget-object p3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3, p1, v4}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V

    .line 3564
    throw p2
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2b

    .line 3566
    :goto_34
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3567
    throw p1

    .line 3552
    :cond_38
    :try_start_38
    new-instance p1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string p2, "queueSecureInputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {p1, p0, p2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw p1

    .line 3558
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public final whitelist release()V
    .registers 2

    .line 2229
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2230
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_release()V

    .line 2231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2232
    return-void
.end method

.method public final whitelist releaseOutputBuffer(IJ)V
    .registers 10

    .line 4377
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBufferInternal(IZZJ)V

    .line 4379
    return-void
.end method

.method public final whitelist releaseOutputBuffer(IZ)V
    .registers 9

    .line 4324
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBufferInternal(IZZJ)V

    .line 4325
    return-void
.end method

.method public final whitelist reset()V
    .registers 2

    .line 2214
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2215
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_reset()V

    .line 2216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2217
    return-void
.end method

.method public whitelist setAudioPresentation(Landroid/media/AudioPresentation;)V
    .registers 3

    .line 5150
    if-eqz p1, :cond_e

    .line 5153
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->native_setAudioPresentation(II)V

    .line 5154
    return-void

    .line 5151
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "audio presentation is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setCallback(Landroid/media/MediaCodec$Callback;)V
    .registers 3

    .line 5618
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 5619
    return-void
.end method

.method public whitelist setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V
    .registers 8

    .line 5549
    new-instance v0, Landroid/media/MediaCodec$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda2;-><init>()V

    .line 5550
    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    .line 5551
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_42

    .line 5552
    iget-object v3, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5553
    :try_start_10
    iget-object v4, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p2, v4}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object p2

    .line 5557
    iget-object v4, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq p2, v4, :cond_3d

    .line 5558
    if-eqz v0, :cond_31

    .line 5559
    const-string v0, "[new handler] removeMessages(SET_CALLBACK)"

    new-instance v1, Landroid/media/MediaCodec$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaCodec;)V

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec;->logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5564
    const-string v0, "[new handler] removeMessages(CALLBACK)"

    new-instance v1, Landroid/media/MediaCodec$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaCodec;)V

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec;->logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_3b

    .line 5570
    :cond_31
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5571
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5573
    :goto_3b
    iput-object p2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    .line 5575
    :cond_3d
    monitor-exit v3

    goto :goto_67

    :catchall_3f
    move-exception p1

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_3f

    throw p1

    .line 5576
    :cond_42
    iget-object p2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz p2, :cond_67

    .line 5577
    if-eqz v0, :cond_5d

    .line 5578
    const-string p2, "[null handler] removeMessages(SET_CALLBACK)"

    new-instance v0, Landroid/media/MediaCodec$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaCodec;)V

    invoke-direct {p0, p2, v0}, Landroid/media/MediaCodec;->logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5583
    const-string p2, "[null handler] removeMessages(CALLBACK)"

    new-instance v0, Landroid/media/MediaCodec$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda6;-><init>(Landroid/media/MediaCodec;)V

    invoke-direct {p0, p2, v0}, Landroid/media/MediaCodec;->logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_67

    .line 5589
    :cond_5d
    iget-object p2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {p2, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5590
    iget-object p2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {p2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5594
    :cond_67
    :goto_67
    iget-object p2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz p2, :cond_7a

    .line 5596
    iget-object p2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0, v0, p1}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 5597
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5603
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 5605
    :cond_7a
    return-void
.end method

.method public whitelist setInputSurface(Landroid/view/Surface;)V
    .registers 3

    .line 2734
    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    if-eqz v0, :cond_8

    .line 2737
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setInputSurface(Landroid/view/Surface;)V

    .line 2738
    return-void

    .line 2735
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not a PersistentSurface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnFirstTunnelFrameReadyListener(Landroid/os/Handler;Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;)V
    .registers 6

    .line 5651
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5652
    :try_start_3
    iput-object p2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    .line 5653
    const/4 v1, 0x4

    if-eqz p2, :cond_1a

    .line 5654
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p1, v2}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object p1

    .line 5657
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq p1, v2, :cond_17

    .line 5658
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5660
    :cond_17
    iput-object p1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_24

    .line 5661
    :cond_1a
    iget-object p1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz p1, :cond_24

    .line 5662
    iget-object p1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    goto :goto_25

    .line 5661
    :cond_24
    :goto_24
    nop

    .line 5664
    :goto_25
    if-eqz p2, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_enableOnFirstTunnelFrameReadyListener(Z)V

    .line 5665
    monitor-exit v0

    .line 5666
    return-void

    .line 5665
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public whitelist setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V
    .registers 6

    .line 5719
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5720
    :try_start_3
    iput-object p1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    .line 5721
    const/4 v1, 0x3

    if-eqz p1, :cond_1a

    .line 5722
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p2, v2}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object p2

    .line 5723
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq p2, v2, :cond_17

    .line 5724
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5726
    :cond_17
    iput-object p2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_24

    .line 5727
    :cond_1a
    iget-object p2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz p2, :cond_24

    .line 5728
    iget-object p2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {p2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    goto :goto_25

    .line 5727
    :cond_24
    :goto_24
    nop

    .line 5730
    :goto_25
    if-eqz p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_enableOnFrameRenderedListener(Z)V

    .line 5731
    monitor-exit v0

    .line 5732
    return-void

    .line 5731
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public whitelist setOutputSurface(Landroid/view/Surface;)V
    .registers 3

    .line 2653
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v0, :cond_8

    .line 2656
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setSurface(Landroid/view/Surface;)V

    .line 2657
    return-void

    .line 2654
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "codec was not configured for an output surface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist setParameters(Landroid/os/Bundle;)V
    .registers 10

    .line 5444
    if-nez p1, :cond_3

    .line 5445
    return-void

    .line 5448
    :cond_3
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 5449
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 5451
    nop

    .line 5452
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5453
    const-string v5, "audio-session-id"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 5454
    nop

    .line 5456
    :try_start_2e
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_49

    .line 5459
    nop

    .line 5460
    const-string v5, "audio-hw-sync"

    aput-object v5, v0, v3

    .line 5461
    invoke-static {v4}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 5462
    goto/16 :goto_10a

    .line 5457
    :catch_49
    move-exception p1

    .line 5458
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Session ID Parameter!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5462
    :cond_52
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->applyPictureProfiles()Z

    move-result v5

    const-string v6, "MediaCodec"

    if-eqz v5, :cond_ab

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 5463
    const-string v5, "picture-profile-instance"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 5464
    nop

    .line 5466
    :try_start_69
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/quality/PictureProfile;
    :try_end_6f
    .catch Ljava/lang/ClassCastException; {:try_start_69 .. :try_end_6f} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6f} :catch_92

    .line 5474
    nop

    .line 5475
    if-eqz v4, :cond_8a

    .line 5479
    invoke-virtual {v4}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v4

    .line 5480
    sget-object v5, Landroid/media/quality/PictureProfileHandle;->NONE:Landroid/media/quality/PictureProfileHandle;

    if-eq v4, v5, :cond_88

    .line 5481
    const-string v5, "picture-profile-handle"

    aput-object v5, v0, v3

    .line 5482
    invoke-virtual {v4}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    .line 5484
    :cond_88
    goto/16 :goto_10a

    .line 5476
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Picture profile instance parameter is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5470
    :catch_92
    move-exception p1

    .line 5471
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5472
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected exception when casting the instance parameter to PictureProfile!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5467
    :catch_a2
    move-exception p1

    .line 5468
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cast the instance parameter to PictureProfile!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5484
    :cond_ab
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->applyPictureProfiles()Z

    move-result v5

    if-eqz v5, :cond_f5

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 5485
    const-string v5, "picture-profile-id"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f5

    .line 5486
    nop

    .line 5488
    :try_start_c0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/ClassCastException; {:try_start_c0 .. :try_end_c6} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c6} :catch_dc

    .line 5496
    nop

    .line 5497
    if-eqz v4, :cond_d4

    .line 5500
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d3

    .line 5501
    aput-object v5, v0, v3

    .line 5502
    aput-object v4, v1, v3

    .line 5504
    :cond_d3
    goto :goto_10a

    .line 5498
    :cond_d4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KEY_PICTURE_PROFILE_ID parameter is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5492
    :catch_dc
    move-exception p1

    .line 5493
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5494
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected exception when casting the KEY_PICTURE_PROFILE_ID parameter!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5489
    :catch_ec
    move-exception p1

    .line 5490
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cast the KEY_PICTURE_PROFILE_ID parameter to String!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5505
    :cond_f5
    aput-object v4, v0, v3

    .line 5506
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 5509
    instance-of v5, v4, [B

    if-eqz v5, :cond_108

    .line 5510
    check-cast v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_10a

    .line 5512
    :cond_108
    aput-object v4, v1, v3

    .line 5515
    :goto_10a
    add-int/lit8 v3, v3, 0x1

    .line 5516
    goto/16 :goto_19

    .line 5518
    :cond_10e
    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec;->setParameters([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5519
    return-void
.end method

.method public final native whitelist setVideoScalingMode(I)V
.end method

.method public final native whitelist signalEndOfInputStream()V
.end method

.method public final whitelist start()V
    .registers 1

    .line 2779
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_start()V

    .line 2780
    return-void
.end method

.method public final whitelist stop()V
    .registers 4

    .line 2791
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_stop()V

    .line 2792
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2794
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2795
    :try_start_9
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_19

    .line 2796
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2797
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2799
    :cond_19
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_23

    .line 2800
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2802
    :cond_23
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_2d

    .line 2803
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2805
    :cond_2d
    monitor-exit v0

    .line 2806
    return-void

    .line 2805
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist subscribeToVendorParameters(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5844
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_subscribeToVendorParameters(Ljava/util/List;)V

    .line 5845
    return-void
.end method

.method public whitelist unsubscribeFromVendorParameters(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5875
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_unsubscribeFromVendorParameters(Ljava/util/List;)V

    .line 5876
    return-void
.end method
