.class public final Landroid/graphics/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageDecoder$Source;,
        Landroid/graphics/ImageDecoder$ResourceSource;,
        Landroid/graphics/ImageDecoder$ContentResolverSource;,
        Landroid/graphics/ImageDecoder$AssetSource;,
        Landroid/graphics/ImageDecoder$ByteArraySource;,
        Landroid/graphics/ImageDecoder$ByteBufferSource;,
        Landroid/graphics/ImageDecoder$InputStreamSource;,
        Landroid/graphics/ImageDecoder$FileSource;,
        Landroid/graphics/ImageDecoder$CallableSource;,
        Landroid/graphics/ImageDecoder$OnPartialImageListener;,
        Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;,
        Landroid/graphics/ImageDecoder$ImageInfo;,
        Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;,
        Landroid/graphics/ImageDecoder$DecodeException;,
        Landroid/graphics/ImageDecoder$MemoryPolicy;,
        Landroid/graphics/ImageDecoder$Allocator;,
        Landroid/graphics/ImageDecoder$AssetInputStreamSource;
    }
.end annotation


# static fields
.field public static final whitelist ALLOCATOR_DEFAULT:I = 0x0

.field public static final whitelist ALLOCATOR_HARDWARE:I = 0x3

.field public static final whitelist ALLOCATOR_SHARED_MEMORY:I = 0x2

.field public static final whitelist ALLOCATOR_SOFTWARE:I = 0x1

.field public static final whitelist MEMORY_POLICY_DEFAULT:I = 0x1

.field public static final whitelist MEMORY_POLICY_LOW_RAM:I

.field private static blacklist sDefaultProcessListener:Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

.field private static blacklist sDefaultThreadListener:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sIsHevcDecoderSupported:Z

.field private static blacklist sIsHevcDecoderSupportedInitialized:Z

.field private static final blacklist sIsHevcDecoderSupportedLock:Ljava/lang/Object;

.field private static blacklist sIsP010SupportedFlagsInitialized:Z

.field private static blacklist sIsP010SupportedForAV1:Z

.field private static blacklist sIsP010SupportedForHEVC:Z

.field private static final blacklist sIsP010SupportedLock:Ljava/lang/Object;

.field private static final blacklist sListenerLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mAllocator:I

.field private final greylist-max-o mAnimated:Z

.field private greylist-max-o mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mConserveMemory:Z

.field private greylist-max-o mCropRect:Landroid/graphics/Rect;

.field private greylist-max-o mDecodeAsAlphaMask:Z

.field private greylist-max-o mDesiredColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mDesiredHeight:I

.field private greylist-max-o mDesiredWidth:I

.field private final greylist-max-o mHeight:I

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private final greylist-max-o mIsNinePatch:Z

.field private greylist-max-o mMutable:Z

.field private greylist-max-o mNativePtr:J

.field private greylist-max-o mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

.field private greylist-max-o mOutPaddingRect:Landroid/graphics/Rect;

.field private greylist-max-o mOwnsInputStream:Z

.field private greylist-max-o mPostProcessor:Landroid/graphics/PostProcessor;

.field private greylist-max-o mSource:Landroid/graphics/ImageDecoder$Source;

.field private greylist-max-o mTempStorage:[B

.field private greylist-max-o mUnpremultipliedRequired:Z

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdescribeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder;->nCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1683
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/ImageDecoder;->sDefaultProcessListener:Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    .line 1684
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/graphics/ImageDecoder;->sDefaultThreadListener:Ljava/lang/ThreadLocal;

    .line 1688
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/ImageDecoder;->sListenerLock:Ljava/lang/Object;

    .line 2069
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    .line 2070
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    .line 2071
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedLock:Ljava/lang/Object;

    .line 2092
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    .line 2093
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    .line 2094
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    .line 2095
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(JIIZZ)V
    .registers 8

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 837
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 838
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 839
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 840
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 854
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 855
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 864
    iput-wide p1, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 865
    iput p3, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    .line 866
    iput p4, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    .line 867
    iput p3, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 868
    iput p4, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 869
    iput-boolean p5, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 870
    iput-boolean p6, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    .line 871
    iget-object p1, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method private greylist-max-o callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V
    .registers 11

    .line 1756
    invoke-static {}, Landroid/graphics/ImageDecoder;->getDefaultThreadListener()Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    move-result-object v0

    .line 1757
    invoke-static {}, Landroid/graphics/ImageDecoder;->getDefaultProcessListener()Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    move-result-object v1

    .line 1759
    if-nez p1, :cond_e

    if-nez v0, :cond_e

    if-eqz v1, :cond_37

    .line 1760
    :cond_e
    new-instance v2, Landroid/graphics/ImageDecoder$ImageInfo;

    new-instance v3, Landroid/util/Size;

    iget v4, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v5, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iget-boolean v4, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 1762
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder-IA;)V

    .line 1765
    if-eqz v0, :cond_2d

    .line 1766
    invoke-interface {v0, p0, v2, p2}, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    goto :goto_32

    .line 1767
    :cond_2d
    if-eqz v1, :cond_32

    .line 1768
    invoke-interface {v1, p0, v2, p2}, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    .line 1772
    :cond_32
    :goto_32
    if-eqz p1, :cond_37

    .line 1773
    invoke-interface {p1, p0, v2, p2}, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    .line 1776
    :cond_37
    return-void
