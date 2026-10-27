.class public Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source "IspInterfaceReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;,
        Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;,
        Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;,
        Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;,
        Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$TuningImageListener;
    }
.end annotation


# static fields
.field private static final blacklist MAX_IMAGE_BUFFER_SIZE:I = 0x2

.field private static final blacklist MAX_INPUT_STREAM_ID:I = 0x64

.field private static final blacklist MSG_DESTROY_ENCODER:I = 0x2

.field private static final blacklist MSG_EARLY_META:I = 0x66

.field private static final blacklist MSG_NATIVE_SERVICE_DIED:I = 0x65

.field private static final blacklist MSG_REPROCESS_IMAGE:I = 0x1


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

.field private final blacklist mCodecLock:Ljava/lang/Object;

.field private blacklist mCodecOperationHandler:Landroid/os/Handler;

.field private blacklist mCodecOperationThread:Landroid/os/HandlerThread;

.field private blacklist mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field private final blacklist mDataLock:Ljava/lang/Object;

.field private blacklist mInitialized:Z

.field private blacklist mIspInterfaceInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/camera/isp/IspInterfaceIO;",
            "Lcom/xiaomi/camera/isp/IspInterfaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxJpegSize:I

.field private blacklist mNextStreamId:I

.field private blacklist mRaw2YuvStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData;",
            "Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRawInputSize:Landroid/util/Size;

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

