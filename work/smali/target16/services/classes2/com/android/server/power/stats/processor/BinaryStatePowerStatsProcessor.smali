.class public abstract Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "BinaryStatePowerStatsProcessor.java"


# instance fields
.field public mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mEnergyConsumerSupported:Z

.field public mInitiatingUid:I

.field public mLastState:I

.field public mLastStateKnown:Z

.field public mLastStateTimestamp:J

.field public mLastUpdateTimestamp:J

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerComponentId:I

.field public final mPowerComponentName:Ljava/lang/String;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(ID)V
    .registers 5

    .line 67
    new-instance v0, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V

    return-void
.end method

.method public constructor <init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V
    .registers 6

    .line 71
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 72
    iput p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    .line 73
    invoke-static {p1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentName:Ljava/lang/String;

    .line 74
    new-instance p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {p1, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 75
    iput-object p4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    return-void
.end method


# virtual methods
.method public addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .registers 12

    .line 182
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    .line 184
    iget v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 185
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    invoke-virtual {p0, v0, v2, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 188
    :cond_f
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_29

    .line 190
    iput-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    .line 191
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {p2, v0, v2, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 194
    :cond_29
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method

.method public final combineDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .registers 10

    .line 255
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_4e

    .line 256
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 257
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 258
    new-instance v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor-IA;)V

    .line 259
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 260
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_26
    if-ltz v3, :cond_4b

    .line 261
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 262
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 263
    iget-object v5, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v5, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_48

    .line 267
    :cond_3b
    iget-wide v4, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    iget-object v6, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v6, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDevicePowerEstimate([J)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    :goto_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_26

    :cond_4b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_4e
    return-void
.end method

.method public computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .registers 10

    .line 234
    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_52

    .line 235
    iget-object v1, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 236
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_4f

    .line 240
    :cond_1d
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4f

    if-eqz p3, :cond_3b

    .line 244
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v2

    goto :goto_41

    .line 246
    :cond_3b
    iget-object v4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    .line 248
    :goto_41
    iget-object v4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 249
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_52
    return-void
.end method

.method public final computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .registers 13

    .line 273
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_58

    .line 274
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 275
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    .line 277
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_22
    if-ltz v3, :cond_55

    .line 278
    invoke-virtual {p2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 280
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2e
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 281
    iget-object v7, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v7, v4, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 283
    iget-wide v6, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    iget-object v8, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 284
    invoke-virtual {v8, v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    goto :goto_2e

    :cond_52
    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    :cond_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_58
    return-void
.end method

.method public final computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .registers 16

    .line 292
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_76

    .line 293
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 294
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    .line 296
    iget-wide v3, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    goto :goto_73

    .line 299
    :cond_25
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2d
    if-ltz v3, :cond_73

    .line 302
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 303
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_3b
    if-ltz v7, :cond_70

    .line 304
    invoke-virtual {p2, v7}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 305
    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v10, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v9, v8, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 307
    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v10, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-eqz v11, :cond_6d

    .line 309
    iget-wide v11, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    long-to-double v9, v9

    mul-double/2addr v11, v9

    iget-wide v9, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    long-to-double v9, v9

    div-double/2addr v11, v9

    .line 310
    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v10, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 311
    iget-object v9, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v10, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {p1, v8, v9, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_6d
    add-int/lit8 v7, v7, -0x1

    goto :goto_3b

    :cond_70
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    :cond_73
    :goto_73
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_76
    return-void
.end method

.method public final ensureInitialized()V
    .registers 9

    .line 81
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v0, :cond_5

    return-void

    .line 85
    :cond_5
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 87
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    .line 88
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    .line 89
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 90
    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 91
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v3, v2, [J

    iput-object v3, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 92
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 93
    iget v0, v1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    return-void
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 6

    .line 213
    iget v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 214
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 216
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 218
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_1e

    .line 219
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 222
    :cond_1e
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-boolean p3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V

    .line 224
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p2

    .line 225
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p3

    if-eqz p3, :cond_38

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->combineDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    :cond_38
    return-void
.end method

.method public final flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 7

    .line 198
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    sub-long v1, p2, v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 199
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 201
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 202
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 203
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    return-void
.end method

.method public abstract getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
.end method

.method public noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 9

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v0

    .line 113
    iget-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateKnown:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2e

    .line 119
    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v3, -0xc001

    and-int/2addr v1, v3

    const/16 v3, 0x15

    if-ne v1, v3, :cond_2a

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_2a

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentName:Ljava/lang/String;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    if-nez v0, :cond_26

    .line 125
    iput v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    goto :goto_2c

    :cond_26
    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    goto :goto_2c

    .line 130
    :cond_2a
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 132
    :goto_2c
    iput-boolean v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateKnown:Z

    .line 135
    :cond_2e
    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    if-ne v0, v1, :cond_33

    return-void

    :cond_33
    if-ne v0, v2, :cond_43

    .line 140
    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, 0x8015

    if-ne p1, v1, :cond_68

    .line 142
    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    goto :goto_68

    .line 145
    :cond_43
    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_54

    .line 146
    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const/16 v3, 0x4015

    if-ne v1, v3, :cond_54

    .line 148
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 151
    :cond_54
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    iget-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 152
    iput v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 153
    iget-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    if-nez v1, :cond_68

    .line 154
    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 157
    :cond_68
    :goto_68
    iget-wide p1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 158
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    return-void
.end method

.method public recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .registers 10

    .line 162
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    sub-long v0, p3, v0

    .line 163
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 164
    invoke-virtual {p1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v3

    add-long/2addr v3, v0

    .line 163
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_42

    .line 167
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-nez p1, :cond_34

    .line 169
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p1, p1, [J

    .line 170
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidUsageDuration([JJ)V

    goto :goto_42

    .line 173
    :cond_34
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 174
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 173
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 177
    :cond_42
    :goto_42
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    return-void
.end method

.method public start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 5

    .line 98
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 102
    iput-boolean v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateKnown:Z

    .line 103
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method
