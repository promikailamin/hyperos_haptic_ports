.class Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventWriterTask"
.end annotation


# static fields
.field private static final WRITER_SLEEP_MS:J = 0x64L


# instance fields
.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;)V"
        }
    .end annotation

    .line 766
    .local p2, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;>;"
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    .line 768
    return-void
.end method

.method private logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V
    .registers 34
    .param p1, "e"    # Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 788
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 789
    .local v1, "facing":I
    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    packed-switch v2, :pswitch_data_124

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown camera facing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraService_proxy"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 797
    :pswitch_23
    const/4 v1, 0x3

    .line 798
    goto :goto_29

    .line 794
    :pswitch_25
    const/4 v1, 0x2

    .line 795
    goto :goto_29

    .line 791
    :pswitch_27
    const/4 v1, 0x1

    .line 792
    nop

    .line 803
    :goto_29
    const/4 v2, 0x0

    .line 804
    .local v2, "streamCount":I
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    if-eqz v3, :cond_34

    .line 805
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 826
    :cond_34
    const/4 v3, 0x5

    new-array v9, v3, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 827
    .local v9, "streamProtos":[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    if-ge v4, v3, :cond_c7

    .line 828
    new-instance v5, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v5}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    aput-object v5, v9, v4

    .line 829
    if-ge v4, v2, :cond_c3

    .line 830
    iget-object v5, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/CameraStreamStats;

    .line 831
    .local v5, "streamStats":Landroid/hardware/CameraStreamStats;
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 832
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 833
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getFormat()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 834
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 835
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getUsage()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 836
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 837
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 838
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 839
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 840
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 841
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 842
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    move-result-object v7

    iput-object v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 843
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    move-result-object v7

    iput-object v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 844
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getDynamicRangeProfile()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 845
    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getStreamUseCase()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 827
    .end local v5    # "streamStats":Landroid/hardware/CameraStreamStats;
    :cond_c3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_38

    .line 872
    .end local v4    # "i":I
    :cond_c7
    const/16 v4, 0xe3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v5

    iget v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iget-boolean v12, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    iget v13, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    iget v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    iget v15, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    move-wide/from16 v29, v5

    iget-wide v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    move-wide/from16 v16, v4

    iget-wide v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    move-wide/from16 v18, v4

    iget-boolean v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    move/from16 v20, v4

    const/4 v4, 0x0

    aget-object v4, v9, v4

    .line 876
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v22

    const/4 v4, 0x1

    aget-object v4, v9, v4

    .line 877
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v23

    const/4 v4, 0x2

    aget-object v4, v9, v4

    .line 878
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v24

    const/4 v4, 0x3

    aget-object v4, v9, v4

    .line 879
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v25

    const/4 v4, 0x4

    aget-object v4, v9, v4

    .line 880
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v26

    iget-object v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    move-object/from16 v27, v4

    iget v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    move/from16 v28, v4

    .line 872
    move-object/from16 v31, v9

    .end local v9    # "streamProtos":[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .local v31, "streamProtos":[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    move v9, v1

    move/from16 v21, v2

    move-wide/from16 v5, v29

    const/16 v4, 0xe3

    invoke-static/range {v4 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[BLjava/lang/String;I)V

    .line 882
    return-void

    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_27
        :pswitch_25
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 773
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 774
    .local v1, "event":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V

    .line 776
    const-wide/16 v2, 0x64

    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 777
    :goto_1c
    goto :goto_1f

    :catch_1d
    move-exception v2

    goto :goto_1c

    .line 778
    .end local v1    # "event":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :goto_1f
    goto :goto_8

    .line 779
    :cond_20
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 781
    :cond_25
    return-void
.end method
