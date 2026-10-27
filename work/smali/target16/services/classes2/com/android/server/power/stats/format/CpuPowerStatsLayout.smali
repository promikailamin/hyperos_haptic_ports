.class public Lcom/android/server/power/stats/format/CpuPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "CpuPowerStatsLayout.java"


# instance fields
.field public mDeviceCpuTimeByClusterCount:I

.field public mDeviceCpuTimeByClusterPosition:I

.field public mDeviceCpuTimeByScalingStepCount:I

.field public mDeviceCpuTimeByScalingStepPosition:I

.field public mScalingStepToPowerBracketMap:[I

.field public mUidPowerBracketCount:I

.field public mUidPowerBracketsPosition:I


# direct methods
.method public constructor <init>(II[I)V
    .registers 5

    .line 47
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 48
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->addDeviceSectionCpuTimeByScalingStep(I)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->addDeviceSectionCpuTimeByCluster(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 53
    invoke-virtual {p0, p3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->addUidSectionCpuTimeByPowerBracket([I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 59
    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 60
    const-string v0, "dt"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 62
    const-string v0, "dtc"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 64
    const-string v0, "dc"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    .line 66
    const-string v0, "dcc"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    .line 68
    const-string/jumbo v0, "ub"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    .line 69
    const-string/jumbo v0, "us"

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    if-nez p1, :cond_3f

    .line 72
    iget p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 74
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->updatePowerBracketCount()V

    return-void
.end method


# virtual methods
.method public final addDeviceSectionCpuTimeByCluster(I)V
    .registers 3

    .line 127
    const-string v0, "clusters"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    .line 128
    iput p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    return-void
.end method

.method public final addDeviceSectionCpuTimeByScalingStep(I)V
    .registers 3

    .line 99
    const-string/jumbo v0, "steps"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 100
    iput p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    return-void
.end method

.method public final addUidSectionCpuTimeByPowerBracket([I)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 156
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->updatePowerBracketCount()V

    .line 157
    iget p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    const-string/jumbo v0, "time"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    return-void
.end method

.method public getCpuClusterCount()I
    .registers 1

    .line 132
    iget p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    return p0
.end method

.method public getCpuPowerBracketCount()I
    .registers 1

    .line 174
    iget p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    return p0
.end method

.method public getCpuScalingStepCount()I
    .registers 1

    .line 104
    iget p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    return p0
.end method

.method public getScalingStepToPowerBracketMap()[I
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    return-object p0
.end method

.method public getTimeByCluster([JI)J
    .registers 3

    .line 148
    iget p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getTimeByScalingStep([JI)J
    .registers 3

    .line 120
    iget p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidTimeByPowerBracket([JI)J
    .registers 3

    .line 188
    iget p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public setTimeByScalingStep([JIJ)V
    .registers 5

    .line 112
    iget p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    add-int/2addr p0, p2

    aput-wide p3, p1, p0

    return-void
.end method

.method public setUidTimeByPowerBracket([JIJ)V
    .registers 5

    .line 181
    iget p0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    add-int/2addr p0, p2

    aput-wide p3, p1, p0

    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .registers 4

    .line 81
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 82
    const-string v0, "dt"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v0, "dtc"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v0, "dc"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v0, "dcc"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string/jumbo v0, "ub"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v0, "us"

    iget-object v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    return-void
.end method

.method public final updatePowerBracketCount()V
    .registers 6

    const/4 v0, 0x1

    .line 161
    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 162
    iget-object v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 163
    iget v4, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    if-lt v3, v4, :cond_13

    add-int/lit8 v3, v3, 0x1

    .line 164
    iput v3, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method
