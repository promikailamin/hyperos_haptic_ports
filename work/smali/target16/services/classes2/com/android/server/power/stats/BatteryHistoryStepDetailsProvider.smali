.class public Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;
.super Ljava/lang/Object;
.source "BatteryHistoryStepDetailsProvider.java"


# instance fields
.field public final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCurStepCpuSystemTimeMs:J

.field public mCurStepCpuUserTimeMs:J

.field public mCurStepStatIOWaitTimeMs:J

.field public mCurStepStatIdleTimeMs:J

.field public mCurStepStatIrqTimeMs:J

.field public mCurStepStatSoftIrqTimeMs:J

.field public mCurStepStatSystemTimeMs:J

.field public mCurStepStatUserTimeMs:J

.field public final mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public mEntityNames:Ljava/util/Map;

.field public mFirstUpdate:Z

.field public mHasHistoryStepDetails:Z

.field public mLastStepCpuSystemTimeMs:J

.field public mLastStepCpuUserTimeMs:J

.field public mLastStepStatIOWaitTimeMs:J

.field public mLastStepStatIdleTimeMs:J

.field public mLastStepStatIrqTimeMs:J

.field public mLastStepStatSoftIrqTimeMs:J

.field public mLastStepStatSystemTimeMs:J

.field public mLastStepStatUserTimeMs:J

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public mPowerStatsReady:Z

.field public mStateNames:Ljava/util/Map;

.field public mSystemReady:Z

.field public final mUpdateToken:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$IwRNIUyGTzLxW2SgikQCDoulwdg(Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->lambda$requestUpdate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bD16cryy4X_dzFe4qVZZxmgiaew(Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->lambda$requestUpdate$1(JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/internal/os/Clock;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mFirstUpdate:Z

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mUpdateToken:Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 87
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mClock:Lcom/android/internal/os/Clock;

    return-void
.end method


# virtual methods
.method public addCpuStats(IIIIIIII)V
    .registers 13

    .line 209
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    .line 210
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    .line 211
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    .line 212
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    .line 213
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    int-to-long p3, p5

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    .line 214
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    int-to-long p3, p6

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    .line 215
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    int-to-long p3, p7

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    .line 216
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    int-to-long p3, p8

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    return-void
.end method

.method public final calculateHistoryStepDetails()V
    .registers 12

    .line 126
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    if-nez v0, :cond_5

    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 141
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 142
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 143
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 145
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 147
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 148
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 150
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    const/4 v1, -0x1

    .line 151
    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    const/4 v1, 0x0

    .line 152
    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 153
    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 154
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_65
    if-ge v1, v2, :cond_c8

    .line 157
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 158
    iget-wide v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    iget-wide v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    sub-long v6, v4, v6

    long-to-int v6, v6

    .line 160
    iget-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iget-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    sub-long v9, v7, v9

    long-to-int v9, v9

    add-int v10, v6, v9

    .line 163
    iput-wide v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    .line 164
    iput-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    .line 165
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v5, v7

    if-gt v10, v5, :cond_8b

    goto :goto_c5

    .line 168
    :cond_8b
    iget v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int v8, v5, v7

    if-gt v10, v8, :cond_9c

    .line 169
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v3, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 170
    iput v6, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 171
    iput v9, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_c5

    .line 173
    :cond_9c
    iget v8, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v8, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 174
    iput v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 175
    iput v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 176
    iget v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int v8, v5, v7

    if-gt v10, v8, :cond_b5

    .line 177
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v3, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 178
    iput v6, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 179
    iput v9, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_c5

    .line 181
    :cond_b5
    iget v8, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v8, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 182
    iput v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 183
    iput v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 184
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v3, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 185
    iput v6, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 186
    iput v9, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    :goto_c5
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 190
    :cond_c8
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    .line 191
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    .line 192
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    .line 193
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    .line 194
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    .line 195
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    .line 196
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    .line 197
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    return-void
.end method

.method public finishAddingCpuLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    return-void
.end method

.method public final synthetic lambda$requestUpdate$0()V
    .registers 6

    .line 99
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 101
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v3

    .line 102
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->update(JJ)V

    .line 103
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final synthetic lambda$requestUpdate$1(JJ)V
    .registers 5

    .line 110
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->update(JJ)V

    return-void
.end method

.method public onSystemReady()V
    .registers 2

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mSystemReady:Z

    return-void
.end method

.method public final populatePowerEntityMaps()V
    .registers 10

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    .line 294
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_54

    .line 299
    :cond_17
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_54

    aget-object v4, v0, v3

    .line 300
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v6, v2

    .line 301
    :goto_24
    iget-object v7, v4, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v8, v7

    if-ge v6, v8, :cond_39

    .line 302
    aget-object v7, v7, v6

    .line 303
    iget v8, v7, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v7, v7, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 306
    :cond_39
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    iget v7, v4, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v4, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    iget v4, v4, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_54
    :goto_54
    return-void
.end method

.method public requestUpdate()V
    .registers 9

    .line 95
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mUpdateToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 96
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mSystemReady:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mFirstUpdate:Z

    if-eqz v0, :cond_13

    :cond_11
    move-object v3, p0

    goto :goto_39

    .line 106
    :cond_13
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 108
    :try_start_16
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 109
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 110
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;JJ)V

    iget-object p0, v3, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mUpdateToken:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 112
    monitor-exit v1

    return-void

    :catchall_35
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_35

    throw p0

    .line 98
    :goto_39
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;)V

    iget-object v1, v3, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mUpdateToken:Ljava/lang/Object;

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    const-wide/16 v0, 0x0

    .line 225
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    .line 226
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    .line 227
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    .line 228
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    .line 229
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    .line 230
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    .line 231
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    .line 232
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    return-void
.end method

.method public update(JJ)V
    .registers 13

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    .line 118
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuDetails()V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->calculateHistoryStepDetails()V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->updateStateResidency()V

    .line 121
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->recordHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;JJ)V

    .line 122
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mFirstUpdate:Z

    return-void
