.class public Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source "SoftwareCodecReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
            "Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field private final blacklist mDataLock:Ljava/lang/Object;

.field private blacklist mInitialized:Z

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
.method static bridge synthetic blacklist -$$Nest$mcheckAndPrepare(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->checkAndPrepare()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoCompress(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->doCompress()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseWakeLock(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->releaseWakeLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;-><init>()V

    return-void
.end method

.method private blacklist acquireWakeLock()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    .line 285
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 288
    :cond_14
    return-void
.end method

.method private blacklist checkAndPrepare()Z
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 192
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "checkConditionIsReady: processor is busy!"

    invoke-static {v1, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v0

    return v2

    .line 195
    :cond_11
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 196
    .local v1, "jobData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_26

    .line 197
    if-nez v1, :cond_24

    .line 198
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "checkConditionIsReady: ignore null request!"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v2

    .line 201
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 196
    .end local v1    # "jobData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist doCompress()V
    .registers 23

    .line 206
    move-object/from16 v1, p0

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "doCompress: E"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_c
    iget-object v3, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iput-object v3, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 212
    if-nez v3, :cond_1f

    .line 213
    const-string v3, "mCurrentProcessingData is null!"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v2

    return-void

    .line 216
    :cond_1f
    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v3

    .line 217
    .local v3, "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    if-nez v3, :cond_2c

    .line 218
    const-string v4, "doCompress: null metadata!"

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v2

    return-void

    .line 221
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doCompress: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getJpegQuality()I

    move-result v4

    int-to-byte v4, v4

    .line 224
    .local v4, "jpegQuality":B
    iget-object v5, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v5

    .line 225
    .local v5, "imageFormat":I
    iget-object v6, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/Image;

    move-object v3, v6

    .line 226
    .local v3, "yuvImage":Landroid/media/Image;
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_c .. :try_end_64} :catchall_1a1

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mReprocessStartTime:J

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCompress: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " | "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v2, 0x100

    if-ne v2, v5, :cond_174

    .line 231
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    .line 232
    .local v2, "planes":[Landroid/media/Image$Plane;
    aget-object v8, v2, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 233
    .local v8, "yBuffer":Ljava/nio/ByteBuffer;
    const/4 v9, 0x2

    aget-object v10, v2, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 234
    .local v10, "uvBuffer":Ljava/nio/ByteBuffer;
    new-array v11, v9, [I

    aget-object v12, v2, v7

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    aput v12, v11, v7

    aget-object v12, v2, v9

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    const/4 v13, 0x1

    aput v12, v11, v13

    .line 235
    .local v11, "strides":[I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v14

    sub-int/2addr v12, v14

    aget v14, v11, v7

    add-int/2addr v12, v14

    .line 236
    .local v12, "ySize":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    .line 237
    .local v15, "uvSize":I
    add-int v14, v12, v15

    new-array v14, v14, [B

    .line 238
    .local v14, "data":[B
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 239
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 240
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v8, v14, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {v10, v14, v12, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 242
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v16, 0x11

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v17

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v18

    move-object/from16 v20, v14

    .end local v14    # "data":[B
    .local v20, "data":[B
    move-object v14, v6

    move/from16 v21, v15

    .end local v15    # "uvSize":I
    .local v21, "uvSize":I
    move-object/from16 v15, v20

    move-object/from16 v19, v11

    invoke-direct/range {v14 .. v19}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 243
    .local v6, "image":Landroid/graphics/YuvImage;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .local v14, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_f7
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v13

    invoke-direct {v15, v7, v7, v9, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v15, v4, v14}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 246
    iget-object v9, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_10a} :catch_15c

    .line 247
    :try_start_10a
    iget-object v13, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v13}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v13

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    iget-object v7, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v15, v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onJpegAvailable([BLjava/lang/String;)V

    .line 248
    const-string v7, "jpeg quality %d return for %s. cost=%d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    const/16 v18, 0x0

    aput-object v15, v13, v18

    iget-object v15, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v15}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v13, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17
    :try_end_138
    .catchall {:try_start_10a .. :try_end_138} :catchall_152

    move v15, v4

    move/from16 v19, v5

    .end local v4    # "jpegQuality":B
    .end local v5    # "imageFormat":I
    .local v15, "jpegQuality":B
    .local v19, "imageFormat":I
    :try_start_13b
    iget-wide v4, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mReprocessStartTime:J

    sub-long v17, v17, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v13, v5

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 250
    monitor-exit v9

    .line 253
    goto :goto_169

    .line 250
    .end local v15    # "jpegQuality":B
    .end local v19    # "imageFormat":I
    .restart local v4    # "jpegQuality":B
    .restart local v5    # "imageFormat":I
    :catchall_152
    move-exception v0

    move v15, v4

    move/from16 v19, v5

    .end local v4    # "jpegQuality":B
    .end local v5    # "imageFormat":I
    .restart local v15    # "jpegQuality":B
    .restart local v19    # "imageFormat":I
    :goto_156
    monitor-exit v9
    :try_end_157
    .catchall {:try_start_13b .. :try_end_157} :catchall_15a

    .end local v2    # "planes":[Landroid/media/Image$Plane;
    .end local v3    # "yuvImage":Landroid/media/Image;
    .end local v6    # "image":Landroid/graphics/YuvImage;
    .end local v8    # "yBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "uvBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "strides":[I
    .end local v12    # "ySize":I
    .end local v14    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "jpegQuality":B
    .end local v19    # "imageFormat":I
    .end local v20    # "data":[B
    .end local v21    # "uvSize":I
    .end local p0    # "this":Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;
    :try_start_157
    throw v0
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_158} :catch_158

    .line 251
    .restart local v2    # "planes":[Landroid/media/Image$Plane;
    .restart local v3    # "yuvImage":Landroid/media/Image;
    .restart local v6    # "image":Landroid/graphics/YuvImage;
    .restart local v8    # "yBuffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "uvBuffer":Ljava/nio/ByteBuffer;
    .restart local v11    # "strides":[I
    .restart local v12    # "ySize":I
    .restart local v14    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "jpegQuality":B
    .restart local v19    # "imageFormat":I
    .restart local v20    # "data":[B
    .restart local v21    # "uvSize":I
    .restart local p0    # "this":Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;
    :catch_158
    move-exception v0

    goto :goto_160

    .line 250
    :catchall_15a
    move-exception v0

    goto :goto_156

    .line 251
    .end local v15    # "jpegQuality":B
    .end local v19    # "imageFormat":I
    .restart local v4    # "jpegQuality":B
    .restart local v5    # "imageFormat":I
    :catch_15c
    move-exception v0

    move v15, v4

    move/from16 v19, v5

    .line 252
    .end local v4    # "jpegQuality":B
    .end local v5    # "imageFormat":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "jpegQuality":B
    .restart local v19    # "imageFormat":I
    :goto_160
    sget-object v4, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_169
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 255
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 256
    .end local v2    # "planes":[Landroid/media/Image$Plane;
    .end local v6    # "image":Landroid/graphics/YuvImage;
    .end local v8    # "yBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "uvBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "strides":[I
    .end local v12    # "ySize":I
    .end local v14    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "data":[B
    .end local v21    # "uvSize":I
    goto :goto_193

    .line 259
    .end local v15    # "jpegQuality":B
    .end local v19    # "imageFormat":I
    .restart local v4    # "jpegQuality":B
    .restart local v5    # "imageFormat":I
    :cond_174
    move v15, v4

    move/from16 v19, v5

    .end local v4    # "jpegQuality":B
    .end local v5    # "imageFormat":I
    .restart local v15    # "jpegQuality":B
    .restart local v19    # "imageFormat":I
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 261
    :try_start_17a
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 262
    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v5

    .line 261
    invoke-interface {v0, v3, v2, v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onYuvAvailable(Landroid/media/Image;Ljava/lang/String;Z)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 264
    monitor-exit v4
    :try_end_193
    .catchall {:try_start_17a .. :try_end_193} :catchall_19e

    .line 267
    :goto_193
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->doNextJob()V

    .line 268
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "doCompress: X"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 264
    :catchall_19e
    move-exception v0

    :try_start_19f
    monitor-exit v4
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    throw v0

    .line 226
    .end local v3    # "yuvImage":Landroid/media/Image;
    .end local v15    # "jpegQuality":B
    .end local v19    # "imageFormat":I
    :catchall_1a1
    move-exception v0

    :try_start_1a2
    monitor-exit v2
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    throw v0
.end method

.method private blacklist doNextJob()V
    .registers 7

    .line 161
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    if-nez v1, :cond_11

    .line 163
    const-string v1, "doNextJob: NOT initialized!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 167
    :cond_11
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_14
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2b

    .line 169
    const-string v2, "doNextJob: idle. Try to close device 30s later."

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    monitor-exit v1

    return-void

    .line 173
    :cond_2b
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 174
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_55

    .line 179
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 180
    const-string v1, "doNextJob: BUSY"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 182
    :cond_48
    const-string v1, "doNextJob: send MSG_DO_NEXT_JOB"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    :goto_54
    return-void

    .line 177
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method

.method private static blacklist getImageBuffer(Landroid/media/Image;)[B
    .registers 4
    .param p0, "image"    # Landroid/media/Image;

    .line 272
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 273
    .local v0, "planes":[Landroid/media/Image$Plane;
    array-length v1, v0

    if-lez v1, :cond_18

    .line 274
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 275
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 276
    .local v2, "data":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 277
    return-object v2

    .line 279
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist releaseWakeLock()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 292
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 295
    :cond_14
    return-void
.end method


# virtual methods
.method public blacklist deInit()V
    .registers 3

    .line 82
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_a
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    if-nez v1, :cond_10

    .line 85
    monitor-exit v0

    return-void

    .line 87
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 89
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_34

    .line 91
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2c

    .line 92
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 94
    :try_start_1e
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 95
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 96
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_27} :catch_28

    .line 99
    goto :goto_2c

    .line 97
    :catch_28
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 101
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2c
    :goto_2c
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 89
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_a
    iget-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    if-nez v2, :cond_3c

    .line 66
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 67
    .local v2, "powerManager":Landroid/os/PowerManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 70
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "RequestDispatcher"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 71
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v4, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    .line 74
    iput-boolean v3, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    .line 76
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_43

    .line 77
    const-string v1, "init: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 76
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public blacklist setOutputPictureSpec(III)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 106
    const/16 v0, 0x100

    if-ne p3, v0, :cond_40

    .line 109
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    if-nez v0, :cond_3f

    .line 110
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

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

    .line 111
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 113
    :cond_3f
    return-void

    .line 107
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only supports JPEG encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 12
    .param p1, "data"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 117
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

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

    .line 119
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    if-nez v1, :cond_28

    .line 120
    const-string v1, "submit: drop this request due to no callback was provided!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 123
    :cond_28
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    if-eqz v1, :cond_c7

    .line 127
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->acquireWakeLock()V

    .line 129
    const/4 v1, 0x2

    .line 130
    .local v1, "reserve":I
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v2

    if-nez v2, :cond_b7

    .line 131
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 132
    .local v2, "inputImage":Landroid/media/Image;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v4

    .line 133
    .local v4, "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 134
    const-string v5, "submit: wait image pool>>"

    invoke-static {v0, v5}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v6, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 136
    const-string v3, "submit: wait image pool<<"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_64
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    .line 141
    .local v5, "timestamp":J
    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v3

    .line 142
    .local v3, "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 143
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v7

    invoke-virtual {v7, v3, v5, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;J)Landroid/media/Image;

    move-result-object v7

    .line 144
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

    .line 145
    invoke-virtual {p1, v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;

    .line 146
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 147
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v8

    .line 148
    .local v8, "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    if-eqz v8, :cond_b7

    .line 149
    const-string v9, "close original image"

    invoke-static {v0, v9}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 154
    .end local v2    # "inputImage":Landroid/media/Image;
    .end local v3    # "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v4    # "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v5    # "timestamp":J
    .end local v7    # "image":Landroid/media/Image;
    .end local v8    # "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    :cond_b7
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_ba
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_ba .. :try_end_c0} :catchall_c4

    .line 157
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->doNextJob()V

    .line 158
    return-void

    .line 156
    :catchall_c4
    move-exception v2

    :try_start_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v2

    .line 124
    .end local v1    # "reserve":I
    :cond_c7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT initialized. Call init() first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