.end method

.method private blacklist checkForExtended()Z
    .registers 4

    .line 1658
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1659
    return v1

    .line 1661
    :cond_6
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eq v0, v2, :cond_1a

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1662
    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-ne v0, v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    .line 1661
    :cond_1b
    return v1
.end method

.method private static blacklist checkP010SupportforAV1HEVC()V
    .registers 15

    .line 2132
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2133
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_c
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5b

    aget-object v5, v0, v3

    .line 2134
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2135
    goto :goto_58

    .line 2137
    :cond_18
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_1e
    if-ge v8, v7, :cond_58

    aget-object v9, v6, v8

    .line 2138
    const-string/jumbo v10, "video/av01"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_34

    .line 2139
    const-string/jumbo v11, "video/hevc"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 2140
    :cond_34
    nop

    .line 2141
    invoke-virtual {v5, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v11

    .line 2142
    move v12, v1

    :goto_3a
    iget-object v13, v11, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v13, v13

    if-ge v12, v13, :cond_55

    .line 2143
    iget-object v13, v11, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v13, v13, v12

    const/16 v14, 0x36

    if-ne v13, v14, :cond_52

    .line 2145
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_50

    .line 2146
    sput-boolean v4, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    goto :goto_52

    .line 2148
    :cond_50
    sput-boolean v4, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    .line 2142
    :cond_52
    :goto_52
    add-int/lit8 v12, v12, 0x1

    goto :goto_3a

    .line 2137
    :cond_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 2133
    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2155
    :cond_5b
    sput-boolean v4, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    .line 2156
    return-void
.end method

.method private blacklist checkState(Z)V
    .registers 6

    .line 1622
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_43

    .line 1626
    iget v0, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroid/graphics/ImageDecoder;->checkSubset(IILandroid/graphics/Rect;)V

    .line 1630
    if-nez p1, :cond_31

    iget p1, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    .line 1631
    iget-boolean p1, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez p1, :cond_29

    .line 1634
    iget-boolean p1, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    if-nez p1, :cond_21

    goto :goto_31

    .line 1635
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot make HARDWARE Alpha mask Bitmap!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1632
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot make mutable HARDWARE Bitmap!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1639
    :cond_31
    :goto_31
    iget-object p1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz p1, :cond_42

    iget-boolean p1, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez p1, :cond_3a

    goto :goto_42

    .line 1640
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot draw to unpremultiplied pixels!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1642
    :cond_42
    :goto_42
    return-void

    .line 1623
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use closed ImageDecoder!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o checkSubset(IILandroid/graphics/Rect;)V
    .registers 6

    .line 1645
    if-nez p2, :cond_3

    .line 1646
    return-void

    .line 1648
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v1, "Subset "

    if-lez v0, :cond_53

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_53

    .line 1651
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, p0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p1, :cond_22

    .line 1655
    return-void

    .line 1652
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " not contained by scaled image bounds: ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " x "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_53
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is empty/unsorted"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o computeDensity(Landroid/graphics/ImageDecoder$Source;)I
    .registers 7

    .line 1992
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->requestedResize()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1993
    const/4 p1, 0x0

    return p1

    .line 1996
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getDensity()I

    move-result v0

    .line 1997
    if-nez v0, :cond_f

    .line 1998
    return v0

    .line 2006
    :cond_f
    iget-boolean v1, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-nez v1, :cond_18

    .line 2007
    return v0

    .line 2017
    :cond_18
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2018
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v1, v0, :cond_27

    .line 2019
    return v0

    .line 2022
    :cond_27
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result p1

    .line 2023
    if-ne v0, p1, :cond_2e

    .line 2024
    return v0

    .line 2029
    :cond_2e
    if-ge v0, p1, :cond_39

    .line 2030
    invoke-static {}, Landroid/graphics/Compatibility;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_39

    .line 2031
    return v0

    .line 2034
    :cond_39
    int-to-float v1, p1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 2035
    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2036
    iget v4, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    float-to-int v1, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2037
    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 2038
    return p1
.end method

.method private static blacklist createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    nop

    .line 547
    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 548
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    .line 550
    if-nez p1, :cond_f

    .line 551
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_15

    .line 553
    :cond_f
    iput-object p0, p1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 554
    const/4 p0, 0x1

    iput-boolean p0, p1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 556
    nop

    .line 557
    :goto_15
    return-object p1

    .line 550
    :catchall_16
    move-exception p1

    .line 551
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 556
    throw p1
.end method

.method private static blacklist createFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    if-eqz p0, :cond_34

    .line 373
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    .line 376
    nop

    .line 379
    :try_start_b
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 380
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p1
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_18} :catch_1b
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    .line 383
    goto :goto_26

    .line 385
    :catchall_19
    move-exception p1

    goto :goto_30

    .line 381
    :catch_1b
    move-exception v1

    .line 382
    :try_start_1c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x1

    invoke-static {v1, v0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_19

    .line 385
    :goto_26
    if-nez p1, :cond_2c

    .line 386
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2f

    .line 388
    :cond_2c
    iput-object p0, p1, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 390
    nop

    .line 391
    :goto_2f
    return-object p1

    .line 386
    :goto_30
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 390
    throw p1

    .line 371
    :cond_34
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method private static blacklist createFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 323
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 325
    const/4 v1, 0x1

    :try_start_a
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v3, 0x0

    invoke-static {p0, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_11} :catch_2a

    .line 328
    nop

    .line 330
    nop

    .line 332
    const-wide/16 v2, -0x1

    :try_start_15
    invoke-static {p0, v2, v3, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_25

    .line 334
    if-nez p0, :cond_1f

    .line 335
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_24

    .line 337
    :cond_1f
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 338
    iput-boolean v1, p0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 340
    nop

    .line 341
    :goto_24
    return-object p0

    .line 334
    :catchall_25
    move-exception p0

    .line 335
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 340
    throw p0

    .line 326
    :catch_2a
    move-exception p0

    .line 327
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 349
    nop

    .line 351
    :try_start_5
    invoke-static {p0, v0, p2, p3}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_19

    .line 353
    if-nez p2, :cond_11

    .line 354
    if-eqz p1, :cond_18

    .line 355
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_18

    .line 358
    :cond_11
    iput-object p0, p2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 359
    iput-boolean p1, p2, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 360
    iput-object v0, p2, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 362
    nop

    .line 364
    :cond_18
    :goto_18
    return-object p2

    .line 353
    :catchall_19
    move-exception p2

    .line 354
    if-eqz p1, :cond_1f

    .line 355
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 362
    :cond_1f
    throw p2
.end method

.method public static whitelist createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;
    .registers 4

    .line 964
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static greylist-max-o createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;
    .registers 4

    .line 976
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static whitelist createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;
    .registers 3

    .line 985
    new-instance v0, Landroid/graphics/ImageDecoder$AssetSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;
    .registers 3

    .line 941
    new-instance v0, Landroid/graphics/ImageDecoder$ResourceSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$ResourceSource;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static greylist-max-o createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;
    .registers 4

    .line 1076
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static blacklist createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;
    .registers 4

    .line 1090
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;
    .registers 2

    .line 1107
    new-instance v0, Landroid/graphics/ImageDecoder$FileSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$FileSource;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;
    .registers 2

    .line 1063
    new-instance v0, Landroid/graphics/ImageDecoder$ByteBufferSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$ByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;)",
            "Landroid/graphics/ImageDecoder$Source;"
        }
    .end annotation

    .line 1128
    new-instance v0, Landroid/graphics/ImageDecoder$CallableSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$CallableSource;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static whitelist createSource([B)Landroid/graphics/ImageDecoder$Source;
    .registers 3

    .line 1041
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/ImageDecoder;->createSource([BII)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createSource([BII)Landroid/graphics/ImageDecoder$Source;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1012
    if-eqz p0, :cond_1c

    .line 1015
    if-ltz p1, :cond_14

    if-ltz p2, :cond_14

    array-length v0, p0

    if-ge p1, v0, :cond_14

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_14

    .line 1020
    new-instance v0, Landroid/graphics/ImageDecoder$ByteArraySource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ByteArraySource;-><init>([BII)V

    return-object v0

    .line 1017
    :cond_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "invalid offset/length!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1013
    :cond_1c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "null byte[] in createSource!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2066
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1931
    if-eqz p1, :cond_7

    .line 1935
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1932
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener cannot be null! Use decodeBitmap(Source) to not have a listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1942
    const-string v0, "ImageDecoder#decodeBitmap"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1943
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_59

    .line 1944
    :try_start_c
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    .line 1945
    invoke-direct {v0, p1, p0}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 1946
    new-instance p1, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;

    invoke-direct {p1, v0}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;-><init>(Landroid/graphics/ImageDecoder;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_4d

    .line 1949
    :try_start_16
    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result p0

    .line 1950
    invoke-direct {v0}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1951
    invoke-virtual {v3, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1953
    iget-object p0, v0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1954
    if-eqz p0, :cond_36

    .line 1955
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    .line 1956
    if-eqz v4, :cond_36

    invoke-static {v4}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1957
    iget-wide v4, v0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v4, v5, p0}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_43

    .line 1960
    :cond_36
    nop

    .line 1961
    :try_start_37
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4d

    .line 1962
    if-eqz v0, :cond_3f

    :try_start_3c
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_59

    .line 1964
    :cond_3f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1960
    return-object v3

    .line 1946
    :catchall_43
    move-exception p0

    :try_start_44
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p1

    :try_start_49
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 1943
    :catchall_4d
    move-exception p0

    if-eqz v0, :cond_58

    :try_start_50
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p1

    :try_start_55
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw p0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 1964
    :catchall_59
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1965
    throw p0
.end method

.method private greylist-max-o decodeBitmapInternal()Landroid/graphics/Bitmap;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1675
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder;->checkState(Z)V

    .line 1676
    move v3, v0

    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v4, :cond_c

    const/4 v3, 0x1

    :cond_c
    iget v4, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v5, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v6, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-boolean v7, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    iget v8, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    iget-boolean v9, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    iget-boolean v10, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    iget-boolean v11, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1679
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpacePtr()J

    move-result-wide v12

    .line 1680
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->checkForExtended()Z

    move-result v14

    .line 1676
    move-object v2, p0

    invoke-static/range {v0 .. v14}, Landroid/graphics/ImageDecoder;->nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1912
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1823
    if-eqz p1, :cond_7

    .line 1827
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 1824
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener cannot be null! Use decodeDrawable(Source) to not have a listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1834
    move-object/from16 v0, p0

    const-string v1, "ImageDecoder#decodeDrawable"

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1835
    const/4 v1, 0x1

    :try_start_a
    invoke-virtual {v0, v1}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_e8

    .line 1836
    :try_start_e
    iput-object v0, v4, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    .line 1837
    move-object/from16 v5, p1

    invoke-direct {v4, v5, v0}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 1839
    new-instance v5, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;

    invoke-direct {v5, v4}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;-><init>(Landroid/graphics/ImageDecoder;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_db

    .line 1840
    :try_start_1a
    iget-boolean v6, v4, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v6, :cond_c8

    .line 1847
    iget-boolean v6, v4, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v6, :cond_c0

    .line 1853
    invoke-direct {v4, v0}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v16

    .line 1854
    iget-boolean v6, v4, Landroid/graphics/ImageDecoder;->mAnimated:Z

    if-eqz v6, :cond_6b

    .line 1857
    iget-object v6, v4, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    const/4 v7, 0x0

    if-nez v6, :cond_31

    move-object v10, v7

    goto :goto_32

    :cond_31
    move-object v10, v4

    .line 1858
    :goto_32
    invoke-direct {v4, v1}, Landroid/graphics/ImageDecoder;->checkState(Z)V

    .line 1859
    move-object v1, v7

    new-instance v7, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-wide v8, v4, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget v11, v4, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v12, v4, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1861
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->getColorSpacePtr()J

    move-result-wide v13

    .line 1862
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->checkForExtended()Z

    move-result v15

    .line 1863
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v17

    iget-object v0, v4, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-object v6, v4, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iget-object v1, v4, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v18, v0

    move-object/from16 v20, v1

    move-object/from16 v19, v6

    const/4 v1, 0x0

    invoke-direct/range {v7 .. v20}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>(JLandroid/graphics/ImageDecoder;IIJZIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    .line 1866
    iput-object v1, v4, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1867
    iput-object v1, v4, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;
    :try_end_5e
    .catchall {:try_start_1a .. :try_end_5e} :catchall_d0

    .line 1868
    nop

    .line 1889
    :try_start_5f
    invoke-virtual {v5}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_db

    .line 1890
    if-eqz v4, :cond_67

    :try_start_64
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_e8

    .line 1892
    :cond_67
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1868
    return-object v7

    .line 1871
    :cond_6b
    move/from16 v1, v16

    :try_start_6d
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1872
    invoke-virtual {v8, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1874
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1875
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v9

    .line 1876
    if-eqz v9, :cond_af

    invoke-static {v9}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1877
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1878
    invoke-virtual {v8, v11}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 1879
    iget-object v0, v4, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1880
    if-nez v0, :cond_97

    .line 1881
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    goto :goto_98

    .line 1880
    :cond_97
    move-object v10, v0

    .line 1883
    :goto_98
    iget-wide v0, v4, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1, v10}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V

    .line 1884
    new-instance v6, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_6d .. :try_end_a3} :catchall_d0

    .line 1889
    :try_start_a3
    invoke-virtual {v5}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_db

    .line 1890
    if-eqz v4, :cond_ab

    :try_start_a8
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_e8

    .line 1892
    :cond_ab
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1884
    return-object v6

    .line 1888
    :cond_af
    :try_start_af
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_d0

    .line 1889
    :try_start_b4
    invoke-virtual {v5}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_db

    .line 1890
    if-eqz v4, :cond_bc

    :try_start_b9
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_e8

    .line 1892
    :cond_bc
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1888
    return-object v0

    .line 1848
    :cond_c0
    :try_start_c0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode a mutable Drawable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1843
    :cond_c8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode a Drawable with unpremultiplied pixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d0
    .catchall {:try_start_c0 .. :try_end_d0} :catchall_d0

    .line 1839
    :catchall_d0
    move-exception v0

    move-object v1, v0

    :try_start_d2
    invoke-virtual {v5}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_da

    :catchall_d6
    move-exception v0

    :try_start_d7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_da
    throw v1
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_db

    .line 1835
    :catchall_db
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_e7

    :try_start_df
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e3

    goto :goto_e7

    :catchall_e3
    move-exception v0

    :try_start_e4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e7
    :goto_e7
    throw v1
    :try_end_e8
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_e8

    .line 1892
    :catchall_e8
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1893
    throw v0
.end method

.method public static blacklist decodeHeader(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder$ImageInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1793
    const-string v0, "ImageDecoder#decodeHeader"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1794
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_3c

    .line 1796
    :try_start_c
    new-instance v3, Landroid/graphics/ImageDecoder$ImageInfo;

    new-instance v4, Landroid/util/Size;

    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v5, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-direct {v4, v0, v5}, Landroid/util/Size;-><init>(II)V

    iget-boolean v5, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 1799
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 1800
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder-IA;)V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2e

    .line 1801
    if-eqz p0, :cond_2a

    :try_start_27
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3c

    .line 1803
    :cond_2a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1796
    return-object v3

    .line 1794
    :catchall_2e
    move-exception v0

    move-object v3, v0

    if-eqz p0, :cond_3b

    :try_start_32
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3b

    :catchall_36
    move-exception v0

    move-object p0, v0

    :try_start_38
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v3
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 1803
    :catchall_3c
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1804
    throw p0
.end method

.method private static blacklist describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .registers 4

    .line 2195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2197
    const-string v1, "ID#w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2199
    const-string v1, ";h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    iget v1, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2202
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v2, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    if-ne v1, v2, :cond_25

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    if-eq v1, v2, :cond_39

    .line 2204
    :cond_25
    const-string v1, ";dw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2206
    const-string v1, ";dh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2210
    :cond_39
    const-string v1, ";src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    iget-object p0, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 2048
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getColorSpacePtr()J
    .registers 3

    .line 1666
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_7

    .line 1667
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1669
    :cond_7
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getDefaultProcessListener()Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .registers 2

    .line 1748
    sget-object v0, Landroid/graphics/ImageDecoder;->sListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1749
    :try_start_3
    sget-object v1, Landroid/graphics/ImageDecoder;->sDefaultProcessListener:Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    monitor-exit v0

    return-object v1

    .line 1750
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist getDefaultThreadListener()Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .registers 1

    .line 1716
    sget-object v0, Landroid/graphics/ImageDecoder;->sDefaultThreadListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    return-object v0
.end method

.method private greylist-max-o getMimeType()Ljava/lang/String;
    .registers 3

    .line 2043
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getSampledSize(I)Landroid/util/Size;
    .registers 6

    .line 1147
    if-lez p1, :cond_19

    .line 1151
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 1155
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageDecoder;->nGetSampledSize(JI)Landroid/util/Size;

    move-result-object p1

    return-object p1

    .line 1152
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ImageDecoder is closed!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1148
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sampleSize must be positive! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getTargetDimension(III)I
    .registers 6

    .line 1192
    if-lt p2, p1, :cond_4

    .line 1193
    const/4 p1, 0x1

    return p1

    .line 1198
    :cond_4
    div-int v0, p1, p2

    .line 1199
    if-ne p3, v0, :cond_9

    .line 1200
    return p3

    .line 1206
    :cond_9
    mul-int v1, p3, p2

    .line 1207
    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, p2, :cond_13

    .line 1209
    return p3

    .line 1213
    :cond_13
    return v0
.end method

.method private static blacklist isHevcDecoderSupported()Z
    .registers 4

    .line 2079
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2080
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    if-eqz v1, :cond_b

    .line 2081
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    monitor-exit v0

    return v1

    .line 2083
    :cond_b
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 2084
    const-string/jumbo v2, "mime"

    const-string/jumbo v3, "video/hevc"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    new-instance v2, Landroid/media/MediaCodecList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2086
    invoke-virtual {v2, v1}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    move v3, v2

    :cond_27
    sput-boolean v3, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    .line 2087
    sput-boolean v2, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    .line 2088
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    monitor-exit v0

    return v1

    .line 2089
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public static whitelist isMimeTypeSupported(Ljava/lang/String;)Z
    .registers 4

    .line 898
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_104

    :cond_12
    goto/16 :goto_f3

    :sswitch_14
    const-string v0, "image/x-canon-cr2"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x8

    goto/16 :goto_f4

    :sswitch_20
    const-string v0, "image/x-nikon-nrw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xb

    goto/16 :goto_f4

    :sswitch_2c
    const-string v0, "image/x-nikon-nef"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xa

    goto/16 :goto_f4

    :sswitch_38
    const-string v0, "image/x-olympus-orf"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xc

    goto/16 :goto_f4

    :sswitch_44
    const-string v0, "image/x-ico"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x5

    goto/16 :goto_f4

    :sswitch_4f
    const-string v0, "image/vnd.wap.wbmp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x6

    goto/16 :goto_f4

    :sswitch_5a
    const-string v0, "image/x-pentax-pef"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xf

    goto/16 :goto_f4

    :sswitch_66
    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v1

    goto/16 :goto_f4

    :sswitch_71
    const-string v0, "image/gif"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x3

    goto/16 :goto_f4

    :sswitch_7c
    const-string v0, "image/bmp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x4

    goto/16 :goto_f4

    :sswitch_87
    const-string v0, "image/x-panasonic-rw2"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xe

    goto/16 :goto_f4

    :sswitch_93
    const-string v0, "image/x-adobe-dng"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x9

    goto :goto_f4

    :sswitch_9e
    const-string v0, "image/webp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x2

    goto :goto_f4

    :sswitch_a8
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v2

    goto :goto_f4

    :sswitch_b2
    const-string v0, "image/heif"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x11

    goto :goto_f4

    :sswitch_bd
    const-string v0, "image/heic"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x12

    goto :goto_f4

    :sswitch_c8
    const-string v0, "image/avif"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x13

    goto :goto_f4

    :sswitch_d3
    const-string v0, "image/x-sony-arw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x7

    goto :goto_f4

    :sswitch_dd
    const-string v0, "image/x-samsung-srw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x10

    goto :goto_f4

    :sswitch_e8
    const-string v0, "image/x-fuji-raf"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xd

    goto :goto_f4

    :goto_f3
    const/4 p0, -0x1

    :goto_f4
    packed-switch p0, :pswitch_data_156

    .line 924
    return v1

    .line 922
    :pswitch_f8
    invoke-static {}, Landroid/graphics/ImageDecoder;->isP010SupportedForAV1()Z

    move-result p0

    return p0

    .line 920
    :pswitch_fd
    invoke-static {}, Landroid/graphics/ImageDecoder;->isHevcDecoderSupported()Z

    move-result p0

    return p0

    .line 917
    :pswitch_102
    return v2

    nop

    :sswitch_data_104
    .sparse-switch
        -0x6fc6acff -> :sswitch_e8
        -0x617ac9e4 -> :sswitch_dd
        -0x5f082c57 -> :sswitch_d3
        -0x58abd7ba -> :sswitch_c8
        -0x58a8e8f5 -> :sswitch_bd
        -0x58a8e8f2 -> :sswitch_b2
        -0x58a7d764 -> :sswitch_a8
        -0x58a21830 -> :sswitch_9e
        -0x54d6098a -> :sswitch_93
        -0x3ab85cc1 -> :sswitch_87
        -0x3468a12f -> :sswitch_7c
        -0x34688ef0 -> :sswitch_71
        -0x34686c8b -> :sswitch_66
        -0x13d592a1 -> :sswitch_5a
        0x2c2ee2ec -> :sswitch_4f
        0x4453ce0c -> :sswitch_44
        0x52243d4a -> :sswitch_38
        0x7d1e84e8 -> :sswitch_2c
        0x7d1e868c -> :sswitch_20
        0x7dd6e2bc -> :sswitch_14
    .end sparse-switch

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_fd
        :pswitch_fd
        :pswitch_f8
    .end packed-switch
.end method

.method private static blacklist isP010SupportedForAV1()Z
    .registers 2

    .line 2103
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2104
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    if-eqz v1, :cond_b

    .line 2105
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    monitor-exit v0

    return v1

    .line 2107
    :cond_b
    invoke-static {}, Landroid/graphics/ImageDecoder;->checkP010SupportforAV1HEVC()V

    .line 2108
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    monitor-exit v0

    return v1

    .line 2109
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static blacklist isP010SupportedForHEVC()Z
    .registers 2

    .line 2119
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2120
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    if-eqz v1, :cond_b

    .line 2121
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    monitor-exit v0

    return v1

    .line 2123
    :cond_b
    invoke-static {}, Landroid/graphics/ImageDecoder;->checkP010SupportforAV1HEVC()V

    .line 2124
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    monitor-exit v0

    return v1

    .line 2125
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static native greylist-max-o nClose(J)V
.end method

.method private static native blacklist nCreate(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZJZ)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nGetColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native greylist-max-o nGetMimeType(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nGetPadding(JLandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nGetSampledSize(JI)Landroid/util/Size;
.end method

.method private greylist-max-o onPartialImage(ILjava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/graphics/ImageDecoder$DecodeException;
        }
    .end annotation

    .line 2176
    new-instance v0, Landroid/graphics/ImageDecoder$DecodeException;

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-direct {v0, p1, p2, v1}, Landroid/graphics/ImageDecoder$DecodeException;-><init>(ILjava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V

    .line 2177
    iget-object p1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 2178
    invoke-interface {p1, v0}, Landroid/graphics/ImageDecoder$OnPartialImageListener;->onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2181
    return-void

    .line 2179
    :cond_14
    throw v0
.end method

.method private blacklist postProcessAndRelease(Landroid/graphics/Canvas;)I
    .registers 3

    .line 2164
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    invoke-interface {v0, p1}, Landroid/graphics/PostProcessor;->onPostProcess(Landroid/graphics/Canvas;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 2166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 2164
    return v0

    .line 2166
    :catchall_a
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 2167
    throw v0
.end method

.method private greylist-max-o requestedResize()Z
    .registers 3

    .line 1252
    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    if-eq v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist setDefaultProcessListener(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)V
    .registers 2

    .line 1736
    sget-object v0, Landroid/graphics/ImageDecoder;->sListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_3
    sput-object p0, Landroid/graphics/ImageDecoder;->sDefaultProcessListener:Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    .line 1738
    monitor-exit v0

    .line 1739
    return-void

    .line 1738
    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static blacklist setDefaultThreadListener(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)V
    .registers 2

    .line 1706
    sget-object v0, Landroid/graphics/ImageDecoder;->sDefaultThreadListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1707
    return-void
.end method

.method private static blacklist traceDecoderSource(Landroid/graphics/ImageDecoder;)Ljava/lang/AutoCloseable;
    .registers 4

    .line 1974
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    .line 1975
    if-eqz v2, :cond_f

    .line 1976
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1979
    :cond_f
    new-instance p0, Landroid/graphics/ImageDecoder$1;

    invoke-direct {p0, v2}, Landroid/graphics/ImageDecoder$1;-><init>(Z)V

    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 1604
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1605
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1606
    return-void

    .line 1608
    :cond_10
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nClose(J)V

    .line 1609
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 1611
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    if-eqz v0, :cond_22

    .line 1612
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1614
    :cond_22
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1616
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1617
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 1618
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 1619
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 878
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 882
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 883
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 885
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_16

    .line 887
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 888
    nop

    .line 889
    return-void

    .line 887
    :catchall_16
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 888
    throw v0
.end method

.method public whitelist getAllocator()I
    .registers 2

    .line 1322
    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    return v0
.end method

.method public whitelist getCrop()Landroid/graphics/Rect;
    .registers 2

    .line 1431
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getMemorySizePolicy()I
    .registers 2

    .line 1524
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getOnPartialImageListener()Landroid/graphics/ImageDecoder$OnPartialImageListener;
    .registers 2

    .line 1403
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    return-object v0
.end method

.method public whitelist getPostProcessor()Landroid/graphics/PostProcessor;
    .registers 2

    .line 1381
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    return-object v0
.end method

.method public whitelist isDecodeAsAlphaMaskEnabled()Z
    .registers 2

    .line 1555
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public whitelist isMutableRequired()Z
    .registers 2

    .line 1479
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    return v0
.end method

.method public whitelist isUnpremultipliedRequired()Z
    .registers 2

    .line 1349
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    return v0
.end method

.method public whitelist setAllocator(I)V
    .registers 5

    .line 1311
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 1314
    iput p1, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 1315
    return-void

    .line 1312
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid allocator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCrop(Landroid/graphics/Rect;)V
    .registers 2

    .line 1423
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    .line 1424
    return-void
.end method

.method public whitelist setDecodeAsAlphaMaskEnabled(Z)V
    .registers 2

    .line 1543
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1544
    return-void
.end method

.method public whitelist setMemorySizePolicy(I)V
    .registers 2

    .line 1516
    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 1517
    return-void
.end method

.method public whitelist setMutableRequired(Z)V
    .registers 2

    .line 1472
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 1473
    return-void
.end method

.method public whitelist setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V
    .registers 2

    .line 1395
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1396
    return-void
.end method

.method public greylist-max-o setOutPaddingRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 1448
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1449
    return-void
.end method

.method public whitelist setPostProcessor(Landroid/graphics/PostProcessor;)V
    .registers 2

    .line 1373
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    .line 1374
    return-void
.end method

.method public whitelist setTargetColorSpace(Landroid/graphics/ColorSpace;)V
    .registers 2

    .line 1591
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 1592
    return-void
.end method

.method public whitelist setTargetSampleSize(I)V
    .registers 5

    .line 1245
    invoke-direct {p0, p1}, Landroid/graphics/ImageDecoder;->getSampledSize(I)Landroid/util/Size;

    move-result-object v0

    .line 1246
    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v1

    .line 1247
    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0, v2, p1, v0}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result p1

    .line 1248
    invoke-virtual {p0, v1, p1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1249
    return-void
.end method

.method public whitelist setTargetSize(II)V
    .registers 6

    .line 1181
    if-lez p1, :cond_9

    if-lez p2, :cond_9

    .line 1186
    iput p1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 1187
    iput p2, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1188
    return-void

    .line 1182
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions must be positive! provided ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUnpremultipliedRequired(Z)V
    .registers 2

    .line 1342
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 1343
    return-void
.end method
