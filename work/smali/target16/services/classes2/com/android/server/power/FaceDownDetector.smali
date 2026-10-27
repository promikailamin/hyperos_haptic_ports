.class public Lcom/android/server/power/FaceDownDetector;
.super Ljava/lang/Object;
.source "FaceDownDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public mAccelerationThreshold:F

.field public mAccelerometer:Landroid/hardware/Sensor;

.field public mActive:Z

.field public mContext:Landroid/content/Context;

.field public final mCurrentXYAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

.field public final mCurrentZAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

.field public mEnabledOverride:Z

.field public mFaceDown:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInteractive:Z

.field public mIsEnabled:Z

.field public mLastFlipTime:J

.field public mMillisSaved:J

.field public final mOnFlip:Ljava/util/function/Consumer;

.field public mPrevAcceleration:F

.field public mPrevAccelerationTime:J

.field public mPreviousResultTime:J

.field public mPreviousResultType:I

.field final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorMaxLatencyMicros:I

.field public mTimeThreshold:Ljava/time/Duration;

.field public final mUserActivityRunnable:Ljava/lang/Runnable;

.field public mUserInteractionBackoffMillis:J

.field public mZAccelerationFaceDownTime:J

.field public mZAccelerationIsFaceDown:Z

.field public mZAccelerationThreshold:F

.field public mZAccelerationThresholdLenient:F


