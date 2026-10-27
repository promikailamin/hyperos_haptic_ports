.class public final Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;
.super Landroid/media/ISpatializerHeadTrackingCallback$Stub;
.source "SpatializerHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .registers 2

    .line 459
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method


# virtual methods
.method public onHeadToSoundStagePoseUpdated([F)V
    .registers 5

    .line 476
    const-string v0, "AS.SpatializerHelper"

    if-nez p1, :cond_a

    .line 477
    const-string p0, "SpatializerHeadTrackingCallback.onHeadToStagePoseUpdatednull transform"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 481
    :cond_a
    array-length v1, p1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_24

    .line 482
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpatializerHeadTrackingCallback.onHeadToStagePoseUpdated invalid transform length"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 495
    :cond_24
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mdispatchPoseUpdate(Lcom/android/server/audio/SpatializerHelper;[F)V

    return-void
.end method

.method public onHeadTrackingModeChanged(B)V
    .registers 5

    .line 463
    monitor-enter p0

    .line 464
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fgetmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;)I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smheadTrackingModeTypeToSpatializerInt(B)I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fputmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V

    .line 466
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fgetmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;)I

    move-result p1

    .line 467
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_37

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpatializerHeadTrackingCallback.onHeadTrackingModeChanged mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-static {p1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smloglogi(Ljava/lang/String;)V

    if-eq v0, p1, :cond_36

    .line 471
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mdispatchActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V

    :cond_36
    return-void

    :catchall_37
    move-exception p1

    .line 467
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method
