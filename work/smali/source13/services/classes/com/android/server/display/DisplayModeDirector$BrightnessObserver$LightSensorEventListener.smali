.class final Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightSensorEventListener"
.end annotation


# static fields
.field private static final INJECT_EVENTS_INTERVAL_MS:I = 0xfa


# instance fields
.field private final mInjectSensorEventRunnable:Ljava/lang/Runnable;

.field private mLastSensorData:F

.field private mLoggingEnabled:Z

.field private mTimestamp:J

.field final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInjectSensorEventRunnable(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSensorData(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return p0
.end method

.method static bridge synthetic -$$Nest$misDifferentZone(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF[I)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprocessSensorData(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    .line 2202
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2300
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    return-void
.end method

.method private formatTimestamp(J)Ljava/lang/String;
    .registers 6
    .param p1, "time"    # J

    .line 2270
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2272
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isDifferentZone(FF[I)Z
    .registers 9
    .param p1, "lux1"    # F
    .param p2, "lux2"    # F
    .param p3, "luxThresholds"    # [I

    .line 2288
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1d

    aget v3, p3, v2

    int-to-float v3, v3

    .line 2291
    .local v3, "boundary":F
    cmpg-float v4, p1, v3

    if-gtz v4, :cond_10

    cmpl-float v4, p2, v3

    if-gtz v4, :cond_18

    :cond_10
    cmpl-float v4, p1, v3

    if-lez v4, :cond_1a

    cmpg-float v4, p2, v3

    if-gtz v4, :cond_1a

    .line 2293
    :cond_18
    const/4 v0, 0x1

    return v0

    .line 2288
    .end local v3    # "boundary":F
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2297
    :cond_1d
    return v1
.end method

.method private processSensorData(J)V
    .registers 5
    .param p1, "now"    # J

    .line 2276
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2277
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)V

    goto :goto_1d

    .line 2279
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)V

    .line 2282
    :goto_1d
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2283
    :try_start_26
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    .line 2284
    monitor-exit v0

    .line 2285
    return-void

    .line 2284
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v1
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastSensorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2263
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2223
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 2224
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    if-eqz v0, :cond_25

    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On sensor changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_25
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[I)Z

    move-result v0

    .line 2230
    .local v0, "lowZoneChanged":Z
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[I)Z

    move-result v1

    .line 2232
    .local v1, "highZoneChanged":Z
    if-eqz v0, :cond_57

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_65

    :cond_57
    if-eqz v1, :cond_76

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_76

    .line 2236
    :cond_65
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 2237
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 2241
    :cond_76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2242
    .local v2, "now":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    .line 2243
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    if-eqz v4, :cond_93

    .line 2244
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 2247
    :cond_93
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2248
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    .line 2250
    if-eqz v0, :cond_af

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_bd

    :cond_af
    if-eqz v1, :cond_ca

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_ca

    .line 2256
    :cond_bd
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2258
    :cond_ca
    return-void
.end method

.method public removeCallbacks()V
    .registers 3

    .line 2266
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2267
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 3
    .param p1, "loggingEnabled"    # Z

    .line 2215
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_5

    .line 2216
    return-void

    .line 2218
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    .line 2219
    return-void
.end method
