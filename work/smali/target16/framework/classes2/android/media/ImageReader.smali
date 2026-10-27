.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$HandlerExecutor;,
        Landroid/media/ImageReader$OnImageAvailableListener;,
        Landroid/media/ImageReader$ImagePlane;,
        Landroid/media/ImageReader$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final greylist-max-o ACQUIRE_NO_BUFS:I = 0x1

.field private static final greylist-max-o ACQUIRE_SUCCESS:I = 0x0

.field private static final blacklist DETACH_THROWS_ISE_ONLY:J = 0xe1daaa7L


# instance fields
.field private greylist-max-o mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCloseLock:Ljava/lang/Object;

.field private final blacklist mDataSpace:I

.field private final blacklist mDetachThrowsIseOnly:Z

.field private greylist-max-o mEstimatedNativeAllocBytes:I

.field private final greylist-max-o mFormat:I

.field private final blacklist mHardwareBufferFormat:I

.field private final greylist-max-o mHeight:I

.field private greylist-max-o mIsReaderValid:Z

.field private greylist-max-o mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxImages:I

.field private greylist-max-o mNativeContext:J

.field private final greylist-max-o mNumPlanes:I

.field private final blacklist mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private final blacklist mUsage:J

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataSpace(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFormat(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/media/ImageReader;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseImage(Landroid/media/ImageReader;Landroid/media/Image;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1536
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1537
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    .line 1538
    return-void
.end method

.method private constructor blacklist <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V
    .registers 17

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    nop

    .line 126
    const-wide/32 v1, 0xe1daaa7

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    .line 1123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 1124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 1125
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 1131
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 355
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    .line 356
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    .line 357
    iput p3, p0, Landroid/media/ImageReader;->mFormat:I

    .line 358
    iput-wide p5, p0, Landroid/media/ImageReader;->mUsage:J

    .line 359
    iput p4, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 360
    move-object/from16 v7, p7

    iput-object v7, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 362
    iget v7, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v7}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v7

    iput v7, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    .line 363
    iget v7, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v7}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, p0, Landroid/media/ImageReader;->mDataSpace:I

    .line 364
    iget v7, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v7}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v7

    iput v7, p0, Landroid/media/ImageReader;->mNumPlanes:I

    .line 366
    iget v7, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    iget v8, p0, Landroid/media/ImageReader;->mDataSpace:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->initializeImageReader(IIIIJII)V

    .line 368
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;Landroid/media/ImageReader-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-void
.end method

.method private constructor blacklist <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V
    .registers 18

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    nop

    .line 126
    const-wide/32 v1, 0xe1daaa7

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    .line 1123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 1124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 1125
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 1131
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 372
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    .line 373
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    .line 374
    iput-wide p4, p0, Landroid/media/ImageReader;->mUsage:J

    .line 375
    iput p3, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 376
    iput-object p6, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 377
    move/from16 v7, p7

    iput v7, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    .line 378
    move/from16 v8, p8

    iput v8, p0, Landroid/media/ImageReader;->mDataSpace:I

    .line 379
    iget v3, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    invoke-static {v3}, Landroid/media/ImageUtils;->getNumPlanesForHardwareBufferFormat(I)I

    move-result v3

    iput v3, p0, Landroid/media/ImageReader;->mNumPlanes:I

    .line 380
    invoke-static/range {p7 .. p8}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v3

    iput v3, p0, Landroid/media/ImageReader;->mFormat:I

    .line 382
    iget v3, p0, Landroid/media/ImageReader;->mFormat:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->initializeImageReader(IIIIJII)V

    .line 384
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;IILandroid/media/ImageReader-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageReader;-><init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V

    return-void
.end method

