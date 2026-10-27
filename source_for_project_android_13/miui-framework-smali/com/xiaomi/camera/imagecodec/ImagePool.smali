.class public Lcom/xiaomi/camera/imagecodec/ImagePool;
.super Ljava/lang/Object;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;,
        Lcom/xiaomi/camera/imagecodec/ImagePool$HalImagePoolHolder;,
        Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;
    }
.end annotation


# static fields
.field private static final blacklist MAX_IMAGE_POOL_SIZE_DEFAULT:I = 0x3c

.field private static final blacklist MIVI_MATRIX_API_VERSION:I = 0x21c122

.field public static final blacklist STATIC_TAG:Ljava/lang/String; = "ImagePool"

.field private static final blacklist TRIM_POOL_IMAGES_COUNT:I = 0xa


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private final blacklist mAcquiredImageCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllAcquiredImageCount:I

.field private final blacklist mHoldImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/Image;",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImageQueueLock:Ljava/lang/Object;

.field private final blacklist mImageQueueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Lcom/xiaomi/camera/imagecodec/ImageQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImageReaderHandler:Landroid/os/Handler;

.field private final blacklist mImageReaderHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mImageWriterHandler:Landroid/os/Handler;

.field private final blacklist mImageWriterHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mPooledImageCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQueueSizeLock:Ljava/lang/Object;

.field private final blacklist mRowStrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist sInited:Z

.field private blacklist sMaxAcquireImageCount:I

.field private blacklist sMaxDequeueImageCount:I

.field private blacklist sMaxSize:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxSize:I

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageWriterHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    .line 43
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImageReaderHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    .line 60
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueLock:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    .line 66
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandler:Landroid/os/Handler;

    .line 69
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/xiaomi/camera/imagecodec/ImagePool-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I
    .registers 6
    .param p1, "queueKey"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .param p2, "number"    # I

    .line 396
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 397
    .local v0, "size":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 400
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_22

    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 404
    :cond_22
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private blacklist changePooledImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I
    .registers 6
    .param p1, "queueKey"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .param p2, "number"    # I

    .line 409
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 410
    .local v0, "size":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 413
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_22

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 417
    :cond_22
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private blacklist createImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Z)Lcom/xiaomi/camera/imagecodec/ImageQueue;
    .registers 11
    .param p1, "imageFormat"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .param p2, "cache"    # Z

    .line 193
    new-instance v6, Lcom/xiaomi/camera/imagecodec/ImageQueue;

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    iget v5, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/camera/imagecodec/ImageQueue;-><init>(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Landroid/os/Handler;Landroid/os/Handler;II)V

    .line 195
    .local v0, "queue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    if-eqz p2, :cond_45

    .line 196
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_14
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_40

    .line 199
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Too much(%d) ImageQueue are created"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    .line 200
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 199
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_40
    monitor-exit v1

    goto :goto_45

    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_42

    throw v2

    .line 204
    :cond_45
    :goto_45
    return-object v0
.end method

.method private blacklist getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I
    .registers 4
    .param p1, "queueKey"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    .line 356
    if-eqz p1, :cond_11

    .line 357
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 358
    .local v0, "size":Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 359
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 363
    .end local v0    # "size":Ljava/lang/Integer;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;
    .registers 1

    .line 117
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool$HalImagePoolHolder;->sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;

    return-object v0
.end method

.method private blacklist getImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Lcom/xiaomi/camera/imagecodec/ImageQueue;
    .registers 4
    .param p1, "imageFormat"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    .line 180
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ImageQueue;

    monitor-exit v0

    return-object v1

    .line 182
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;
    .registers 1

    .line 108
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;->sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;

    return-object v0
.end method

.method public static blacklist getMiviMatrixVersion()I
    .registers 1

    .line 576
    const v0, 0x21c122

    return v0
.end method

