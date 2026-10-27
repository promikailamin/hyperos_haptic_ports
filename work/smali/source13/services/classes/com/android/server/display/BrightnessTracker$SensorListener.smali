.class final Lcom/android/server/display/BrightnessTracker$SensorListener;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .registers 2

    .line 945
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$SensorListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$SensorListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker$SensorListener;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 955
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 948
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$SensorListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0, p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mrecordSensorEvent(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V

    .line 949
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$SensorListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0, p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mrecordAmbientBrightnessStats(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V

    .line 950
    return-void
.end method
