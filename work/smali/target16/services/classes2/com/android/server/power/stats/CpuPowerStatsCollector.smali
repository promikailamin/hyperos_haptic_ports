.class public Lcom/android/server/power/stats/CpuPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "CpuPowerStatsCollector.java"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mCpuPowerStats:Lcom/android/internal/os/PowerStats;

.field public mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public mCpuTimeByScalingStep:[J

.field public mDefaultCpuPowerBrackets:I

.field public mDefaultCpuPowerBracketsPerEnergyConsumer:I

.field public final mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

.field public mIsInitialized:Z

.field public mIsPerUidTimeInStateSupported:Z

.field public mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

.field public mLastUpdateTimestampNanos:J

.field public mLastUpdateUptimeMillis:J

.field public mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

.field public mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mTempCpuTimeByScalingStep:[J

.field public mTempUidStats:[J

.field public final mUidStats:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$l7KbxBakyCEoVp9gpEIBpVgzupw(Lcom/android/server/power/stats/CpuPowerStatsCollector;I[J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->processUidStats(I[J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;)V
    .registers 8

    .line 93
    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x1

    .line 94
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 96
    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    move-object v0, p0

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 83
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 97
    iput-object p1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    return-void
.end method

.method private ensureInitialized()Z
    .registers 13

    .line 101
    iget-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 105
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 110
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 111
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getKernelCpuStatsReader()Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    .line 112
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getDefaultCpuPowerBrackets()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    .line 113
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    .line 114
    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getDefaultCpuPowerBracketsPerEnergyConsumer()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    .line 116
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    invoke-virtual {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->isSupportedFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    .line 118
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 121
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    .line 122
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    .line 123
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    .line 124
    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBrackets()[I

    move-result-object v0

    .line 126
    new-instance v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 127
    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v4

    array-length v4, v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;-><init>(II[I)V

    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 129
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0, v11}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 132
    new-instance v5, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 133
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 134
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v10

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 135
    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 137
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    .line 139
    iput-boolean v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method

.method public static mapScalingStepsToDefaultBrackets([I[DI)V
    .registers 13

    .line 225
    array-length v0, p1

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_a
    if-ge v6, v0, :cond_1b

    aget-wide v7, p1, v6

    cmpg-double v9, v7, v1

    if-gez v9, :cond_13

    move-wide v1, v7

    :cond_13
    cmpl-double v9, v7, v3

    if-lez v9, :cond_18

    move-wide v3, v7

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 233
    :cond_1b
    array-length v0, p1

    if-gt v0, p2, :cond_26

    .line 234
    :goto_1e
    array-length p1, p0

    if-ge v5, p1, :cond_46

    .line 235
    aput v5, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 238
    :cond_26
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v2, v0

    int-to-double v6, p2

    div-double/2addr v2, v6

    .line 242
    :goto_31
    array-length v4, p1

    if-ge v5, v4, :cond_46

    .line 243
    aget-wide v6, p1, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sub-double/2addr v6, v0

    div-double/2addr v6, v2

    double-to-int v4, v6

    if-lt v4, p2, :cond_41

    add-int/lit8 v4, p2, -0x1

    .line 247
    :cond_41
    aput v4, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_46
    return-void
.end method


# virtual methods
.method public collectStats(JJ)Lcom/android/internal/os/PowerStats;
    .registers 12

    .line 326
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return-object p2

    .line 330
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    if-nez p1, :cond_d

    return-object p2

    .line 334
    :cond_d
    iget-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 335
    iget-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 338
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    new-instance v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/CpuPowerStatsCollector;)V

    iget-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 339
    invoke-virtual {p1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    .line 338
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->readCpuStats(Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;[IJ[J[J)J

    move-result-wide p1

    .line 341
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuScalingStepCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    if-ltz v0, :cond_5b

    .line 342
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    aget-wide v5, v5, v0

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->setTimeByScalingStep([JIJ)V

    .line 344
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 347
    :cond_5b
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 349
    iput-wide p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    .line 351
    iget-wide p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    sub-long p1, p3, p1

    .line 352
    iput-wide p3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    cmp-long p3, p1, v1

    if-lez p3, :cond_74

    goto :goto_75

    :cond_74
    move-wide v1, p1

    .line 357
    :goto_75
    iget-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object p2, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 359
    iget-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object p2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 361
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    return-object p0
.end method

.method public dumpCpuPowerBracketsLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 256
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_31

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    if-nez v0, :cond_c

    goto :goto_31

    .line 264
    :cond_c
    const-string v0, "CPU power brackets; cluster/freq in MHz(avg current in mA):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 265
    :goto_12
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 266
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 268
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->getCpuPowerBracketDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_31
    :goto_31
    return-void
.end method

.method public getCpuPowerBracketDescription(I)Ljava/lang/String;
    .registers 15

    .line 278
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 279
    const-string p0, ""

    return-object p0

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    .line 286
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1e
    if-ge v5, v3, :cond_7b

    aget v7, v2, v5

    .line 287
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    move v9, v4

    .line 288
    :goto_29
    array-length v10, v8

    if-ge v9, v10, :cond_78

    .line 289
    aget v10, v0, v6

    if-eq v10, p1, :cond_33

    :goto_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_75

    .line 294
    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_3e

    .line 295
    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_3e
    array-length v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_4a

    .line 298
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x2f

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    :cond_4a
    aget v10, v8, v9

    div-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x28

    .line 301
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 303
    invoke-virtual {v11, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 302
    const-string v12, "%.1f"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    .line 304
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_30

    :goto_75
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 309
    :cond_7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;
    .registers 2

    .line 317
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 321
    :cond_8
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-object p0
.end method

.method public final initDefaultPowerBrackets(I)[I
    .registers 15

    .line 206
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 207
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v1

    new-array v1, v1, [D

    .line 209
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    .line 210
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1a
    if-ge v5, v3, :cond_39

    aget v7, v2, v5

    .line 211
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    move v9, v4

    .line 212
    :goto_25
    array-length v10, v8

    if-ge v9, v10, :cond_36

    add-int/lit8 v10, v6, 0x1

    .line 213
    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v11, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v11

    aput-wide v11, v1, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_25

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 216
    :cond_39
    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    return-object v0
.end method

.method public final initPowerBrackets()[I
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 145
    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBracketsFromPowerProfile()[I

    move-result-object p0

    return-object p0

    .line 146
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 147
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    goto :goto_6d

    .line 149
    :cond_20
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 150
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v1

    if-ne v0, v1, :cond_36

    .line 151
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBracketsByCluster(I)[I

    move-result-object p0

    return-object p0

    .line 153
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assigning a single power brackets to each CPU_CLUSTER energy consumer. Number of CPU clusters ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 155
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not match the number of energy consumers ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 157
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").  Using default power bucket assignment."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "CpuPowerStatsCollector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    move-result-object p0

    return-object p0

    .line 148
    :cond_6d
    :goto_6d
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    move-result-object p0

    return-object p0
.end method

.method public final initPowerBracketsByCluster(I)[I
    .registers 15

    .line 178
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 181
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    .line 182
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_13
    if-ge v4, v2, :cond_4d

    aget v7, v1, v4

    .line 183
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    .line 184
    array-length v9, v8

    new-array v9, v9, [D

    move v10, v3

    .line 185
    :goto_21
    array-length v11, v8

    if-ge v10, v11, :cond_2f

    .line 186
    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v11, v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    .line 189
    :cond_2f
    array-length v7, v8

    new-array v7, v7, [I

    .line 190
    invoke-static {v7, v9, p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    move v9, v3

    move v10, v9

    .line 193
    :goto_37
    array-length v11, v8

    if-ge v9, v11, :cond_48

    .line 194
    aget v11, v7, v9

    add-int/2addr v11, v6

    add-int/lit8 v12, v5, 0x1

    .line 195
    aput v11, v0, v5

    if-le v11, v10, :cond_44

    move v10, v11

    :cond_44
    add-int/lit8 v9, v9, 0x1

    move v5, v12

    goto :goto_37

    :cond_48
    add-int/lit8 v6, v10, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_4d
    return-object v0
.end method

.method public final initPowerBracketsFromPowerProfile()[I
    .registers 12

    .line 164
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 166
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_12
    if-ge v4, v2, :cond_31

    aget v6, v1, v4

    .line 167
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    move v8, v3

    .line 168
    :goto_1d
    array-length v9, v7

    if-ge v8, v9, :cond_2e

    .line 169
    iget-object v9, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v9, v6, v8}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketForScalingStep(II)I

    move-result v9

    add-int/lit8 v10, v5, 0x1

    .line 170
    aput v9, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_1d

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_31
    return-object v0
.end method

.method public onUidRemoved(I)V
    .registers 2

    .line 412
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    .line 413
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final processUidStats(I[J)V
    .registers 12

    .line 371
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    if-nez v1, :cond_29

    .line 375
    new-instance v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;-><init>(Lcom/android/server/power/stats/CpuPowerStatsCollector-IA;)V

    .line 376
    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    .line 377
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    .line 378
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_29
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2d
    if-ltz v0, :cond_51

    .line 383
    aget-wide v5, p2, v0

    iget-object v7, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    aget-wide v7, v7, v0

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_41

    move v4, v2

    .line 388
    :cond_41
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v8, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    invoke-virtual {v7, v8, v0, v5, v6}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->setUidTimeByPowerBracket([JIJ)V

    .line 389
    iget-object v5, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    aget-wide v6, p2, v0

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    :cond_51
    if-eqz v4, :cond_89

    .line 393
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 394
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    goto :goto_64

    .line 396
    :cond_5e
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    .line 399
    :goto_64
    iget-object p2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    if-nez p2, :cond_7a

    .line 401
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p0, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 403
    :cond_7a
    :goto_7a
    array-length p0, p2

    if-ge v3, p0, :cond_89

    .line 404
    aget-wide p0, p2, v3

    iget-object v0, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    aget-wide v4, v0, v3

    add-long/2addr p0, v4

    aput-wide p0, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    :cond_89
    return-void
.end method