.method public static blacklist makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;
    .registers 12
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxCount"    # I
    .param p2, "isCameraUsage"    # Z

    .line 494
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_b

    .line 495
    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v0

    return-object v0

    .line 498
    :cond_b
    const-class v0, Landroid/media/ImageWriter;

    .line 499
    .local v0, "writerCls":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 500
    .local v1, "result":Landroid/media/ImageWriter;
    const/4 v2, 0x0

    .line 503
    .local v2, "desiredMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    :try_start_10
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/Surface;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 504
    .local v4, "params":[Ljava/lang/Class;
    const-string v5, "newInstance"

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v2, v5

    .line 505
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 506
    const/4 v5, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 507
    .local v3, "tmpResult":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroid/media/ImageWriter;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_43} :catch_45

    move-object v1, v5

    .line 511
    .end local v3    # "tmpResult":Ljava/lang/Object;
    .end local v4    # "params":[Ljava/lang/Class;
    goto :goto_51

    .line 508
    :catch_45
    move-exception v3

    .line 509
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ImagePool"

    const-string v5, "could not find our method, try android method"

    invoke-static {v4, v5}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    .line 512
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_51
    return-object v1
.end method

.method private blacklist needTrimPoolBuffer()Z
    .registers 7

    .line 451
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 452
    .local v0, "threshold":I
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_b
    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxSize:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_14

    .line 454
    monitor-exit v1

    return v4

    .line 457
    :cond_14
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 458
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3e

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v0, :cond_3e

    .line 459
    monitor-exit v1

    return v4

    .line 461
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Ljava/lang/Integer;>;"
    :cond_3e
    goto :goto_1e

    .line 463
    :cond_3f
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 464
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_69

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v0, :cond_69

    .line 465
    monitor-exit v1

    return v4

    .line 467
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Ljava/lang/Integer;>;"
    :cond_69
    goto :goto_49

    .line 468
    :cond_6a
    monitor-exit v1

    .line 470
    const/4 v1, 0x0

    return v1

    .line 468
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_b .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method public static blacklist toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .registers 5
    .param p0, "image"    # Landroid/media/Image;

    .line 422
    if-eqz p0, :cond_14

    .line 423
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    return-object v0

    .line 425
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist clear()V
    .registers 4

    .line 430
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "clear: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :try_start_7
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_42

    .line 433
    :try_start_a
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/imagecodec/ImageQueue;

    .line 434
    .local v2, "queue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->close()V

    .line 435
    .end local v2    # "queue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    goto :goto_14

    .line 436
    :cond_24
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 437
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_3f

    .line 439
    :try_start_2a
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_42

    .line 440
    :try_start_2d
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 441
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 442
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    .line 443
    monitor-exit v0

    .line 446
    goto :goto_4a

    .line 443
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3c

    .end local p0    # "this":Lcom/xiaomi/camera/imagecodec/ImagePool;
    :try_start_3e
    throw v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_42

    .line 437
    .restart local p0    # "this":Lcom/xiaomi/camera/imagecodec/ImagePool;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local p0    # "this":Lcom/xiaomi/camera/imagecodec/ImagePool;
    :try_start_41
    throw v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_42

    .line 444
    .restart local p0    # "this":Lcom/xiaomi/camera/imagecodec/ImagePool;
    :catch_42
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v2, "clear ImagePool cause error: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "clear: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method public blacklist getAcquiredImageCountLocked()I
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 374
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 375
    .local v2, "result":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 376
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v2, :cond_25

    .line 377
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v5

    .line 379
    .end local v4    # "i":Ljava/lang/Integer;
    :cond_25
    goto :goto_e

    .line 380
    :cond_26
    monitor-exit v0

    return v2

    .line 381
    .end local v1    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v2    # "result":I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist getAllAcquiredImageCount()I
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_3
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    monitor-exit v0

    return v1

    .line 392
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;
    .registers 8
    .param p1, "imageFormat"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "imageQueue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_4
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Lcom/xiaomi/camera/imagecodec/ImageQueue;

    move-result-object v2

    move-object v0, v2

    .line 248
    if-nez v0, :cond_11

    .line 249
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->createImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Z)Lcom/xiaomi/camera/imagecodec/ImageQueue;

    move-result-object v2

    move-object v0, v2

    .line 251
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_44

    .line 252
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->dequeueImage()Landroid/media/Image;

    move-result-object v1

    .line 253
    .local v1, "image":Landroid/media/Image;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/media/Image;->setTimestamp(J)V

    .line 254
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnEmptyImage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v1

    .line 251
    .end local v1    # "image":Landroid/media/Image;
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public blacklist getImage(J)Landroid/media/Image;
    .registers 7
    .param p1, "timestamp"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "use getImage(ImageFormat, long) instead of this deprecated API"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_a
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/imagecodec/ImageQueue;

    .line 152
    .local v2, "imageQueue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->getImage(J)Landroid/media/Image;

    move-result-object v3

    .line 153
    .local v3, "image":Landroid/media/Image;
    if-eqz v3, :cond_28

    .line 154
    monitor-exit v0

    return-object v3

    .line 156
    .end local v2    # "imageQueue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    .end local v3    # "image":Landroid/media/Image;
    :cond_28
    goto :goto_14

    .line 157
    :cond_29
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 158
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist getImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;J)Landroid/media/Image;
    .registers 10
    .param p1, "imageFormat"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .param p2, "timestamp"    # J

    .line 169
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Lcom/xiaomi/camera/imagecodec/ImageQueue;

    move-result-object v0

    .line 170
    .local v0, "imageQueue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    if-nez v0, :cond_39

    .line 171
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 171
    const-string v4, "getImage: no image queue with size %dx%d and format %d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    return-object v1

    .line 176
    :cond_39
    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->getImage(J)Landroid/media/Image;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getRowStride(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)[I
    .registers 9
    .param p1, "imageFormat"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    .line 219
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 220
    .local v0, "stride":[I
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 221
    return-object v0

    .line 224
    :cond_e
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->createImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Z)Lcom/xiaomi/camera/imagecodec/ImageQueue;

    move-result-object v1

    .line 225
    .local v1, "imageQueue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->dequeueImage()Landroid/media/Image;

    move-result-object v2

    .line 226
    .local v2, "image":Landroid/media/Image;
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 227
    .local v3, "planes":[Landroid/media/Image$Plane;
    array-length v4, v3

    new-array v4, v4, [I

    .line 228
    .local v4, "planeStride":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    array-length v6, v3

    if-ge v5, v6, :cond_2d

    .line 229
    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aput v6, v4, v5

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 232
    .end local v5    # "i":I
    :cond_2d
    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 234
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->close()V

    .line 235
    return-object v4
.end method

.method public blacklist holdImage(Landroid/media/Image;)V
    .registers 9
    .param p1, "image"    # Landroid/media/Image;

    .line 259
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    if-eqz p1, :cond_59

    .line 261
    :try_start_5
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v1

    .line 262
    .local v1, "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    move-result v3

    .line 264
    .local v3, "size":I
    iget v4, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    .line 265
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "holdImage: image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " qSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | totalSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 269
    .end local v1    # "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v3    # "size":I
    :cond_59
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public blacklist init(II)V
    .registers 4
    .param p1, "maxAcquireCount"    # I
    .param p2, "maxDequeueCount"    # I

    .line 79
    const/16 v0, 0x3c

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->init(III)V

    .line 80
    return-void
.end method

.method public blacklist init(III)V
    .registers 10
    .param p1, "maxAcquireCount"    # I
    .param p2, "maxDequeueCount"    # I
    .param p3, "size"    # I

    .line 83
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    if-eqz v0, :cond_5

    .line 84
    return-void

    .line 87
    :cond_5
    const-string v0, " maxDequeueCount="

    if-lez p1, :cond_5a

    if-gtz p2, :cond_c

    goto :goto_5a

    .line 93
    :cond_c
    add-int v1, p1, p2

    const/16 v2, 0x40

    const/4 v3, 0x1

    if-lt v1, v2, :cond_31

    .line 94
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 94
    const-string v3, "maxAcquireCount(%d) + maxDequeueCount(%d) should not be larger than 64"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 100
    :cond_31
    iput-boolean v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    .line 101
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    .line 102
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    .line 103
    iput p3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxSize:I

    .line 104
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: maxAcquireCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 88
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter: maxAcquireCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public blacklist isImageQueueFull(I)Z
    .registers 6
    .param p1, "reserve"    # I

    .line 309
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 311
    .local v1, "maxSize":I
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked()I

    move-result v3

    .line 312
    .local v3, "size":I
    if-lt v3, v1, :cond_12

    const/4 v2, 0x1

    :cond_12
    monitor-exit v0

    return v2

    .line 313
    .end local v1    # "maxSize":I
    .end local v3    # "size":I
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z
    .registers 9
    .param p1, "queueKey"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .param p2, "reserve"    # I

    .line 299
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Lcom/xiaomi/camera/imagecodec/ImageQueue;

    move-result-object v0

    .line 300
    .local v0, "imageQueue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    if-eqz v0, :cond_e

    :try_start_9
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->getMaxAcquireImageCount()I

    move-result v2

    goto :goto_10

    :cond_e
    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    .line 302
    .local v2, "maxCount":I
    :goto_10
    sub-int v3, v2, p2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 303
    .local v3, "maxSize":I
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I

    move-result v5

    .line 304
    .local v5, "size":I
    if-lt v5, v3, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    monitor-exit v1

    return v4

    .line 305
    .end local v2    # "maxCount":I
    .end local v3    # "maxSize":I
    .end local v5    # "size":I
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public blacklist isImageQueueTotalFull()Z
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImageQueueTotalFull: totalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxSize:I

    if-lt v1, v2, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    monitor-exit v0

    return v1

    .line 325
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist queueImage(Landroid/media/Image;)V
    .registers 6
    .param p1, "image"    # Landroid/media/Image;

    .line 130
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v0

    .line 131
    .local v0, "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Lcom/xiaomi/camera/imagecodec/ImageQueue;

    move-result-object v1

    .line 132
    .local v1, "queue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    const/4 v2, 0x1

    if-nez v1, :cond_f

    .line 133
    invoke-direct {p0, v0, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->createImageQueue(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Z)Lcom/xiaomi/camera/imagecodec/ImageQueue;

    move-result-object v1

    .line 135
    :cond_f
    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->queueImage(Landroid/media/Image;)V

    .line 137
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 138
    :try_start_15
    invoke-direct {p0, v0, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changePooledImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    .line 139
    monitor-exit v3

    .line 140
    return-void

    .line 139
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public blacklist releaseImage(Landroid/media/Image;)V
    .registers 8
    .param p1, "image"    # Landroid/media/Image;

    .line 273
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    if-eqz p1, :cond_6b

    .line 275
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    .line 276
    .local v1, "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    if-eqz v1, :cond_53

    .line 277
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    move-result v2

    .line 279
    .local v2, "size":I
    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    .line 280
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseImage: image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " qSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | totalSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 283
    .end local v2    # "size":I
    goto :goto_6b

    .line 284
    :cond_53
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseImage: not hold image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v1    # "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    :cond_6b
    :goto_6b
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_5 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public blacklist trimPoolBuffer()V
    .registers 4

    .line 480
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "trimPoolBuffer: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_a
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageQueueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/imagecodec/ImageQueue;

    .line 483
    .local v2, "queue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->discardFreeBuffers()V

    .line 484
    .end local v2    # "queue":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    goto :goto_14

    .line 485
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_39

    .line 487
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_28
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 489
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_36

    .line 490
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "trimPoolBuffer: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    .line 489
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    .line 485
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public blacklist trimPoolBufferIfNeeded()V
    .registers 2

    .line 474
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->needTrimPoolBuffer()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 475
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 477
    :cond_9
    return-void
.end method

.method public blacklist waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V
    .registers 9
    .param p1, "queueKey"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .param p2, "reserve"    # I
    .param p3, "waitMillisecond"    # I

    .line 339
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 340
    .local v0, "maxSize":I
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :goto_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I

    move-result v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_2e

    if-lt v2, v0, :cond_2c

    .line 343
    if-lez p3, :cond_1a

    .line 344
    :try_start_13
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    goto :goto_1f

    .line 346
    :cond_1a
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1f} :catch_20
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2e

    .line 350
    :goto_1f
    goto :goto_b

    .line 348
    :catch_20
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_21
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    nop

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_b

    .line 352
    :cond_2c
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    throw v2
.end method
