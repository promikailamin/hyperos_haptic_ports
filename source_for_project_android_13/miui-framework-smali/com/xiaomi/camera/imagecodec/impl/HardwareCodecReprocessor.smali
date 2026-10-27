.class public Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source "HardwareCodecReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;
    }
.end annotation


# static fields
.field private static final blacklist MAX_IMAGE_BUFFER_SIZE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
            "Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCodecLock:Ljava/lang/Object;

.field private blacklist mCodecOperationHandler:Landroid/os/Handler;

.field private blacklist mCodecOperationThread:Landroid/os/HandlerThread;

.field private blacklist mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field private final blacklist mDataLock:Ljava/lang/Object;

.field private blacklist mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

.field private blacklist mInitialized:Z

.field private blacklist mJpegImageReader:Landroid/media/ImageReader;

.field private blacklist mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

.field private blacklist mReprocessStartTime:J

.field private blacklist mRequestDispatchHandler:Landroid/os/Handler;

.field private blacklist mRequestDispatchThread:Landroid/os/HandlerThread;

.field private blacklist mTaskDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCodecLock(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataLock(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/media/imagecodec/ImageCodec;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReprocessStartTime(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mReprocessStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Lcom/xiaomi/media/imagecodec/ImageCodec;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckConditionIsReady(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->checkConditionIsReady()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseWakeLock(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->releaseWakeLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreprocessImage(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->reprocessImage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendReprocessRequest(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->sendReprocessRequest()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetJpegData(Landroid/media/Image;)[B
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;-><init>()V

    return-void
.end method

.method private blacklist acquireWakeLock()V
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    .line 406
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 409
    :cond_14
    return-void
.end method

.method private blacklist checkConditionIsReady()Z
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 250
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "checkConditionIsReady: processor is busy!"

    invoke-static {v1, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    monitor-exit v0

    return v2

    .line 253
    :cond_11
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 254
    .local v1, "reprocessData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_29

    .line 255
    if-nez v1, :cond_24

    .line 256
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "checkConditionIsReady: ignore null request!"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v2

    .line 260
    :cond_24
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->createImageCodecIfNeed(Lcom/xiaomi/camera/imagecodec/ReprocessData;)Z

    move-result v0

    return v0

    .line 254
    .end local v1    # "reprocessData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private blacklist createImageCodecIfNeed(Lcom/xiaomi/camera/imagecodec/ReprocessData;)Z
    .registers 10
    .param p1, "reprocessData"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 227
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 228
    .local v0, "yuvImage":Landroid/media/Image;
    new-instance v2, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 229
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 230
    .local v2, "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    new-instance v3, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 231
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputWidth()I

    move-result v4

    .line 232
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputHeight()I

    move-result v5

    .line 233
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    .line 234
    .local v3, "outputConfig":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    sget-object v4, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " YUV  INPUT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " YUV OUTPUT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v4

    .line 237
    const/16 v5, 0x100

    :try_start_60
    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_68

    move v1, v7

    .line 238
    .local v1, "isJpeg":Z
    :cond_68
    if-eqz v1, :cond_6d

    .line 239
    invoke-direct {p0, v2, v3}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->initImageReaderAndImageCodec(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    .line 241
    :cond_6d
    monitor-exit v4

    return v7

    .line 242
    .end local v1    # "isJpeg":Z
    :catchall_6f
    move-exception v1

    monitor-exit v4
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method private static blacklist getJpegData(Landroid/media/Image;)[B
    .registers 4
    .param p0, "image"    # Landroid/media/Image;

    .line 393
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 394
    .local v0, "planes":[Landroid/media/Image$Plane;
    array-length v1, v0

    if-lez v1, :cond_18

    .line 395
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 396
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 397
    .local v2, "data":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 398
    return-object v2

    .line 400
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist initImageReaderAndImageCodec(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V
    .registers 9
    .param p1, "inputConfiguration"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "outputConfiguration"    # Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 325
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "initImageReaderAndImageCodec: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    .line 328
    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_22

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    .line 329
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_3e

    .line 330
    :cond_22
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-eqz v1, :cond_32

    .line 331
    const-string v1, "initImageReader: closing obsolete image codec"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-virtual {v1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->release()V

    .line 333
    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 335
    :cond_32
    const-string v1, "initImageReader: closing obsolete reprocess reader"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 337
    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    .line 340
    :cond_3e
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_64

    .line 341
    const-string v1, "initImageReader: create new one"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    nop

    .line 343
    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v1

    .line 344
    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v3

    const/16 v4, 0x100

    const/4 v5, 0x2

    .line 342
    invoke-static {v1, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    .line 346
    new-instance v3, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;

    invoke-direct {v3, p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;-><init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    goto :goto_69

    .line 367
    :cond_64
    const-string v1, "initImageReader: reuse old one"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_69
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-eqz v1, :cond_93

    .line 371
    invoke-virtual {v1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->getInputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    move-result-object v1

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_87

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 372
    invoke-virtual {v1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->getInputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    move-result-object v1

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_93

    .line 373
    :cond_87
    const-string v1, "initImageCodec: closing obsolete image codec"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-virtual {v1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->release()V

    .line 375
    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 378
    :cond_93
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-nez v1, :cond_b7

    .line 379
    const-string v1, "initImageCodec: create new one"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    nop

    .line 381
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v1

    .line 382
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    .line 380
    invoke-static {v1, v2, v3}, Lcom/xiaomi/media/imagecodec/ImageCodec;->create(III)Lcom/xiaomi/media/imagecodec/ImageCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 384
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_bc

    .line 386
    :cond_b7
    const-string v1, "initImageCodec: reuse old one"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_bc
    const-string v1, "initImageReaderAndImageCodec: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method private blacklist releaseWakeLock()V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 413
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 416
    :cond_14
    return-void
.end method

.method private blacklist reprocessImage()V
    .registers 12

    .line 265
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_a
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 272
    if-nez v2, :cond_1d

    .line 273
    const-string v2, "mCurrentProcessingData is null!"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    monitor-exit v1

    return-void

    .line 276
    :cond_1d
    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    .line 277
    .local v2, "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    if-nez v2, :cond_2a

    .line 278
    const-string v3, "reprocessImage: null metadata!"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    monitor-exit v1

    return-void

    .line 281
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocessImage: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v3, 0x0

    .line 284
    .local v3, "flip":Z
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getJpegQuality()I

    move-result v4

    int-to-byte v10, v4

    .line 285
    .local v10, "jpegQuality":B
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v7

    .line 286
    .local v7, "imageFormat":I
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/media/Image;

    .line 287
    .end local v2    # "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    .local v6, "yuvImage":Landroid/media/Image;
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_a .. :try_end_63} :catchall_7f

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mReprocessStartTime:J

    .line 290
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_79

    .line 291
    new-instance v2, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;

    move-object v4, v2

    move-object v5, p0

    move v8, v3

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;-><init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Landroid/media/Image;IZB)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :cond_79
    const-string v1, "reprocessImage: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 287
    .end local v3    # "flip":Z
    .end local v6    # "yuvImage":Landroid/media/Image;
    .end local v7    # "imageFormat":I
    .end local v10    # "jpegQuality":B
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method private blacklist sendReprocessRequest()V
    .registers 7

    .line 197
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    if-nez v1, :cond_11

    .line 200
    const-string v1, "sendReprocessRequest: NOT initialized!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 205
    :cond_11
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_14
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2b

    .line 207
    const-string v2, "sendReprocessRequest: idle. Try to close device 30s later."

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    monitor-exit v1

    return-void

    .line 211
    :cond_2b
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 212
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_55

    .line 217
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 218
    const-string v1, "sendReprocessRequest: BUSY"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 220
    :cond_48
    const-string v1, "sendReprocessRequest: send MSG_REPROCESS_IMAGE"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    :goto_54
    return-void

    .line 215
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method


# virtual methods
.method public blacklist deInit()V
    .registers 4

    .line 98
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_a
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    if-nez v1, :cond_10

    .line 101
    monitor-exit v0

    return-void

    .line 103
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 105
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_5b

    .line 107
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v2

    .line 108
    :try_start_1a
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    .line 109
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-eqz v0, :cond_25

    .line 110
    invoke-virtual {v0}, Lcom/xiaomi/media/imagecodec/ImageCodec;->release()V

    .line 111
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 113
    :cond_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_58

    .line 115
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3b

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 118
    :try_start_2d
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 119
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    .line 120
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationHandler:Landroid/os/Handler;
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_36} :catch_37

    .line 123
    goto :goto_3b

    .line 121
    :catch_37
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_50

    .line 127
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 129
    :try_start_42
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 130
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 131
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_4b} :catch_4c

    .line 134
    goto :goto_50

    .line 132
    :catch_4c
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 136
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_50
    :goto_50
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 113
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0

    .line 105
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 420
    invoke-static {}, Lcom/xiaomi/media/imagecodec/ImageCodec;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_a
    iget-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    if-nez v2, :cond_55

    .line 78
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 79
    .local v2, "powerManager":Landroid/os/PowerManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 82
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "ImageCodecThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    .line 83
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    .line 86
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "RequestDispatcher"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 87
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v4, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    .line 90
    iput-boolean v3, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    .line 92
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_a .. :try_end_56} :catchall_5c

    .line 93
    const-string v1, "init: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 92
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public blacklist setOutputPictureSpec(III)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 141
    const/16 v0, 0x100

    if-ne p3, v0, :cond_40

    .line 144
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    if-nez v0, :cond_3f

    .line 145
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputPictureSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 148
    :cond_3f
    return-void

    .line 142
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only supports JPEG encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 12
    .param p1, "data"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 152
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    if-nez v1, :cond_28

    .line 155
    const-string v1, "submit: drop this request due to no callback was provided!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 158
    :cond_28
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    if-eqz v1, :cond_c7

    .line 162
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->acquireWakeLock()V

    .line 164
    const/4 v1, 0x2

    .line 165
    .local v1, "reserve":I
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v2

    if-nez v2, :cond_b7

    .line 166
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 167
    .local v2, "inputImage":Landroid/media/Image;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v4

    .line 168
    .local v4, "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 169
    const-string v5, "submit: wait image pool>>"

    invoke-static {v0, v5}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v6, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 171
    const-string v3, "submit: wait image pool<<"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_64
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    .line 176
    .local v5, "timestamp":J
    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v3

    .line 177
    .local v3, "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 178
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v7

    invoke-virtual {v7, v3, v5, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;J)Landroid/media/Image;

    move-result-object v7

    .line 179
    .local v7, "image":Landroid/media/Image;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "submit: image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1, v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;

    .line 181
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 183
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v8

    .line 184
    .local v8, "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    if-eqz v8, :cond_b7

    .line 185
    const-string v9, "close original image"

    invoke-static {v0, v9}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 190
    .end local v2    # "inputImage":Landroid/media/Image;
    .end local v3    # "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v4    # "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v5    # "timestamp":J
    .end local v7    # "image":Landroid/media/Image;
    .end local v8    # "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    :cond_b7
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_ba
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_ba .. :try_end_c0} :catchall_c4

    .line 193
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->sendReprocessRequest()V

    .line 194
    return-void

    .line 192
    :catchall_c4
    move-exception v2

    :try_start_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v2

    .line 159
    .end local v1    # "reserve":I
    :cond_c7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT initialized. Call init() first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
