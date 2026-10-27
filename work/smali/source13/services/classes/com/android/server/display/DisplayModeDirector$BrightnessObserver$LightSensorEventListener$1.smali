.class Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V
    .registers 2
    .param p1, "this$2"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 2300
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2305
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$mprocessSensorData(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V

    .line 2308
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$fgetmLastSensorData(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v4, v4, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v5, v5, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$misDifferentZone(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF[I)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$fgetmLastSensorData(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v4, v4, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v5, v5, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v5

    .line 2310
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$misDifferentZone(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF[I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2312
    :cond_41
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$fgetmInjectSensorEventRunnable(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2314
    :cond_54
    return-void
.end method
