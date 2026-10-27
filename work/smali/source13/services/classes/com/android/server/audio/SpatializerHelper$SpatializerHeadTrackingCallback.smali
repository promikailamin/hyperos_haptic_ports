.class final Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;
.super Landroid/media/ISpatializerHeadTrackingCallback$Stub;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerHeadTrackingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .registers 2

    .line 450
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method


# virtual methods
.method public onHeadToSoundStagePoseUpdated([F)V
    .registers 5
    .param p1, "headToStage"    # [F

    .line 476
    const-string v0, "AS.SpatializerHelper"

    if-nez p1, :cond_a

    .line 477
    const-string v1, "SpatializerHeadTrackingCallback.onHeadToStagePoseUpdatednull transform"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void

    .line 481
    :cond_a
    array-length v1, p1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_26

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpatializerHeadTrackingCallback.onHeadToStagePoseUpdated invalid transform length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 495
    :cond_26
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mdispatchPoseUpdate(Lcom/android/server/audio/SpatializerHelper;[F)V

    .line 496
    return-void
.end method

.method public onHeadTrackingModeChanged(B)V
    .registers 6
    .param p1, "mode"    # B

    .line 454
    monitor-enter p0

    .line 455
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fgetmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;)I

    move-result v0

    .line 456
    .local v0, "oldMode":I
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smheadTrackingModeTypeToSpatializerInt(B)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fputmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V

    .line 457
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fgetmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;)I

    move-result v1

    .line 458
    .local v1, "newMode":I
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_61

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpatializerHeadTrackingCallback.onHeadTrackingModeChanged mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smloglogi(Ljava/lang/String;)V

    .line 461
    if-eq v0, v1, :cond_38

    .line 462
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v2, v1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mdispatchActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V

    .line 464
    :cond_38
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/SpatializerHelper;->isHeadTrackerAvailable()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 465
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4c

    .line 466
    const-string/jumbo v2, "sys.spatial.headtrack"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 467
    :cond_4c
    const/4 v2, -0x1

    if-ne v1, v2, :cond_60

    .line 468
    const-string/jumbo v2, "sys.spatial.headtrack"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 471
    :cond_58
    const-string/jumbo v2, "sys.spatial.headtrack"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_60
    :goto_60
    return-void

    .line 458
    .end local v0    # "oldMode":I
    .end local v1    # "newMode":I
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method