.method private greylist-max-o acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .registers 6

    .line 600
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    nop

    .line 603
    :try_start_4
    iget-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 604
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    move-result v1

    goto :goto_f

    .line 603
    :cond_e
    move v1, v2

    .line 607
    :goto_f
    packed-switch v1, :pswitch_data_3c

    .line 614
    new-instance p1, Ljava/lang/AssertionError;

    goto :goto_21

    .line 609
    :pswitch_15
    iput-boolean v2, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 612
    :pswitch_17
    nop

    .line 619
    if-nez v1, :cond_1f

    .line 620
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_1f
    monitor-exit v0

    return v1

    .line 614
    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown nativeImageSetup return code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 623
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw p1

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_15
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public static blacklist initializeImagePlanes(ILandroid/graphics/GraphicBuffer;IIJIILandroid/graphics/Rect;)[Landroid/media/ImageReader$ImagePlane;
    .registers 9

    .line 1513
    iget p4, p8, Landroid/graphics/Rect;->left:I

    iget p5, p8, Landroid/graphics/Rect;->top:I

    iget p6, p8, Landroid/graphics/Rect;->right:I

    iget p7, p8, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {p0 .. p7}, Landroid/media/ImageReader;->nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;

    move-result-object p0

    return-object p0
.end method

.method private blacklist initializeImageReader(IIIIJII)V
    .registers 19

    .line 321
    const/4 v9, 0x1

    if-lt p1, v9, :cond_44

    if-lt p2, v9, :cond_44

    .line 326
    if-lt p4, v9, :cond_3c

    .line 331
    const/16 v1, 0x11

    if-eq p3, v1, :cond_34

    .line 336
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIIJII)V

    .line 339
    iput-boolean v9, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 341
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 348
    invoke-static {p1, p2, p3, v9}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v1

    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 350
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v0, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 351
    return-void

    .line 332
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isImageOwnedbyMe(Landroid/media/Image;)Z
    .registers 4

    .line 919
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 920
    return v1

    .line 922
    :cond_6
    check-cast p1, Landroid/media/ImageReader$SurfaceImage;

    .line 923
    invoke-virtual {p1}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object p1

    if-ne p1, p0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeClose()V
.end method

.method private static synchronized native blacklist nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;
.end method

.method private synchronized native blacklist nativeDetachImage(Landroid/media/Image;Z)I
.end method

.method private synchronized native greylist-max-o nativeDiscardFreeBuffers()V
.end method

.method private synchronized native greylist-max-o nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native greylist-max-o nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native blacklist nativeInit(Ljava/lang/Object;IIIJII)V
.end method

.method private synchronized native greylist-max-o nativeReleaseImage(Landroid/media/Image;)V
.end method

.method private static synchronized native blacklist nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
.end method

.method public static whitelist newInstance(IIII)Landroid/media/ImageReader;
    .registers 12

    .line 184
    new-instance v0, Landroid/media/ImageReader;

    .line 185
    const/16 v1, 0x22

    if-ne p2, v1, :cond_9

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_9
    const-wide/16 v1, 0x3

    :goto_b
    move-wide v5, v1

    const/4 v7, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    .line 184
    return-object v0
.end method

.method public static whitelist newInstance(IIIIJ)Landroid/media/ImageReader;
    .registers 14

    .line 301
    new-instance v0, Landroid/media/ImageReader;

    const/4 v7, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v0
.end method

.method public static blacklist newInstance(IIIILandroid/hardware/camera2/MultiResolutionImageReader;)Landroid/media/ImageReader;
    .registers 13

    .line 315
    new-instance v0, Landroid/media/ImageReader;

    .line 316
    const/16 v1, 0x22

    if-ne p2, v1, :cond_9

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_9
    const-wide/16 v1, 0x3

    :goto_b
    move-wide v5, v1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    .line 315
    return-object v0
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;)V
    .registers 5

    .line 934
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 935
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ImageReader;

    .line 936
    if-nez p0, :cond_b

    .line 937
    return-void

    .line 939
    :cond_b
    const-string v0, "android.media.ImageReader#postEventFromNative"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_13
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 945
    iget-object v2, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 946
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_33

    .line 948
    iget-object v3, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 949
    :try_start_1b
    iget-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 950
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_30

    .line 955
    if-eqz v1, :cond_2c

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2c

    .line 956
    new-instance v0, Landroid/media/ImageReader$1;

    invoke-direct {v0, v2, p0}, Landroid/media/ImageReader$1;-><init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/media/ImageReader;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 963
    :cond_2c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 964
    return-void

    .line 950
    :catchall_30
    move-exception p0

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0

    .line 946
    :catchall_33
    move-exception p0

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method private greylist-max-o releaseImage(Landroid/media/Image;)V
    .registers 4

    .line 687
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    if-eqz v0, :cond_31

    .line 691
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 692
    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_c

    .line 693
    return-void

    .line 696
    :cond_c
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_29

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 701
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    .line 702
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    .line 703
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 704
    iget-object v0, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 705
    return-void

    .line 697
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This image was not produced by this ImageReader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 688
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This image was not produced by an ImageReader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist unlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
    .registers 1

    .line 1525
    invoke-static {p0}, Landroid/media/ImageReader;->nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 1526
    return-void
