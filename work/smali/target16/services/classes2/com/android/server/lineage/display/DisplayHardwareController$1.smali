.class public Lcom/android/server/lineage/display/DisplayHardwareController$1;
.super Ljava/lang/Object;
.source "DisplayHardwareController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/DisplayHardwareController;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/DisplayHardwareController;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController$1;->this$0:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 350
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController$1;->this$0:Lcom/android/server/lineage/display/DisplayHardwareController;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController$1;->this$0:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 352
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 353
    iget-object v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController$1;->this$0:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-static {v1}, Lcom/android/server/lineage/display/DisplayHardwareController;->-$$Nest$fgetmHardware(Lcom/android/server/lineage/display/DisplayHardwareController;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p1, v2

    iget-object v3, p0, Lcom/android/server/lineage/display/DisplayHardwareController$1;->this$0:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-static {v3}, Lcom/android/server/lineage/display/DisplayHardwareController;->-$$Nest$fgetmMaxColor(Lcom/android/server/lineage/display/DisplayHardwareController;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    iget-object v4, p0, Lcom/android/server/lineage/display/DisplayHardwareController$1;->this$0:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-static {v4}, Lcom/android/server/lineage/display/DisplayHardwareController;->-$$Nest$fgetmMaxColor(Lcom/android/server/lineage/display/DisplayHardwareController;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x2

    aget p1, p1, v4

    iget-object v4, p0, Lcom/android/server/lineage/display/DisplayHardwareController$1;->this$0:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-static {v4}, Lcom/android/server/lineage/display/DisplayHardwareController;->-$$Nest$fgetmMaxColor(Lcom/android/server/lineage/display/DisplayHardwareController;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p1, v4

    float-to-int p1, p1

    filled-new-array {v2, v3, p1}, [I

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->setDisplayColorCalibration([I)Z

    .line 358
    iget-object p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController$1;->this$0:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-static {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->-$$Nest$mscreenRefresh(Lcom/android/server/lineage/display/DisplayHardwareController;)V

    goto :goto_4a

    :catchall_48
    move-exception p0

    goto :goto_4c

    .line 360
    :cond_4a
    :goto_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_48

    throw p0
.end method
