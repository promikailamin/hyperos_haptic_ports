.class public Lcom/android/server/display/brightness/clamper/PmicMonitor;
.super Ljava/lang/Object;
.source "PmicMonitor.java"


# instance fields
.field public mAvgPowerCircularList:[F

.field public mCurrentTemperature:Landroid/os/Temperature;

.field public mCurrentTimestampMillis:J

.field public mCurrentTotalAvgPower:F

.field public final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mLastEnergyConsumed:F

.field public mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

.field mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

.field public mPowerListEnd:I

.field public mPowerListStart:I

.field public final mPowerMonitorPeriodConfigMillis:J

.field public final mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field final mThermalService:Landroid/os/IThermalService;


# direct methods
.method public static synthetic $r8$lambda$cEEyBdj4M7vH142zh4xqaprVEkY(Lcom/android/server/display/brightness/clamper/PmicMonitor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->capturePeriodicDisplayPower()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;Landroid/os/IThermalService;II)V
    .registers 7

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    .line 57
    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    .line 62
    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    .line 68
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

    .line 69
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    .line 70
    const-class p1, Landroid/power/PowerStatsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/power/PowerStatsInternal;

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 71
    div-int/2addr p3, p4

    new-array p1, p3, [F

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long p1, p4

    .line 74
    iput-wide p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigMillis:J

    return-void
.end method


# virtual methods
.method public final capturePeriodicDisplayPower()V
    .registers 10

    .line 98
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 99
    array-length v1, v0

    if-nez v1, :cond_d

    goto/16 :goto_c9

    .line 102
    :cond_d
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 103
    :goto_14
    array-length v4, v0

    if-ge v3, v4, :cond_26

    .line 104
    aget-object v4, v0, v3

    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v6, 0x3

    if-ne v5, v6, :cond_23

    .line 105
    iget v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 109
    :cond_26
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v0

    const-string v3, "PmicMonitor"

    if-nez v0, :cond_34

    .line 110
    const-string p0, "DISPLAY energyConsumerIds size is null"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_34
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 114
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    if-nez v0, :cond_46

    .line 116
    const-string p0, "Energy consumers results are null"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    const/4 v1, 0x0

    .line 122
    :try_start_47
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4d} :catch_51
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_47 .. :try_end_4d} :catch_4f

    move-object v1, v0

    goto :goto_5f

    :catch_4f
    move-exception v0

    goto :goto_53

    :catch_51
    move-exception v0

    goto :goto_59

    .line 127
    :goto_53
    const-string v4, "exception reading getEnergyConsumedAsync: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    .line 124
    :goto_59
    const-string/jumbo v4, "timeout or interrupt reading getEnergyConsumedAsync failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5f
    if-eqz v1, :cond_c4

    .line 131
    array-length v0, v1

    if-nez v0, :cond_65

    goto :goto_c4

    .line 136
    :cond_65
    aget-object v0, v1, v2

    iget-wide v3, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    long-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    sub-float/2addr v3, v4

    .line 137
    iget-wide v4, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iget-wide v6, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    div-float/2addr v3, v0

    div-float/2addr v3, v4

    .line 145
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->getDisplayTemperature()Landroid/os/Temperature;

    move-result-object v0

    .line 147
    iget-object v4, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    iget v5, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    aput v3, v4, v5

    .line 148
    iget v6, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    add-float/2addr v6, v3

    iput v6, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    const/4 v3, 0x1

    add-int/2addr v5, v3

    .line 149
    array-length v7, v4

    rem-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    .line 151
    iget v7, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    if-ne v7, v5, :cond_93

    move v5, v3

    goto :goto_94

    :cond_93
    move v5, v2

    .line 155
    :goto_94
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTemperature:Landroid/os/Temperature;

    .line 156
    aget-object v1, v1, v2

    iget-wide v7, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    long-to-float v2, v7

    iput v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    .line 157
    iget-wide v1, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iput-wide v1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    if-eqz v0, :cond_b1

    if-eqz v5, :cond_b1

    .line 160
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

    array-length v2, v4

    int-to-float v2, v2

    div-float/2addr v6, v2

    .line 161
    invoke-virtual {v0}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    .line 160
    invoke-interface {v1, v6, v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;->onChanged(FI)V

    :cond_b1
    if-eqz v5, :cond_c9

    .line 166
    iget v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    iget v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    aget v4, v1, v2

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    add-int/2addr v2, v3

    .line 167
    array-length v0, v1

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    goto :goto_c9

    .line 132
    :cond_c4
    :goto_c4
    const-string p0, "displayResults are null"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    :goto_c9
    return-void
.end method

.method public final getDisplayTemperature()Landroid/os/Temperature;
    .registers 5

    .line 79
    const-string v0, "PmicMonitor"

    const/4 v1, 0x0

    .line 83
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/os/IThermalService;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object p0

    .line 85
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    .line 86
    const-string v2, "Multiple skin temperatures not allowed!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :catch_14
    move-exception p0

    goto :goto_1e

    .line 88
    :cond_16
    :goto_16
    array-length v2, p0

    if-lez v2, :cond_1d

    const/4 v2, 0x0

    .line 89
    aget-object p0, p0, v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1c} :catch_14

    return-object p0

    :cond_1d
    return-object v1

    .line 92
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayTemperature failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public isStopped()Z
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public shutdown()V
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public start()V
    .registers 10

    .line 175
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const-string v1, "PmicMonitor"

    if-nez v0, :cond_c

    .line 176
    const-string p0, "Power stats service not found for monitoring."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_16

    .line 180
    const-string p0, "Thermal service not found."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2d

    .line 184
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/PmicMonitor;)V

    iget-wide v4, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigMillis:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v4

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 190
    :cond_2d
    const-string p0, "PMIC already scheduled, stop() called before start."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 199
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method