.field private blacklist mYuvTuningBufferSize:Landroid/util/Size;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCodecLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRaw2YuvStatusMap(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReprocessStartTime(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mReprocessStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/isp/IspInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckConditionIsReady(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->checkConditionIsReady()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearIspInterfaceList(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->clearIspInterfaceList()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessNativeMessage(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->processNativeMessage(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseReprocessData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseWakeLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseWakeLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreprocessImage(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->reprocessImage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendReprocessRequest(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->sendReprocessRequest()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetJpegData(Landroid/media/Image;)[B
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method protected constructor blacklist <init>()V
    .registers 4

    .line 106
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IspReprocessor@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 94
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    .line 109
    return-void
.end method

.method private blacklist acquireWakeLock()V
    .registers 3

    .line 772
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    .line 773
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 776
    :cond_14
    return-void
.end method

.method private blacklist align(II)I
    .registers 5
    .param p1, "size"    # I
    .param p2, "align"    # I

    .line 319
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p2, -0x1

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method private blacklist cacheIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;)V
    .registers 5
    .param p1, "key"    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
    .param p2, "ispInterfaceInfo"    # Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    .line 112
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 114
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_10
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist checkConditionIsReady()Z
    .registers 18

    .line 330
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 331
    :try_start_5
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    .line 332
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v4, "checkConditionIsReady: processor is busy!"

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    monitor-exit v2

    return v3

    .line 335
    :cond_13
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-object v4, v0

    .line 336
    .local v4, "reprocessData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_125

    .line 337
    if-nez v4, :cond_27

    .line 338
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "checkConditionIsReady: ignore null request!"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v3

    .line 342
    :cond_27
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputWidth()I

    move-result v2

    .line 343
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputHeight()I

    move-result v5

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v6

    invoke-direct {v0, v2, v5, v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    move-object v5, v0

    .line 345
    .local v5, "outputConfig":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/Image;

    .line 346
    .local v6, "mainImage":Landroid/media/Image;
    invoke-virtual {v6}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v2, 0x1

    const/16 v7, 0x20

    if-eq v7, v0, :cond_58

    const/16 v0, 0x25

    invoke-virtual {v6}, Landroid/media/Image;->getFormat()I

    move-result v8

    if-ne v0, v8, :cond_56

    goto :goto_58

    :cond_56
    move v0, v3

    goto :goto_59

    :cond_58
    :goto_58
    move v0, v2

    :goto_59
    move v8, v0

    .line 347
    .local v8, "isRawImage":Z
    if-eqz v8, :cond_61

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvInputWidth()I

    move-result v0

    goto :goto_65

    :cond_61
    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v0

    :goto_65
    move v9, v0

    .line 348
    .local v9, "yuvWidth":I
    if-eqz v8, :cond_6d

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvInputHeight()I

    move-result v0

    goto :goto_71

    :cond_6d
    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v0

    :goto_71
    move v10, v0

    .line 350
    .local v10, "yuvHeight":I
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v9, v10}, Landroid/util/Size;-><init>(II)V

    move-object v11, v0

    .line 351
    .local v11, "yuvInputSize":Landroid/util/Size;
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "yuvInputSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "rawInputSize":Landroid/util/Size;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->isMFNRSupported()Z

    move-result v12

    if-nez v12, :cond_9c

    if-eqz v8, :cond_9a

    goto :goto_9c

    :cond_9a
    move-object v7, v0

    goto :goto_e8

    .line 356
    :cond_9c
    :goto_9c
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getRawInputWidth()I

    move-result v12

    .line 357
    .local v12, "rawWidth":I
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getRawInputHeight()I

    move-result v13

    .line 358
    .local v13, "rawHeight":I
    if-lez v12, :cond_c7

    if-lez v13, :cond_c7

    .line 359
    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v12, v13}, Landroid/util/Size;-><init>(II)V

    move-object v0, v14

    .line 360
    iget-object v14, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rawInputSize = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    .line 362
    :cond_c7
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v9, v10}, Landroid/util/Size;-><init>(II)V

    move-object v0, v7

    .line 363
    iget-object v7, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "override rawInputSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_e5
    iput-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    move-object v7, v0

    .line 367
    .end local v0    # "rawInputSize":Landroid/util/Size;
    .end local v12    # "rawWidth":I
    .end local v13    # "rawHeight":I
    .local v7, "rawInputSize":Landroid/util/Size;
    :goto_e8
    if-eqz v8, :cond_f1

    invoke-virtual {v6}, Landroid/media/Image;->getFormat()I

    move-result v0

    move/from16 v16, v0

    goto :goto_f3

    :cond_f1
    const/16 v16, 0x20

    :goto_f3
    move/from16 v12, v16

    .line 368
    .local v12, "rawFormat":I
    new-instance v0, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-direct {v0, v11, v7, v5, v12}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;I)V

    move-object v13, v0

    .line 369
    .local v13, "io":Lcom/xiaomi/camera/isp/IspInterfaceIO;
    invoke-direct {v1, v13}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getCachedIspInterfaceInfo(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    move-result-object v0

    .line 370
    .local v0, "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    if-nez v0, :cond_112

    .line 371
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v3

    .line 372
    .local v3, "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    const/4 v14, 0x0

    .line 373
    .local v14, "settings":Landroid/os/Parcelable;
    if-eqz v3, :cond_10c

    .line 374
    invoke-virtual {v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v14

    .line 376
    :cond_10c
    invoke-direct {v1, v13, v14}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->createIspInterfaceInfo(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    move-result-object v0

    .line 377
    .end local v3    # "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    .end local v14    # "settings":Landroid/os/Parcelable;
    move-object v3, v0

    goto :goto_117

    .line 378
    :cond_112
    iget-object v14, v0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    iput-boolean v3, v14, Lcom/xiaomi/camera/isp/IspInterfaceIO;->isIdle:Z

    move-object v3, v0

    .line 381
    .end local v0    # "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    .local v3, "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    :goto_117
    iget-object v14, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v14

    .line 382
    :try_start_11a
    invoke-virtual {v3}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->getIspInterface()Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 383
    monitor-exit v14

    .line 384
    return v2

    .line 383
    :catchall_122
    move-exception v0

    monitor-exit v14
    :try_end_124
    .catchall {:try_start_11a .. :try_end_124} :catchall_122

    throw v0

    .line 336
    .end local v3    # "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    .end local v4    # "reprocessData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .end local v5    # "outputConfig":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .end local v6    # "mainImage":Landroid/media/Image;
    .end local v7    # "rawInputSize":Landroid/util/Size;
    .end local v8    # "isRawImage":Z
    .end local v9    # "yuvWidth":I
    .end local v10    # "yuvHeight":I
    .end local v11    # "yuvInputSize":Landroid/util/Size;
    .end local v12    # "rawFormat":I
    .end local v13    # "io":Lcom/xiaomi/camera/isp/IspInterfaceIO;
    :catchall_125
    move-exception v0

    :try_start_126
    monitor-exit v2
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    throw v0
.end method

.method private blacklist clearIspInterfaceList()V
    .registers 4

    .line 786
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    .line 788
    .local v2, "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    if-eqz v2, :cond_1e

    .line 789
    invoke-virtual {v2}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->release()V

    .line 791
    .end local v2    # "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    :cond_1e
    goto :goto_d

    .line 792
    :cond_1f
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 793
    monitor-exit v0

    .line 794
    return-void

    .line 793
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist createIspInterfaceInfo(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    .registers 28
    .param p1, "io"    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
    .param p2, "settings"    # Landroid/os/Parcelable;

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvInputSize()Landroid/util/Size;

    move-result-object v8

    .line 514
    .local v8, "yuvInputSize":Landroid/util/Size;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getRawInputSize()Landroid/util/Size;

    move-result-object v9

    .line 515
    .local v9, "rawInputSize":Landroid/util/Size;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v10

    .line 516
    .local v10, "picOutput":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createIspInterface>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v11, v1

    .line 517
    .local v11, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 518
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 517
    const-string v4, "yuvInput[%dx%d]"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    if-eqz v9, :cond_5f

    .line 520
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 521
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 520
    const-string v4, " rawInput[%dx%d]"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_5f
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 524
    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 523
    const-string v2, " output[%dx%d@%d]"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v1, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 530
    .local v6, "inputStreamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspStream;>;"
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getRowStride(III)[I

    move-result-object v19

    .line 532
    .local v19, "yuvPlaneStrides":[I
    new-instance v1, Lcom/xiaomi/camera/isp/IspStream;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getNextStreamId()I

    move-result v2

    int-to-long v13, v2

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v15

    .line 533
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v16

    const/16 v18, 0x23

    move-object v12, v1

    move-object/from16 v17, v19

    invoke-direct/range {v12 .. v18}, Lcom/xiaomi/camera/isp/IspStream;-><init>(JII[II)V

    move-object v5, v1

    .line 534
    .local v5, "yuvInputStream":Lcom/xiaomi/camera/isp/IspStream;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener-IA;)V

    move-object v4, v1

    .line 536
    .local v4, "picImageListener":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;
    iput-object v7, v4, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 537
    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v1

    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v12

    .line 538
    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v13

    .line 537
    invoke-direct {v0, v1, v12, v13, v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v20

    .line 541
    .local v20, "picReader":Landroid/media/ImageReader;
    const/4 v1, 0x0

    .line 542
    .local v1, "yuvReader":Landroid/media/ImageReader;
    if-eqz v9, :cond_128

    .line 543
    iget v15, v7, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    .line 544
    .local v15, "rawFormat":I
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-direct {v0, v12, v13, v15}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getRowStride(III)[I

    move-result-object v21

    .line 546
    .local v21, "rawPlaneStrides":[I
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v22

    .line 547
    .local v22, "yuvOutput":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    new-instance v23, Lcom/xiaomi/camera/isp/IspStream;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getNextStreamId()I

    move-result v12

    int-to-long v13, v12

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v16

    .line 548
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v17

    move-object/from16 v12, v23

    move/from16 v24, v15

    .end local v15    # "rawFormat":I
    .local v24, "rawFormat":I
    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v21

    move/from16 v18, v24

    invoke-direct/range {v12 .. v18}, Lcom/xiaomi/camera/isp/IspStream;-><init>(JII[II)V

    .line 549
    .local v12, "rawInputStream":Lcom/xiaomi/camera/isp/IspStream;
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    new-instance v13, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;

    invoke-direct {v13, v0, v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener-IA;)V

    .line 551
    .local v13, "yuvImageListener":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;
    iput-object v7, v13, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 552
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v14

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v15

    invoke-direct {v0, v14, v15, v3, v13}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_12a

    .line 542
    .end local v12    # "rawInputStream":Lcom/xiaomi/camera/isp/IspStream;
    .end local v13    # "yuvImageListener":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;
    .end local v21    # "rawPlaneStrides":[I
    .end local v22    # "yuvOutput":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .end local v24    # "rawFormat":I
    :cond_128
    move-object/from16 v21, v1

    .line 557
    .end local v1    # "yuvReader":Landroid/media/ImageReader;
    .local v21, "yuvReader":Landroid/media/ImageReader;
    :goto_12a
    const/4 v1, 0x0

    .line 558
    .local v1, "tuningBufferReader":Landroid/media/ImageReader;
    if-eqz v9, :cond_14a

    .line 559
    iget-object v3, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 560
    .local v3, "tuningBufferWidth":I
    iget-object v12, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    .line 561
    .local v12, "tuningBufferHeight":I
    new-instance v13, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$TuningImageListener;

    invoke-direct {v13, v0, v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$TuningImageListener;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$TuningImageListener-IA;)V

    .line 562
    .local v13, "tuningImageListener":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$TuningImageListener;
    iput-object v7, v13, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$TuningImageListener;->mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 563
    const v14, 0x32315659

    invoke-direct {v0, v3, v12, v14, v13}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_14c

    .line 558
    .end local v3    # "tuningBufferWidth":I
    .end local v12    # "tuningBufferHeight":I
    .end local v13    # "tuningImageListener":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$TuningImageListener;
    :cond_14a
    move-object/from16 v22, v1

    .line 567
    .end local v1    # "tuningBufferReader":Landroid/media/ImageReader;
    .local v22, "tuningBufferReader":Landroid/media/ImageReader;
    :goto_14c
    nop

    .line 568
    invoke-virtual/range {v20 .. v20}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    .line 569
    if-nez v21, :cond_155

    move-object v14, v2

    goto :goto_15a

    :cond_155
    invoke-virtual/range {v21 .. v21}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    move-object v14, v1

    .line 570
    :goto_15a
    if-nez v22, :cond_15e

    move-object v15, v2

    goto :goto_163

    :cond_15e
    invoke-virtual/range {v22 .. v22}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    move-object v15, v1

    :goto_163
    iget v1, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mMaxJpegSize:I

    iget-object v2, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    .line 567
    move-object v12, v6

    move/from16 v16, v1

    move-object/from16 v17, p2

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/xiaomi/camera/isp/IspInterface;->create(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;Landroid/os/Handler;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v12

    .line 574
    .local v12, "ispInterface":Lcom/xiaomi/camera/isp/IspInterface;
    new-instance v13, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v14, v4

    .end local v4    # "picImageListener":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;
    .local v14, "picImageListener":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;
    move-object/from16 v4, v20

    move-object v15, v5

    .end local v5    # "yuvInputStream":Lcom/xiaomi/camera/isp/IspStream;
    .local v15, "yuvInputStream":Lcom/xiaomi/camera/isp/IspStream;
    move-object/from16 v5, v21

    move-object/from16 v16, v6

    .end local v6    # "inputStreamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspStream;>;"
    .local v16, "inputStreamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspStream;>;"
    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;-><init>(Lcom/xiaomi/camera/isp/IspInterface;Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/media/ImageReader;Landroid/media/ImageReader;Landroid/media/ImageReader;)V

    .line 576
    .local v1, "info":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->trimIspInterfaceListIfNeeded()V

    .line 577
    invoke-direct {v0, v7, v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->cacheIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;)V

    .line 579
    iget-object v2, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "createIspInterface<<"

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-object v1
.end method

.method private blacklist getCachedIspInterfaceInfo(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    .registers 5
    .param p1, "key"    # Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 120
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    .line 122
    .local v1, "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 123
    monitor-exit v0

    return-object v1

    .line 125
    .end local v1    # "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    :cond_15
    monitor-exit v0

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 125
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private static blacklist getJpegData(Landroid/media/Image;)[B
    .registers 4
    .param p0, "image"    # Landroid/media/Image;

    .line 760
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 761
    .local v0, "planes":[Landroid/media/Image$Plane;
    array-length v1, v0

    if-lez v1, :cond_18

    .line 762
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 763
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 764
    .local v2, "data":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 765
    return-object v2

    .line 767
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getNextStreamId()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mNextStreamId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mNextStreamId:I

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private blacklist getRowStride(III)[I
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 323
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    .line 324
    .local v0, "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getRowStride(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)[I

    move-result-object v1

    return-object v1
.end method

.method private blacklist initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;

    .line 752
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImageReader>>"

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

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x2

    invoke-static {p1, p2, p3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 754
    .local v0, "imageReader":Landroid/media/ImageReader;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p4, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 755
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "initImageReader<<"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-object v0
.end method

.method private blacklist onServiceDied()V
    .registers 9

    .line 866
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDied>>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v0, "isp hidl service died"

    .line 868
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 869
    :try_start_c
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    .line 871
    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setKeepTuningImage(Z)V

    .line 872
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-direct {p0, v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 873
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v2

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 874
    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v5

    .line 873
    invoke-interface {v2, v0, v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iput-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 878
    :cond_2b
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 880
    .local v5, "data":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setKeepTuningImage(Z)V

    .line 881
    invoke-direct {p0, v5}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 882
    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v6

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .end local v5    # "data":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    goto :goto_31

    .line 884
    :cond_4f
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 885
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_c .. :try_end_55} :catchall_71

    .line 886
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v2

    .line 887
    :try_start_58
    iput-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 888
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6e

    .line 889
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->clearIspInterfaceList()V

    .line 890
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 891
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "onServiceDied<<"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void

    .line 888
    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1

    .line 885
    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2
.end method

.method private blacklist processNativeMessage(I)V
    .registers 5
    .param p1, "msgType"    # I

    .line 858
    const/16 v0, 0x65

    if-ne v0, p1, :cond_8

    .line 859
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->onServiceDied()V

    goto :goto_20

    .line 861
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported native msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_20
    return-void
.end method

.method private blacklist releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 7
    .param p1, "taskData"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 731
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    .line 732
    .local v0, "mainImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    if-eqz v0, :cond_21

    .line 733
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 734
    .local v2, "mainImage":Landroid/media/Image;
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 735
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 736
    .end local v2    # "mainImage":Landroid/media/Image;
    goto :goto_a

    .line 739
    :cond_21
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isKeepTuningImage()Z

    move-result v1

    if-nez v1, :cond_48

    .line 740
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object v1

    .line 741
    .local v1, "tuningImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    if-eqz v1, :cond_48

    .line 742
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    .line 743
    .local v3, "tuningImage":Landroid/media/Image;
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 744
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 745
    .end local v3    # "tuningImage":Landroid/media/Image;
    goto :goto_31

    .line 748
    .end local v1    # "tuningImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    :cond_48
    return-void
.end method

.method private blacklist releaseWakeLock()V
    .registers 3

    .line 779
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 780
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 783
    :cond_14
    return-void
.end method

.method private blacklist reprocessImage()V
    .registers 31

    .line 389
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage>>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_c
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-object v8, v0

    .line 393
    .local v8, "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    if-nez v8, :cond_20

    .line 394
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "processingData is null!"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    monitor-exit v1

    return-void

    .line 397
    :cond_20
    iput-object v8, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 398
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocessImage: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_1d9

    .line 401
    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v9

    .line 402
    .local v9, "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    if-nez v9, :cond_4d

    .line 403
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<null metadata!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 407
    :cond_4d
    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v10

    .line 408
    .local v10, "inputImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 409
    .local v11, "length":I
    if-nez v11, :cond_5f

    .line 410
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<null input buffer!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void

    .line 414
    :cond_5f
    const-wide/16 v1, 0x0

    .line 415
    .local v1, "streamId":J
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/media/Image;

    .line 416
    .local v12, "firstInputImage":Landroid/media/Image;
    invoke-virtual {v12}, Landroid/media/Image;->getFormat()I

    move-result v13

    .line 417
    .local v13, "mainImageFormat":I
    const/16 v3, 0x25

    const/16 v4, 0x20

    if-eq v4, v13, :cond_75

    if-ne v3, v13, :cond_76

    :cond_75
    const/4 v0, 0x1

    :cond_76
    move v14, v0

    .line 418
    .local v14, "rawInput":Z
    const/4 v0, 0x0

    if-eqz v14, :cond_cc

    .line 419
    iget-object v5, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v5

    .line 420
    :try_start_7d
    iget-object v6, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    new-instance v15, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;

    invoke-direct {v15, v7, v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus-IA;)V

    invoke-virtual {v6, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_c9

    .line 422
    iget-object v6, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v6

    .line 423
    :try_start_8b
    iget-object v5, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    if-nez v5, :cond_ad

    .line 424
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocessImage: skip raw task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    monitor-exit v6

    return-void

    .line 427
    :cond_ad
    iget-object v15, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    .line 428
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v15

    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    .line 429
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 430
    invoke-virtual {v12}, Landroid/media/Image;->getFormat()I

    move-result v3

    .line 427
    invoke-virtual {v5, v15, v0, v3}, Lcom/xiaomi/camera/isp/IspInterface;->getInputStreamId(III)J

    move-result-wide v18

    move-wide/from16 v1, v18

    .line 431
    monitor-exit v6

    move-wide v2, v1

    goto :goto_10a

    :catchall_c6
    move-exception v0

    monitor-exit v6
    :try_end_c8
    .catchall {:try_start_8b .. :try_end_c8} :catchall_c6

    throw v0

    .line 421
    :catchall_c9
    move-exception v0

    :try_start_ca
    monitor-exit v5
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v0

    .line 433
    :cond_cc
    iget-object v3, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v3

    .line 434
    :try_start_cf
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;
    :try_end_d1
    .catchall {:try_start_cf .. :try_end_d1} :catchall_1d2

    if-nez v0, :cond_f6

    .line 435
    :try_start_d3
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reprocessImage: skip task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    monitor-exit v3
    :try_end_f0
    .catchall {:try_start_d3 .. :try_end_f0} :catchall_f1

    return-void

    .line 442
    :catchall_f1
    move-exception v0

    move-object/from16 v21, v8

    goto/16 :goto_1d5

    .line 438
    :cond_f6
    nop

    .line 439
    :try_start_f7
    invoke-virtual {v12}, Landroid/media/Image;->getWidth()I

    move-result v5

    .line 440
    invoke-virtual {v12}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 441
    invoke-virtual {v12}, Landroid/media/Image;->getFormat()I

    move-result v15

    .line 438
    invoke-virtual {v0, v5, v6, v15}, Lcom/xiaomi/camera/isp/IspInterface;->getInputStreamId(III)J

    move-result-wide v5

    move-wide v1, v5

    .line 442
    monitor-exit v3
    :try_end_109
    .catchall {:try_start_f7 .. :try_end_109} :catchall_1d2

    move-wide v2, v1

    .line 444
    .end local v1    # "streamId":J
    .local v2, "streamId":J
    :goto_10a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    .local v0, "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object v15

    .line 446
    .local v15, "tuningImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_114
    if-ge v1, v11, :cond_136

    .line 447
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Image;

    .line 448
    .local v5, "inputImage":Landroid/media/Image;
    new-instance v6, Lcom/xiaomi/camera/isp/IspBuffer;

    .line 449
    if-nez v15, :cond_122

    const/4 v4, 0x0

    goto :goto_12a

    :cond_122
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/media/Image;

    move-object/from16 v4, v18

    :goto_12a
    invoke-direct {v6, v2, v3, v5, v4}, Lcom/xiaomi/camera/isp/IspBuffer;-><init>(JLandroid/media/Image;Landroid/media/Image;)V

    move-object v4, v6

    .line 450
    .local v4, "ispBuffer":Lcom/xiaomi/camera/isp/IspBuffer;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v4    # "ispBuffer":Lcom/xiaomi/camera/isp/IspBuffer;
    .end local v5    # "inputImage":Landroid/media/Image;
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x20

    goto :goto_114

    .line 455
    .end local v1    # "i":I
    :cond_136
    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getReprocessFunctionType()I

    move-result v5

    .line 456
    .local v5, "reprocessFunctionType":I
    const/16 v1, 0x20

    if-eq v1, v13, :cond_142

    const/16 v1, 0x25

    if-ne v1, v13, :cond_14b

    :cond_142
    sget v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_MFNR:I

    if-eq v1, v5, :cond_152

    sget v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_SUPERNIGHT:I

    if-ne v1, v5, :cond_14b

    goto :goto_152

    .line 461
    :cond_14b
    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v1

    move/from16 v16, v1

    .local v1, "outputFormat":I
    goto :goto_156

    .line 459
    .end local v1    # "outputFormat":I
    :cond_152
    :goto_152
    const/16 v1, 0x23

    move/from16 v16, v1

    .line 463
    .local v16, "outputFormat":I
    :goto_156
    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getCropRegion()[I

    move-result-object v17

    .line 464
    .local v17, "cropRegion":[I
    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOrientation()I

    move-result v27

    .line 465
    .local v27, "orientation":I
    new-instance v6, Lcom/xiaomi/camera/isp/IspRequest;

    move-wide/from16 v28, v2

    .end local v2    # "streamId":J
    .local v28, "streamId":J
    invoke-virtual {v9}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v1

    long-to-int v1, v1

    .line 466
    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isFrontMirror()Z

    move-result v20

    .line 467
    invoke-virtual {v9}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v21

    invoke-virtual {v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isRemosaic()I

    move-result v26

    move-object/from16 v18, v6

    move/from16 v19, v1

    move-object/from16 v22, v0

    move-object/from16 v23, v17

    move/from16 v24, v5

    move/from16 v25, v27

    invoke-direct/range {v18 .. v26}, Lcom/xiaomi/camera/isp/IspRequest;-><init>(IILandroid/os/Parcelable;Ljava/util/ArrayList;[IIII)V

    .line 468
    .local v6, "ispRequest":Lcom/xiaomi/camera/isp/IspRequest;
    iget-object v1, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocessImage: requestFrameNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mReprocessStartTime:J

    .line 470
    iget-object v4, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1c2

    .line 471
    new-instance v3, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;

    move-object v1, v3

    move-wide/from16 v18, v28

    .end local v28    # "streamId":J
    .local v18, "streamId":J
    move-object/from16 v2, p0

    move-object/from16 v20, v0

    move-object v0, v3

    .end local v0    # "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    .local v20, "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    move-object v3, v12

    move-object/from16 v21, v8

    move-object v8, v4

    .end local v8    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .local v21, "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    move v4, v14

    move/from16 v22, v5

    .end local v5    # "reprocessFunctionType":I
    .local v22, "reprocessFunctionType":I
    move/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/media/Image;ZILcom/xiaomi/camera/isp/IspRequest;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1ca

    .line 470
    .end local v18    # "streamId":J
    .end local v20    # "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    .end local v21    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .end local v22    # "reprocessFunctionType":I
    .restart local v0    # "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    .restart local v5    # "reprocessFunctionType":I
    .restart local v8    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .restart local v28    # "streamId":J
    :cond_1c2
    move-object/from16 v20, v0

    move/from16 v22, v5

    move-object/from16 v21, v8

    move-wide/from16 v18, v28

    .line 500
    .end local v0    # "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    .end local v5    # "reprocessFunctionType":I
    .end local v8    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .end local v28    # "streamId":J
    .restart local v18    # "streamId":J
    .restart local v20    # "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    .restart local v21    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .restart local v22    # "reprocessFunctionType":I
    :goto_1ca
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 442
    .end local v6    # "ispRequest":Lcom/xiaomi/camera/isp/IspRequest;
    .end local v15    # "tuningImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    .end local v16    # "outputFormat":I
    .end local v17    # "cropRegion":[I
    .end local v18    # "streamId":J
    .end local v20    # "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    .end local v21    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .end local v22    # "reprocessFunctionType":I
    .end local v27    # "orientation":I
    .local v1, "streamId":J
    .restart local v8    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    :catchall_1d2
    move-exception v0

    move-object/from16 v21, v8

    .end local v8    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .restart local v21    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    :goto_1d5
    :try_start_1d5
    monitor-exit v3
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d7

    throw v0

    :catchall_1d7
    move-exception v0

    goto :goto_1d5

    .line 399
    .end local v1    # "streamId":J
    .end local v9    # "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    .end local v10    # "inputImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    .end local v11    # "length":I
    .end local v12    # "firstInputImage":Landroid/media/Image;
    .end local v13    # "mainImageFormat":I
    .end local v14    # "rawInput":Z
    .end local v21    # "processingData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    :catchall_1d9
    move-exception v0

    :try_start_1da
    monitor-exit v1
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1d9

    throw v0
.end method

.method private blacklist sendReprocessRequest()V
    .registers 6

    .line 289
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v0, :cond_13

    .line 292
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "sendReprocessRequest: NOT initialized!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 297
    :cond_13
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_16
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2f

    .line 299
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "sendReprocessRequest: idle. Try to close device 30s later."

    invoke-static {v1, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 302
    monitor-exit v0

    return-void

    .line 304
    :cond_2f
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 305
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_5d

    .line 310
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 311
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "sendReprocessRequest: BUSY"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 313
    :cond_4e
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "sendReprocessRequest: send MSG_REPROCESS_IMAGE"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 316
    :goto_5c
    return-void

    .line 308
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private blacklist trimIspInterfaceListIfNeeded()V
    .registers 10

    .line 798
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 800
    .local v1, "size":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_4e

    .line 801
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 802
    .local v3, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;>;>;"
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 803
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 804
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 805
    .local v5, "io":Lcom/xiaomi/camera/isp/IspInterfaceIO;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    .line 806
    .local v6, "info":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    iget-boolean v7, v5, Lcom/xiaomi/camera/isp/IspInterfaceIO;->isIdle:Z

    if-eqz v7, :cond_4d

    invoke-virtual {v6}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->getIspInterface()Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    if-eq v7, v8, :cond_4d

    .line 807
    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v8, "trim interface"

    invoke-static {v7, v8}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {v6}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->release()V

    .line 809
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 810
    add-int/lit8 v1, v1, -0x1

    .line 811
    if-ge v1, v2, :cond_4d

    .line 812
    monitor-exit v0

    return-void

    .line 815
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;>;"
    .end local v5    # "io":Lcom/xiaomi/camera/isp/IspInterfaceIO;
    .end local v6    # "info":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    :cond_4d
    goto :goto_16

    .line 817
    .end local v1    # "size":I
    .end local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;>;>;"
    :cond_4e
    monitor-exit v0

    .line 818
    return-void

    .line 817
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method


# virtual methods
.method public blacklist customize(Ljava/util/HashMap;)V
    .registers 8
    .param p1, "settings"    # Ljava/util/HashMap;

    .line 165
    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 166
    .local v0, "mfnrSupported":Ljava/lang/Boolean;
    if-eqz v0, :cond_14

    .line 167
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIsMFNRSupported:Z

    .line 169
    :cond_14
    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 170
    .local v1, "maxJpegSize":Ljava/lang/Integer;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2e

    .line 171
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mMaxJpegSize:I

    .line 173
    :cond_2e
    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 174
    .local v2, "yuvTuningBufferSize":Landroid/util/Size;
    if-eqz v2, :cond_3e

    .line 175
    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    .line 177
    :cond_3e
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customize: maxJpegSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", yuvTuningBufferSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mfnrOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIsMFNRSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public blacklist deInit()V
    .registers 3

    .line 822
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit>>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_a
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v1, :cond_10

    .line 825
    monitor-exit v0

    return-void

    .line 827
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    .line 828
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 829
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_4c

    .line 831
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->clearIspInterfaceList()V

    .line 833
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2f

    .line 834
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 836
    :try_start_21
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 837
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    .line 838
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 841
    goto :goto_2f

    .line 839
    :catch_2b
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 844
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_44

    .line 845
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 847
    :try_start_36
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 848
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 849
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3f} :catch_40

    .line 852
    goto :goto_44

    .line 850
    :catch_40
    move-exception v0

    .line 851
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 854
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void

    .line 829
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 896
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init>>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_a
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v1, :cond_57

    .line 145
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 146
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 147
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 149
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "IspHandlerThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    .line 150
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v2, Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    .line 153
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "RequestDispatcher"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 154
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v2, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    .line 157
    iput-boolean v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    .line 159
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_a .. :try_end_58} :catchall_60

    .line 160
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 159
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public blacklist onEarlyMetadataCallback(Lcom/xiaomi/camera/isp/ISPResult;)V
    .registers 11
    .param p1, "result"    # Lcom/xiaomi/camera/isp/ISPResult;

    .line 900
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 901
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    if-eqz v1, :cond_34

    .line 902
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onEarlyMetaAvailable(Lcom/xiaomi/camera/isp/ISPResult;)V

    .line 903
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "early meta return for %s. cost=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 904
    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mReprocessStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 903
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 907
    :cond_34
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "receive yuv image: null processing data error"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_3b
    monitor-exit v0

    .line 910
    return-void

    .line 909
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public blacklist queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .registers 8
    .param p1, "io"    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
    .param p2, "settings"    # Landroid/os/Parcelable;
    .param p3, "param"    # Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
    .param p4, "doQuery"    # Z

    .line 274
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getCachedIspInterfaceInfo(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    move-result-object v0

    .line 275
    .local v0, "ispInterfaceInfo":Lcom/xiaomi/camera/isp/IspInterfaceInfo;
    if-nez v0, :cond_b

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->createIspInterfaceInfo(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    move-result-object v0

    goto :goto_10

    .line 278
    :cond_b
    iget-object v1, v0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->isIdle:Z

    .line 281
    :goto_10
    if-eqz p4, :cond_1b

    .line 282
    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->getIspInterface()Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/xiaomi/camera/isp/IspInterface;->queryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object v1

    return-object v1

    .line 284
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist setOutputPictureSpec(III)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 184
    return-void
.end method

.method public blacklist submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 13
    .param p1, "data"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 188
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

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

    .line 189
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-eqz v0, :cond_148

    .line 193
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    if-nez v0, :cond_31

    .line 194
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 195
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "submit: drop this request due to no callback was provided!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 199
    :cond_31
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    .line 200
    .local v0, "mainImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_3a

    move v2, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 201
    .local v2, "imageNum":I
    :goto_3e
    if-nez v2, :cond_48

    .line 202
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "submit: empty data list"

    invoke-static {v1, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 206
    :cond_48
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->acquireWakeLock()V

    .line 208
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v3

    if-nez v3, :cond_b6

    .line 209
    add-int/lit8 v3, v2, 0x1

    .line 211
    .local v3, "reserve":I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    .line 212
    .local v4, "firstMainImage":Landroid/media/Image;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v5

    .line 213
    .local v5, "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    :goto_60
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 214
    iget-object v6, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v7, "submit: wait main image pool>>"

    invoke-static {v6, v7}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 216
    iget-object v6, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v7, "submit: wait main image pool<<"

    invoke-static {v6, v7}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 218
    :cond_80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .local v6, "pooledMainImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_86
    if-ge v7, v2, :cond_98

    .line 220
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/Image;

    .line 221
    .local v8, "inputImage":Landroid/media/Image;
    invoke-virtual {p0, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->queueImageToPool(Landroid/media/Image;)Landroid/media/Image;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v8    # "inputImage":Landroid/media/Image;
    add-int/lit8 v7, v7, 0x1

    goto :goto_86

    .line 223
    .end local v7    # "i":I
    :cond_98
    invoke-virtual {p1, v6}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_af

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/Image;

    .line 227
    .local v8, "image":Landroid/media/Image;
    invoke-virtual {v8}, Landroid/media/Image;->close()V

    .line 228
    .end local v8    # "image":Landroid/media/Image;
    goto :goto_9f

    .line 230
    :cond_af
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v7

    .line 231
    .local v7, "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    invoke-interface {v7, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 234
    .end local v3    # "reserve":I
    .end local v4    # "firstMainImage":Landroid/media/Image;
    .end local v5    # "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v6    # "pooledMainImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    .end local v7    # "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    :cond_b6
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object v3

    .line 235
    .local v3, "tuningImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    if-eqz v3, :cond_c4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c4

    const/4 v4, 0x1

    goto :goto_c5

    :cond_c4
    move v4, v1

    .line 236
    .local v4, "hasTuningImage":Z
    :goto_c5
    if-eqz v4, :cond_138

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isTuningImageFromPool()Z

    move-result v5

    if-nez v5, :cond_138

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isKeepTuningImage()Z

    move-result v5

    if-nez v5, :cond_138

    .line 237
    add-int/lit8 v5, v2, 0x1

    .line 239
    .local v5, "reserve":I
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/Image;

    .line 240
    .local v6, "firstTuningImage":Landroid/media/Image;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v7

    .line 241
    .local v7, "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    :goto_e2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v8

    if-eqz v8, :cond_102

    .line 242
    iget-object v8, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v9, "submit: wait tuning image pool>>"

    invoke-static {v8, v9}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v7, v5, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 244
    iget-object v8, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v9, "submit: wait tuning image pool<<"

    invoke-static {v8, v9}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 246
    :cond_102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v1, "pooledTuningImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_108
    if-ge v8, v2, :cond_11a

    .line 249
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/Image;

    .line 250
    .local v9, "tuningImage":Landroid/media/Image;
    invoke-virtual {p0, v9}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->queueImageToPool(Landroid/media/Image;)Landroid/media/Image;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v9    # "tuningImage":Landroid/media/Image;
    add-int/lit8 v8, v8, 0x1

    goto :goto_108

    .line 252
    .end local v8    # "i":I
    :cond_11a
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_121
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_131

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/Image;

    .line 256
    .local v9, "image":Landroid/media/Image;
    invoke-virtual {v9}, Landroid/media/Image;->close()V

    .line 257
    .end local v9    # "image":Landroid/media/Image;
    goto :goto_121

    .line 259
    :cond_131
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v8

    .line 260
    .local v8, "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    invoke-interface {v8, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 263
    .end local v1    # "pooledTuningImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    .end local v5    # "reserve":I
    .end local v6    # "firstTuningImage":Landroid/media/Image;
    .end local v7    # "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v8    # "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    :cond_138
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_13b
    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 265
    monitor-exit v1
    :try_end_141
    .catchall {:try_start_13b .. :try_end_141} :catchall_145

    .line 266
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->sendReprocessRequest()V

    .line 267
    return-void

    .line 265
    :catchall_145
    move-exception v5

    :try_start_146
    monitor-exit v1
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    throw v5

    .line 190
    .end local v0    # "mainImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    .end local v2    # "imageNum":I
    .end local v3    # "tuningImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    .end local v4    # "hasTuningImage":Z
    :cond_148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT initialized. Call init() first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