.end method

.method public final updateStateResidency()V
    .registers 13

    .line 236
    const-string v0, "BatteryHistoryStepDetails"

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 238
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsReady:Z

    if-nez v1, :cond_1d

    .line 239
    const-class v1, Landroid/power/PowerStatsInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/power/PowerStatsInternal;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_1a

    .line 241
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->populatePowerEntityMaps()V

    :cond_1a
    const/4 v1, 0x1

    .line 243
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsReady:Z

    .line 246
    :cond_1d
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f3

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    goto/16 :goto_f3

    .line 252
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-virtual {v1, v3}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    .line 253
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_ed

    if-eqz v1, :cond_f3

    .line 259
    array-length v3, v1

    if-nez v3, :cond_4d

    goto/16 :goto_f3

    .line 263
    :cond_4d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SubsystemPowerState"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v2

    .line 264
    :goto_55
    array-length v5, v1

    if-ge v4, v5, :cond_e4

    .line 265
    aget-object v5, v1, v4

    .line 266
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 267
    const-string v7, " subsystem_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v7, " name="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    iget v9, v5, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v2

    .line 270
    :goto_7d
    iget-object v9, v5, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v10, v9

    if-ge v8, v10, :cond_cd

    .line 271
    aget-object v9, v9, v8

    .line 272
    const-string v10, " state_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    iget v11, v5, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    iget v11, v9, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 274
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 273
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v10, " time="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    const-string v10, " count="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    const-string v10, " last entry="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v9, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    .line 280
    :cond_cd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const v7, 0x8000

    if-le v5, v7, :cond_e0

    .line 281
    const-string/jumbo v1, "updateStateResidency: buffer not enough"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_e4

    :cond_e0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_55

    .line 287
    :cond_e4
    :goto_e4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    return-void

    :catch_ed
    move-exception p0

    .line 255
    const-string v1, "Failed to getStateResidencyAsync"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f3
    :goto_f3
    return-void
.end method
