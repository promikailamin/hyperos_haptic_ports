.class public Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "VibratorFrameworkStatsLogger.java"


# static fields
.field public static final sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mConsumeVibrationStatsQueueRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public mLastVibrationReportedLogUptime:J

.field public final mLock:Ljava/lang/Object;

.field public final mVibrationReportedLogIntervalMillis:J

.field public final mVibrationReportedQueueMaxSize:J

.field public mVibrationStatsQueue:Ljava/util/Queue;


# direct methods
.method public static synthetic $r8$lambda$3clAp4KeKtl_6LJMNjTyvIQT3s8(IJ)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x54

    move v1, p0

    move-wide v4, p1

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$6sCMCxdISmdoENm6LJ5XtEdSNaY(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$e1LVOLtWrkBnktoOi9j1ZkWqiNw(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x54

    .line 110
    invoke-static {v2, p0, v0, v1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 50
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/high16 v2, 0x42c80000    # 100.0f

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string/jumbo v2, "vibrator.value_vibration_param_request_latency"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 56
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string/jumbo v5, "vibrator.value_vibration_param_scale"

    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 61
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string/jumbo v2, "vibrator.value_vibration_adaptive_haptic_scale"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 66
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v2, 0x19

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fb33333    # 1.4f

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v2, "vibrator.value_vibration_vendor_effect_size"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 71
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v2, "vibrator.value_vibration_vendor_session_vibrations"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    const/16 v0, 0xa

    const/16 v1, 0x12c

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;-><init>(Landroid/os/Handler;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .registers 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    .line 94
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    int-to-long p1, p2

    .line 95
    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    int-to-long p1, p3

    .line 96
    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedQueueMaxSize:J

    return-void
.end method

.method public static logPerformHapticsFeedbackIfKeyboard(II)V
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x7

    if-eq p1, v0, :cond_7

    return-void

    .line 215
    :cond_7
    const-string/jumbo p1, "vibrator.value_perform_haptic_feedback_keyboard"

    invoke-static {p1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public static logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z
    .registers 7

    .line 259
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    check-cast p1, Landroid/os/CombinedVibration$Mono;

    .line 260
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    instance-of v0, p1, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v0, :cond_16

    check-cast p1, Landroid/os/VibrationEffect$VendorEffect;

    .line 261
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V

    return v1

    :cond_16
    return v2

    .line 266
    :cond_17
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_3e

    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    move v0, v2

    .line 268
    :goto_1e
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 269
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v4, :cond_3a

    check-cast v3, Landroid/os/VibrationEffect$VendorEffect;

    .line 270
    invoke-static {p0, v3}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V

    move v0, v1

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3d
    return v0

    .line 277
    :cond_3e
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_62

    check-cast p1, Landroid/os/CombinedVibration$Sequential;

    move v0, v2

    .line 279
    :goto_45
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_61

    .line 281
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    .line 280
    invoke-static {p0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_61
    return v0

    :cond_62
    return v2
.end method

.method public static logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V
    .registers 4

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    :try_start_4
    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result p1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1a

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    sget-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    return-void

    :catchall_1a
    move-exception p0

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw p0
.end method


# virtual methods
.method public final synthetic lambda$new$0()V
    .registers 1

    .line 80
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibrationReportedFromQueue()V

    return-void
.end method

.method public logVibrationAdaptiveHapticScale(IF)V
    .registers 3

    const/high16 p0, 0x3f800000    # 1.0f

    .line 177
    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_d

    .line 178
    sget-object p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {p0, p1, p2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    :cond_d
    return-void
.end method

.method public logVibrationCountAndSizeIfVendorEffect(ILandroid/os/CombinedVibration;)V
    .registers 3

    if-nez p2, :cond_3

    goto :goto_f

    .line 251
    :cond_3
    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 254
    const-string/jumbo p0, "vibrator.value_vibration_vendor_effect_requests"

    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_f
    :goto_f
    return-void
.end method

.method public logVibrationParamRequestLatency(IJ)V
    .registers 4

    .line 189
    sget-object p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    long-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    return-void
.end method

.method public logVibrationParamRequestTimeout(I)V
    .registers 2

    .line 194
    const-string/jumbo p0, "vibrator.value_vibration_param_request_timeout"

    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public logVibrationParamResponseIgnored()V
    .registers 1

    .line 199
    const-string/jumbo p0, "vibrator.value_vibration_param_response_ignored"

    invoke-static {p0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    return-void
.end method

.method public logVibrationParamScale(F)V
    .registers 2

    .line 184
    sget-object p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {p0, p1}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    return-void
.end method

.method public logVibrationVendorSessionInterrupted(I)V
    .registers 2

    .line 232
    const-string/jumbo p0, "vibrator.value_vibration_vendor_session_interrupted"

    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public logVibrationVendorSessionStarted(I)V
    .registers 2

    .line 221
    const-string/jumbo p0, "vibrator.value_vibration_vendor_session_started"

    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public logVibrationVendorSessionVibrations(II)V
    .registers 3

    .line 237
    sget-object p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    return-void
.end method

.method public writeVibrationReportedAsync(Lcom/android/server/vibrator/VibrationStats$StatsInfo;)V
    .registers 10

    .line 127
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    int-to-long v4, v1

    .line 131
    iget-wide v6, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedQueueMaxSize:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1e

    .line 132
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    invoke-interface {v4, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_45

    .line 135
    :cond_1e
    :goto_1e
    iget-wide v4, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLastVibrationReportedLogUptime:J

    iget-wide v6, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    add-long/2addr v4, v6

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 138
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_1c

    add-int/2addr v1, v2

    const/16 p1, 0xc8

    if-ne v1, p1, :cond_3b

    .line 141
    const-string p1, "VibratorFrameworkStatsLogger"

    const-string v0, " Approaching vibration metrics queue limit, events might be dropped."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    if-eqz v3, :cond_44

    .line 145
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_44
    return-void

    .line 138
    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_1c

    throw p0
.end method

.method public final writeVibrationReportedFromQueue()V
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 156
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v1, :cond_1c

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLastVibrationReportedLogUptime:J

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_36

    .line 161
    :cond_1c
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1a

    if-nez v1, :cond_27

    .line 164
    const-string v0, "VibratorFrameworkStatsLogger"

    const-string v1, "Unexpected vibration metric flush with empty queue. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 166
    :cond_27
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->writeVibrationReported()V

    :goto_2a
    if-nez v2, :cond_35

    .line 170
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    return-void

    .line 161
    :goto_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_1a

    throw p0
.end method

.method public writeVibratorStateOffAsync(I)V
    .registers 3

    .line 109
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public writeVibratorStateOnAsync(IJ)V
    .registers 5

    .line 101
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda1;-><init>(IJ)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
