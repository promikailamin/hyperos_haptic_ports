.class public Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Lcom/android/server/camera/CameraServiceProxy$CameraEvent;


# instance fields
.field public final mAPILevel:I

.field public final mAction:I

.field public final mCameraFacing:I

.field public final mCameraId:Ljava/lang/String;

.field public final mClientName:Ljava/lang/String;

.field public mCompleted:Z

.field public mDeviceError:Z

.field public mDurationOrStartTimeMs:J

.field public mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

.field public mInternalReconfigure:I

.field public final mIsNdk:Z

.field public final mLatencyMs:I

.field public final mLogId:J

.field public mMostRequestedFpsRange:Landroid/util/Range;

.field public final mOperatingMode:I

.field public mRequestCount:J

.field public mResultErrorCount:J

.field public final mSessionIndex:I

.field public mStreamStats:Ljava/util/List;

.field public mUsedUltraWide:Z

.field public mUsedZoomOverride:Z

.field public mUserTag:Ljava/lang/String;

.field public mVideoStabilizationMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V
    .registers 14

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 282
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    .line 283
    iput p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    .line 284
    iput-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 285
    iput p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    const/4 p1, 0x0

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 287
    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 288
    iput-boolean p5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    .line 289
    iput p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    .line 290
    iput p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    .line 291
    iput p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    .line 292
    iput-boolean p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 293
    iput-wide p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    .line 294
    iput p12, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    .line 295
    new-instance p1, Landroid/util/Range;

    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .line 331
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logSelf()V
    .registers 43

    move-object/from16 v0, p0

    .line 336
    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2b

    if-eq v1, v5, :cond_29

    if-eq v1, v4, :cond_27

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown camera facing: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_2c

    :cond_27
    move v12, v3

    goto :goto_2c

    :cond_29
    move v12, v4

    goto :goto_2c

    :cond_2b
    move v12, v5

    .line 353
    :goto_2c
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    const/4 v7, 0x4

    const/4 v8, -0x1

    if-eqz v1, :cond_6d

    .line 354
    iget v1, v1, Landroid/hardware/CameraExtensionSessionStats;->type:I

    if-eqz v1, :cond_5f

    if-eq v1, v5, :cond_5d

    if-eq v1, v4, :cond_5b

    if-eq v1, v3, :cond_59

    if-eq v1, v7, :cond_57

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown extension type: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget v9, v9, Landroid/hardware/CameraExtensionSessionStats;->type:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_57
    move v8, v7

    goto :goto_60

    :cond_59
    move v8, v3

    goto :goto_60

    :cond_5b
    move v8, v4

    goto :goto_60

    :cond_5d
    move v8, v5

    goto :goto_60

    :cond_5f
    const/4 v8, 0x0

    .line 378
    :goto_60
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget-boolean v2, v1, Landroid/hardware/CameraExtensionSessionStats;->isAdvanced:Z

    .line 380
    iget v1, v1, Landroid/hardware/CameraExtensionSessionStats;->captureFormat:I

    move/from16 v41, v1

    move/from16 v36, v2

    :goto_6a
    move/from16 v35, v8

    goto :goto_72

    :cond_6d
    const/16 v36, 0x0

    const/16 v41, 0x0

    goto :goto_6a

    .line 385
    :goto_72
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    if-eqz v1, :cond_7b

    .line 386
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    :goto_7c
    const/4 v2, 0x5

    .line 425
    new-array v8, v2, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    const/4 v9, 0x0

    :goto_80
    if-ge v9, v2, :cond_117

    .line 427
    new-instance v10, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v10}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    aput-object v10, v8, v9

    if-ge v9, v1, :cond_113

    .line 429
    iget-object v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/CameraStreamStats;

    .line 430
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getWidth()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 431
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHeight()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 432
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getFormat()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 433
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 434
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getUsage()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 435
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 436
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 437
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 438
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 439
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 440
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    move-result v13

    iput v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 441
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    move-result-object v13

    iput-object v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 442
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    move-result-object v13

    iput-object v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 443
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getDynamicRangeProfile()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 444
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getStreamUseCase()J

    move-result-wide v13

    iput-wide v13, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 445
    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getColorSpace()I

    move-result v10

    iput v10, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    :cond_113
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_80

    .line 473
    :cond_117
    invoke-virtual {v0}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v9

    move-object v2, v8

    move-wide v8, v9

    iget v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iget-boolean v15, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    move/from16 v16, v3

    iget v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    move/from16 v17, v4

    iget v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    move/from16 v18, v5

    iget v5, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    move/from16 v20, v7

    const/16 v19, 0x0

    iget-wide v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    move/from16 v24, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    aget-object v2, v21, v19

    .line 477
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v25

    aget-object v2, v21, v18

    .line 478
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v26

    aget-object v2, v21, v17

    .line 479
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v27

    aget-object v2, v21, v16

    .line 480
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v28

    aget-object v2, v21, v20

    .line 481
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v29

    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    move/from16 v16, v1

    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    move/from16 v31, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    move-wide/from16 v32, v1

    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    move/from16 v34, v1

    iget-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    move/from16 v38, v1

    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 486
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v39

    iget-object v0, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v40

    move-wide/from16 v19, v6

    const/16 v7, 0xe3

    move/from16 v37, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v21, v22

    move/from16 v23, v16

    move/from16 v16, v3

    .line 473
    invoke-static/range {v7 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[BLjava/lang/String;IJIIZZZIII)V

    return-void
.end method

.method public markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V
    .registers 18

    .line 304
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 309
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    .line 310
    iput-wide p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    .line 311
    iput-wide p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    .line 312
    iput-boolean p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 313
    iput-object p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    .line 314
    iput-object p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    .line 315
    iput p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    .line 316
    iput-boolean p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    .line 317
    iput-boolean p11, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    move-object/from16 p1, p13

    .line 318
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    move-object/from16 p1, p12

    .line 319
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    return-void
.end method
