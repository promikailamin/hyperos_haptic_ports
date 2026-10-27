.class final Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;
.super Landroid/media/INativeSpatializerCallback$Stub;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/media/INativeSpatializerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method


# virtual methods
.method public onLevelChanged(B)V
    .registers 5
    .param p1, "level"    # B

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpatializerCallback.onLevelChanged level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smloglogi(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    monitor-enter v0

    .line 427
    :try_start_19
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smspatializationLevelToSpatializerInt(B)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fputmSpatLevel(Lcom/android/server/audio/SpatializerHelper;I)V

    .line 428
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_29

    .line 432
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V

    .line 433
    return-void

    .line 428
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onOutputChanged(I)V
    .registers 5
    .param p1, "output"    # I

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpatializerCallback.onOutputChanged output:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smloglogi(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    monitor-enter v0

    .line 439
    :try_start_19
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fgetmSpatOutput(Lcom/android/server/audio/SpatializerHelper;)I

    move-result v1

    .line 440
    .local v1, "oldOutput":I
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v2, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fputmSpatOutput(Lcom/android/server/audio/SpatializerHelper;I)V

    .line 441
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_2d

    .line 442
    if-eq v1, p1, :cond_2c

    .line 443
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mdispatchOutputUpdate(Lcom/android/server/audio/SpatializerHelper;I)V

    .line 445
    :cond_2c
    return-void

    .line 441
    .end local v1    # "oldOutput":I
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method
