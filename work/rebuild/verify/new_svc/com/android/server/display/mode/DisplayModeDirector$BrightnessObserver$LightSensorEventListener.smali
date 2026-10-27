.class public final Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final mInjectSensorEventRunnable:Ljava/lang/Runnable;

.field public mLastSensorData:F

.field public mLoggingEnabled:Z

.field public mTimestamp:J

.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInjectSensorEventRunnable(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSensorData(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDifferentZone(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF[F)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mprocessSensorData(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    .line 2638
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2738
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5

    .line 2646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastSensorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->formatTimestamp(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final formatTimestamp(J)Ljava/lang/String;
    .registers 5

    .line 2708
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2710
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isDifferentZone(FF[F)Z
    .registers 8

    .line 2726
    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_1c

    aget v2, p3, v1

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_f

    cmpl-float v3, p2, v2

    if-gtz v3, :cond_17

    :cond_f
    cmpl-float v3, p1, v2

    if-lez v3, :cond_19

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_19

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1c
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 2660
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 2661
    iget-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    if-eqz p1, :cond_23

    .line 2662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "On sensor changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayModeDirector"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_23
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    move-result p1

    .line 2667
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    move-result v0

    if-eqz p1, :cond_55

    .line 2669
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_63

    :cond_55
    if-eqz v0, :cond_74

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_74

    .line 2673
    :cond_63
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 2674
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 2678
    :cond_74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    .line 2680
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v3

    if-eqz v3, :cond_91

    .line 2681
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 2684
    :cond_91
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2685
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    if-eqz p1, :cond_ad

    .line 2687
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_bb

    :cond_ad
    if-eqz v0, :cond_c8

    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_c8

    .line 2693
    :cond_bb
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2695
    :cond_c8
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mupdateIdleScreenRefreshRate(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V

    return-void
.end method

.method public final processSensorData(J)V
    .registers 5

    .line 2714
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2715
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V

    goto :goto_1d

    .line 2717
    :cond_16
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-static {p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V

    .line 2720
    :goto_1d
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2721
    :try_start_26
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mupdateFlickerRefreshRateVotes(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    .line 2722
    monitor-exit p1

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public removeCallbacks()V
    .registers 2

    .line 2704
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 3

    .line 2652
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 2655
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    return-void
.end method