.end method


# virtual methods
.method public whitelist acquireLatestImage()Landroid/media/Image;
    .registers 3

    .line 548
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 549
    if-nez v0, :cond_8

    .line 550
    const/4 v0, 0x0

    return-object v0

    .line 554
    :cond_8
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_22

    .line 555
    if-nez v1, :cond_1c

    .line 556
    nop

    .line 557
    nop

    .line 558
    nop

    .line 564
    nop

    .line 567
    iget-object v1, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v1, :cond_1b

    .line 568
    iget-object v1, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 558
    :cond_1b
    return-object v0

    .line 560
    :cond_1c
    :try_start_1c
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_22

    .line 561
    nop

    .line 562
    move-object v0, v1

    goto :goto_8

    .line 564
    :catchall_22
    move-exception v1

    if-eqz v0, :cond_28

    .line 565
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 567
    :cond_28
    iget-object v0, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v0, :cond_31

    .line 568
    iget-object v0, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 570
    :cond_31
    throw v1
.end method

.method public whitelist acquireNextImage()Landroid/media/Image;
    .registers 5

    .line 662
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 663
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    .line 665
    packed-switch v1, :pswitch_data_40

    .line 676
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown nativeImageSetup return code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 671
    :pswitch_27
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 674
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 672
    const-string v2, "maxImages (%d) has already been acquired, call #close before acquiring more."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :pswitch_3d
    const/4 v0, 0x0

    return-object v0

    .line 667
    :pswitch_3f
    return-object v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3d
        :pswitch_27
    .end packed-switch
.end method

.method public greylist-max-o acquireNextImageNoThrowISE()Landroid/media/Image;
    .registers 3

    .line 581
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 582
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api close()V
    .registers 5

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 799
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 809
    :cond_d
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    const/4 v1, 0x0

    :try_start_11
    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 811
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    .line 812
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 813
    goto :goto_19

    .line 814
    :cond_29
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 816
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    .line 818
    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_40

    .line 819
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 820
    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 822
    :cond_40
    monitor-exit v0

    .line 823
    return-void

    .line 822
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public greylist-max-o detachImage(Landroid/media/Image;)V
    .registers 4

    .line 897
    if-eqz p1, :cond_35

    .line 900
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 905
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 906
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 908
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_25

    .line 912
    iget-boolean v1, p0, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    invoke-direct {p0, p1, v1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;Z)I

    .line 913
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    .line 914
    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$fputmPlanes(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 915
    const/4 p1, 0x1

    invoke-static {v0, p1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$msetDetached(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 916
    return-void

    .line 909
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Image was already detached from this ImageReader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 901
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 898
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input image must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist discardFreeBuffers()V
    .registers 3

    .line 844
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_3
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeDiscardFreeBuffers()V

    .line 846
    monitor-exit v0

    .line 847
    return-void

    .line 846
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 852
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 854
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 855
    nop

    .line 856
    return-void

    .line 854
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 855
    throw v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return v0
.end method

.method public whitelist getHardwareBufferFormat()I
    .registers 2

    .line 445
    iget v0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 409
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public whitelist getImageFormat()I
    .registers 2

    .line 432
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public whitelist getMaxImages()I
    .registers 2

    .line 479
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 2

    .line 508
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getUsage()J
    .registers 3

    .line 488
    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public whitelist setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .registers 5

    .line 720
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    if-eqz p1, :cond_37

    .line 722
    if-eqz p2, :cond_c

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    .line 723
    :goto_10
    if-eqz p2, :cond_2f

    .line 727
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, p2, :cond_2e

    .line 728
    :cond_1e
    new-instance v1, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v1, p0, p2}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 729
    new-instance p2, Landroid/media/ImageReader$HandlerExecutor;

    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {p2, p0, v1}, Landroid/media/ImageReader$HandlerExecutor;-><init>(Landroid/media/ImageReader;Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 731
    :cond_2e
    goto :goto_3c

    .line 724
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler is null but the current thread is not a looper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 732
    :cond_37
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 733
    iput-object p2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 735
    :goto_3c
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 736
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public blacklist setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 754
    if-eqz p2, :cond_e

    .line 758
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_5
    iput-object p2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 760
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 761
    monitor-exit v0

    .line 762
    return-void

    .line 761
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p1

    .line 755
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
