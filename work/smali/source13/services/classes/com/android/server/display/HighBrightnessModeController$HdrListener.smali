.class Lcom/android/server/display/HighBrightnessModeController$HdrListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HdrListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method constructor <init>(Lcom/android/server/display/HighBrightnessModeController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 661
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onHdrInfoChanged$0$com-android-server-display-HighBrightnessModeController$HdrListener(III)V
    .registers 8
    .param p1, "numberOfHdrLayers"    # I
    .param p2, "maxW"    # I
    .param p3, "maxH"    # I

    .line 666
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    if-lez p1, :cond_22

    mul-int v1, p2, p3

    int-to-float v1, v1

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsHdrLayerPresent(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 671
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v2}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    .line 673
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmIsHdrLayerPresent(Lcom/android/server/display/HighBrightnessModeController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$mnotifyHdrStateListner(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 674
    return-void
.end method

.method public onHdrInfoChanged(Landroid/os/IBinder;IIII)V
    .registers 8
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "numberOfHdrLayers"    # I
    .param p3, "maxW"    # I
    .param p4, "maxH"    # I
    .param p5, "flags"    # I

    .line 665
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method