# direct methods
.method public static synthetic $r8$lambda$Cn-fqG2Y_WAumzrkJu9ypvaeRiE(Lcom/android/server/power/FaceDownDetector;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->lambda$updateActiveState$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$CsBz4wi9_juJ89nnZX0zi4ERc7A(Lcom/android/server/power/FaceDownDetector;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->lambda$updateActiveState$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$cTU6lLtLDCLozLdBzKs8sgyBjLY(Lcom/android/server/power/FaceDownDetector;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/FaceDownDetector;->lambda$systemReady$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$caCdnIB7OSGcXiz4jSr9FVtZVGw(Lcom/android/server/power/FaceDownDetector;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/FaceDownDetector;->mInteractive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->updateActiveState()V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;)V
    .registers 6

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mEnabledOverride:Z

    const-wide/16 v1, 0x0

    .line 140
    iput-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mLastFlipTime:J

    .line 141
    iput v0, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultType:I

    .line 142
    iput-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultTime:J

    .line 143
    iput-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mMillisSaved:J

    .line 145
    new-instance v0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;-><init>(Lcom/android/server/power/FaceDownDetector;F)V

    iput-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mCurrentXYAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    .line 147
    new-instance v0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;-><init>(Lcom/android/server/power/FaceDownDetector;F)V

    iput-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mCurrentZAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mInteractive:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mActive:Z

    const/4 v3, 0x0

    .line 154
    iput v3, p0, Lcom/android/server/power/FaceDownDetector;->mPrevAcceleration:F

    .line 155
    iput-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mPrevAccelerationTime:J

    .line 157
    iput-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationIsFaceDown:Z

    .line 158
    iput-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationFaceDownTime:J

    .line 168
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mOnFlip:Ljava/util/function/Consumer;

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance p1, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;-><init>(Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/FaceDownDetector-IA;)V

    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance p1, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/FaceDownDetector;)V

    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mUserActivityRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 237
    const-string v0, "FaceDownDetector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFaceDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/FaceDownDetector;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastFlipTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mLastFlipTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSensorMaxLatencyMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/FaceDownDetector;->mSensorMaxLatencyMicros:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserInteractionBackoffMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mUserInteractionBackoffMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPreviousResultTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPreviousResultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMillisSaved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/FaceDownDetector;->mMillisSaved:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mZAccelerationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAccelerationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/FaceDownDetector;->mAccelerationThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTimeThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/FaceDownDetector;->mTimeThreshold:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabledOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/FaceDownDetector;->mEnabledOverride:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final exitFaceDown(IJ)V
    .registers 12

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v0, 0x151

    move v1, p1

    move-wide v2, p2

    .line 323
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJJ)V

    const/4 p1, 0x0

    .line 328
    iput-boolean p1, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    const-wide/16 p1, 0x0

    .line 329
    iput-wide p1, p0, Lcom/android/server/power/FaceDownDetector;->mLastFlipTime:J

    .line 330
    iput v1, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultType:I

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultTime:J

    .line 332
    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector;->mOnFlip:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final faceDownDetected()V
    .registers 3

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/FaceDownDetector;->mLastFlipTime:J

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    .line 304
    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector;->mOnFlip:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAccelerationThreshold()F
    .registers 5

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 352
    const-string v2, "acceleration_threshold"

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/power/FaceDownDetector;->getFloatFlagValue(Ljava/lang/String;FFF)F

    move-result p0

    return p0
.end method

.method public final getFloatFlagValue(Ljava/lang/String;FFF)F
    .registers 5

    .line 378
    const-string p0, "attention_manager_service"

    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    cmpg-float p3, p0, p3

    if-ltz p3, :cond_10

    cmpl-float p3, p0, p4

    if-lez p3, :cond_f

    goto :goto_10

    :cond_f
    return p0

    .line 383
    :cond_10
    :goto_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad flag value supplied for: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceDownDetector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public final getLongFlagValue(Ljava/lang/String;JJJ)J
    .registers 10

    .line 391
    const-string p0, "attention_manager_service"

    invoke-static {p0, p1, p2, p3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p0, v0, p4

    if-ltz p0, :cond_10

    cmp-long p0, v0, p6

    if-lez p0, :cond_f

    goto :goto_10

    :cond_f
    return-wide v0

    .line 396
    :cond_10
    :goto_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad flag value supplied for: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceDownDetector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2
.end method

.method public final getSensorMaxLatencyMicros()I
    .registers 2

    .line 373
    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00ba

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final getTimeThreshold()Ljava/time/Duration;
    .registers 8

    .line 404
    const-string p0, "attention_manager_service"

    const-string/jumbo v0, "time_threshold_millis"

    const-wide/16 v1, 0x3e8

    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1d

    const-wide/16 v5, 0x3a98

    cmp-long p0, v3, v5

    if-lez p0, :cond_18

    goto :goto_1d

    .line 413
    :cond_18
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    return-object p0

    .line 409
    :cond_1d
    :goto_1d
    const-string p0, "FaceDownDetector"

    const-string v0, "Bad flag value supplied for: time_threshold_millis"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public final getUserInteractionBackoffMillis()J
    .registers 9

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x36ee80

    .line 366
    const-string v1, "face_down_interaction_backoff_millis"

    const-wide/32 v2, 0xea60

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/FaceDownDetector;->getLongFlagValue(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getZAccelerationThreshold()F
    .registers 5

    const/high16 v0, -0x3e900000    # -15.0f

    const/4 v1, 0x0

    .line 359
    const-string/jumbo v2, "z_acceleration_threshold"

    const/high16 v3, -0x3ee80000    # -9.5f

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/power/FaceDownDetector;->getFloatFlagValue(Ljava/lang/String;FFF)F

    move-result p0

    return p0
.end method

.method public final isEnabled()Z
    .registers 4

    .line 346
    iget-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mEnabledOverride:Z

    if-eqz v0, :cond_1f

    const-string v0, "attention_manager_service"

    const-string v1, "enable_flip_to_screen_off"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101c6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    return v2

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 5

    .line 172
    iget-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    if-eqz v0, :cond_12

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/FaceDownDetector;->mLastFlipTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/FaceDownDetector;->exitFaceDown(IJ)V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->updateActiveState()V

    :cond_12
    return-void
.end method

.method public final synthetic lambda$systemReady$1(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 187
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/FaceDownDetector;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public final synthetic lambda$updateActiveState$2()V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/FaceDownDetector;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/power/FaceDownDetector;->mSensorMaxLatencyMicros:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    return-void
.end method

.method public final synthetic lambda$updateActiveState$3()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public final logScreenOff()V
    .registers 15

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 337
    iget-wide v2, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultTime:J

    iget-wide v4, p0, Lcom/android/server/power/FaceDownDetector;->mLastFlipTime:J

    sub-long v8, v2, v4

    iget-wide v10, p0, Lcom/android/server/power/FaceDownDetector;->mMillisSaved:J

    sub-long v12, v0, v2

    const/16 v6, 0x151

    const/4 v7, 0x4

    invoke-static/range {v6 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJJ)V

    const/4 v0, 0x1

    .line 342
    iput v0, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultType:I

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onDeviceConfigChange(Ljava/util/Set;)V
    .registers 5

    .line 417
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_6a

    goto :goto_49

    :sswitch_1c
    const-string/jumbo v1, "z_acceleration_threshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_49

    :cond_26
    const/4 v2, 0x3

    goto :goto_49

    :sswitch_28
    const-string v1, "enable_flip_to_screen_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_49

    :cond_31
    const/4 v2, 0x2

    goto :goto_49

    :sswitch_33
    const-string v1, "acceleration_threshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_49

    :cond_3c
    const/4 v2, 0x1

    goto :goto_49

    :sswitch_3e
    const-string/jumbo v1, "time_threshold_millis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    packed-switch v2, :pswitch_data_7c

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring change on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceDownDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 423
    :pswitch_63
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->readValuesFromDeviceConfig()V

    .line 424
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->updateActiveState()V

    :cond_69
    return-void

    :sswitch_data_6a
    .sparse-switch
        -0x75aea834 -> :sswitch_3e
        -0x690b6c94 -> :sswitch_33
        -0x5d5bb8b6 -> :sswitch_28
        0x381a88d1 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    .line 254
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    goto/16 :goto_af

    .line 255
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mActive:Z

    if-eqz v0, :cond_af

    iget-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mIsEnabled:Z

    if-nez v0, :cond_15

    goto/16 :goto_af

    .line 257
    :cond_15
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    .line 258
    aget v0, v0, v1

    .line 259
    iget-object v4, p0, Lcom/android/server/power/FaceDownDetector;->mCurrentXYAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    mul-float/2addr v3, v3

    mul-float/2addr v0, v0

    add-float/2addr v3, v0

    invoke-virtual {v4, v3}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->updateMovingAverage(F)V

    .line 260
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mCurrentZAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->updateMovingAverage(F)V

    .line 265
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 266
    iget-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mCurrentXYAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    invoke-static {p1}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->-$$Nest$fgetmMovingAverage(Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;)F

    move-result p1

    iget v0, p0, Lcom/android/server/power/FaceDownDetector;->mPrevAcceleration:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/server/power/FaceDownDetector;->mAccelerationThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4d

    .line 268
    iget-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mCurrentXYAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    invoke-static {p1}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->-$$Nest$fgetmMovingAverage(Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;)F

    move-result p1

    iput p1, p0, Lcom/android/server/power/FaceDownDetector;->mPrevAcceleration:F

    .line 269
    iput-wide v3, p0, Lcom/android/server/power/FaceDownDetector;->mPrevAccelerationTime:J

    .line 271
    :cond_4d
    iget-wide v5, p0, Lcom/android/server/power/FaceDownDetector;->mPrevAccelerationTime:J

    sub-long v5, v3, v5

    iget-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mTimeThreshold:Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-gtz p1, :cond_5d

    move p1, v1

    goto :goto_5e

    :cond_5d
    move p1, v2

    .line 276
    :goto_5e
    iget-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    if-eqz v0, :cond_65

    iget v0, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationThresholdLenient:F

    goto :goto_67

    :cond_65
    iget v0, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationThreshold:F

    .line 277
    :goto_67
    iget-object v5, p0, Lcom/android/server/power/FaceDownDetector;->mCurrentZAcceleration:Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    invoke-static {v5}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->-$$Nest$fgetmMovingAverage(Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;)F

    move-result v5

    cmpg-float v0, v5, v0

    if-gez v0, :cond_73

    move v0, v1

    goto :goto_74

    :cond_73
    move v0, v2

    :goto_74
    if-eqz v0, :cond_8a

    .line 279
    iget-boolean v5, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationIsFaceDown:Z

    if-eqz v5, :cond_8a

    iget-wide v5, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationFaceDownTime:J

    sub-long v5, v3, v5

    iget-object v7, p0, Lcom/android/server/power/FaceDownDetector;->mTimeThreshold:Ljava/time/Duration;

    .line 281
    invoke-virtual {v7}, Ljava/time/Duration;->toNanos()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_8a

    move v5, v1

    goto :goto_8b

    :cond_8a
    move v5, v2

    :goto_8b
    if-eqz v0, :cond_96

    .line 282
    iget-boolean v6, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationIsFaceDown:Z

    if-nez v6, :cond_96

    .line 283
    iput-wide v3, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationFaceDownTime:J

    .line 284
    iput-boolean v1, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationIsFaceDown:Z

    goto :goto_9a

    :cond_96
    if-nez v0, :cond_9a

    .line 286
    iput-boolean v2, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationIsFaceDown:Z

    :cond_9a
    :goto_9a
    if-nez p1, :cond_a6

    if-eqz v5, :cond_a6

    .line 290
    iget-boolean p1, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    if-nez p1, :cond_a6

    .line 291
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->faceDownDetected()V

    return-void

    :cond_a6
    if-nez v5, :cond_af

    .line 292
    iget-boolean p1, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    if-eqz p1, :cond_af

    .line 293
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->unFlipDetected()V

    :cond_af
    :goto_af
    return-void
.end method

.method public final readValuesFromDeviceConfig()V
    .registers 3

    .line 433
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->getAccelerationThreshold()F

    move-result v0

    iput v0, p0, Lcom/android/server/power/FaceDownDetector;->mAccelerationThreshold:F

    .line 434
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->getZAccelerationThreshold()F

    move-result v0

    iput v0, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationThreshold:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 435
    iput v0, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationThresholdLenient:F

    .line 436
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->getTimeThreshold()Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mTimeThreshold:Ljava/time/Duration;

    .line 437
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->getSensorMaxLatencyMicros()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/FaceDownDetector;->mSensorMaxLatencyMicros:I

    .line 438
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->getUserInteractionBackoffMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/FaceDownDetector;->mUserInteractionBackoffMillis:J

    .line 439
    iget-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mIsEnabled:Z

    .line 440
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/FaceDownDetector;->mIsEnabled:Z

    if-eq v0, v1, :cond_4f

    if-nez v1, :cond_3a

    .line 443
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/FaceDownDetector;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mInteractive:Z

    goto :goto_4f

    .line 446
    :cond_3a
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/power/FaceDownDetector;->registerScreenReceiver(Landroid/content/Context;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/FaceDownDetector;->mInteractive:Z

    .line 451
    :cond_4f
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmAccelerationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/FaceDownDetector;->mAccelerationThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nmZAccelerationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/FaceDownDetector;->mZAccelerationThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nmTimeThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/FaceDownDetector;->mTimeThreshold:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/FaceDownDetector;->mIsEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceDownDetector"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerScreenReceiver(Landroid/content/Context;)V
    .registers 4

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 196
    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setEnabledOverride(Z)V
    .registers 2

    .line 463
    iput-boolean p1, p0, Lcom/android/server/power/FaceDownDetector;->mEnabledOverride:Z

    .line 464
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/FaceDownDetector;->mIsEnabled:Z

    return-void
.end method

.method public setMillisSaved(J)V
    .registers 3

    .line 472
    iput-wide p1, p0, Lcom/android/server/power/FaceDownDetector;->mMillisSaved:J

    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 4

    .line 181
    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mContext:Landroid/content/Context;

    .line 182
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mAccelerometer:Landroid/hardware/Sensor;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->readValuesFromDeviceConfig()V

    .line 186
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/FaceDownDetector;)V

    .line 185
    const-string v1, "attention_manager_service"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->updateActiveState()V

    return-void
.end method

.method public final unFlipDetected()V
    .registers 5

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/FaceDownDetector;->mLastFlipTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/FaceDownDetector;->exitFaceDown(IJ)V

    return-void
.end method

.method public final updateActiveState()V
    .registers 9

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 204
    iget v2, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultType:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_17

    iget-wide v2, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultTime:J

    sub-long v2, v0, v2

    iget-wide v6, p0, Lcom/android/server/power/FaceDownDetector;->mUserInteractionBackoffMillis:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_17

    move v2, v4

    goto :goto_18

    :cond_17
    move v2, v5

    .line 206
    :goto_18
    iget-boolean v3, p0, Lcom/android/server/power/FaceDownDetector;->mInteractive:Z

    if-eqz v3, :cond_23

    iget-boolean v6, p0, Lcom/android/server/power/FaceDownDetector;->mIsEnabled:Z

    if-eqz v6, :cond_23

    if-nez v2, :cond_23

    goto :goto_24

    :cond_23
    move v4, v5

    .line 207
    :goto_24
    iget-boolean v2, p0, Lcom/android/server/power/FaceDownDetector;->mActive:Z

    if-eq v2, v4, :cond_60

    const/4 v2, 0x4

    if-eqz v4, :cond_3f

    .line 209
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/FaceDownDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    iget v0, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultType:I

    if-ne v0, v2, :cond_5e

    .line 217
    invoke-virtual {p0}, Lcom/android/server/power/FaceDownDetector;->logScreenOff()V

    goto :goto_5e

    .line 220
    :cond_3f
    iget-boolean v6, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    if-eqz v6, :cond_49

    if-nez v3, :cond_49

    .line 221
    iput v2, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultType:I

    .line 222
    iput-wide v0, p0, Lcom/android/server/power/FaceDownDetector;->mPreviousResultTime:J

    .line 224
    :cond_49
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/FaceDownDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    iput-boolean v5, p0, Lcom/android/server/power/FaceDownDetector;->mFaceDown:Z

    .line 228
    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector;->mOnFlip:Ljava/util/function/Consumer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 230
    :cond_5e
    :goto_5e
    iput-boolean v4, p0, Lcom/android/server/power/FaceDownDetector;->mActive:Z

    :cond_60
    return-void
.end method

.method public userActivity(I)V
    .registers 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    .line 318
    iget-object p1, p0, Lcom/android/server/power/FaceDownDetector;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector;->mUserActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method
