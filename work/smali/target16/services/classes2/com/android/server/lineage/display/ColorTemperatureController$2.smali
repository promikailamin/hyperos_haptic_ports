.class public Lcom/android/server/lineage/display/ColorTemperatureController$2;
.super Ljava/lang/Object;
.source "ColorTemperatureController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/ColorTemperatureController;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/ColorTemperatureController;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController$2;->this$0:Lcom/android/server/lineage/display/ColorTemperatureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController$2;->this$0:Lcom/android/server/lineage/display/ColorTemperatureController;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController$2;->this$0:Lcom/android/server/lineage/display/ColorTemperatureController;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 248
    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController$2;->this$0:Lcom/android/server/lineage/display/ColorTemperatureController;

    invoke-static {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->-$$Nest$fgetmHardware(Lcom/android/server/lineage/display/ColorTemperatureController;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->setColorBalance(I)Z

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    .line 250
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    throw p0
.end method
