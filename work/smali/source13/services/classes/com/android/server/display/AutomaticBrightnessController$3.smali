.class Lcom/android/server/display/AutomaticBrightnessController$3;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 1499
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustMainDarkeningDelayTime(J)V
    .registers 6
    .param p1, "time"    # J

    .line 1557
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmMainDarkeningDelayTime(Lcom/android/server/display/AutomaticBrightnessController;J)V

    .line 1558
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_16

    .line 1559
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mschedulingUpdateMainAmbientLux(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1561
    :cond_16
    return-void
.end method

.method public calculateFastAmbientLux(J)F
    .registers 6
    .param p1, "time"    # J

    .line 1523
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmAmbientLightHorizonShort(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mcalculateAmbientLux(Lcom/android/server/display/AutomaticBrightnessController;JJ)F

    move-result v0

    return v0
.end method

.method public calculateSlowAmbientLux(J)F
    .registers 6
    .param p1, "time"    # J

    .line 1518
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmAmbientLightHorizonLong(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mcalculateAmbientLux(Lcom/android/server/display/AutomaticBrightnessController;JJ)F

    move-result v0

    return v0
.end method

.method public getBrighteningThreshold()F
    .registers 2

    .line 1503
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmAmbientBrighteningThreshold(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v0

    return v0
.end method

.method public getDarkeningThreshold()F
    .registers 2

    .line 1508
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmAmbientDarkeningThreshold(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v0

    return v0
.end method

.method public getMainDarkeningDelayTime()J
    .registers 3

    .line 1569
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmMainDarkeningDelayTime(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeUpdateAmbientLuxMessage()V
    .registers 3

    .line 1543
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmHandler(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1544
    return-void
.end method

.method public sendUpdateAmbientLuxMessage(J)V
    .registers 5
    .param p1, "time"    # J

    .line 1538
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmHandler(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1539
    return-void
.end method

.method public updateAmbientLux(IFZZ)V
    .registers 6
    .param p1, "event"    # I
    .param p2, "lux"    # F
    .param p3, "needUpdateLux"    # Z
    .param p4, "needUpdateBrightness"    # Z

    .line 1513
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(IFZZ)V

    .line 1514
    return-void
.end method

.method public updateNextBrighteningTransition(J)J
    .registers 5
    .param p1, "time"    # J

    .line 1528
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mnextAmbientLightBrighteningTransition(Lcom/android/server/display/AutomaticBrightnessController;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateNextDarkeningTransition(J)J
    .registers 5
    .param p1, "time"    # J

    .line 1533
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mnextAmbientLightDarkeningTransition(Lcom/android/server/display/AutomaticBrightnessController;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public useDaemonSensorPolicyInProgress()Z
    .registers 2

    .line 1548
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmUseDaemonSensorInProgress(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    return v0
.end method
