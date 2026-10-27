.class public Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "PowerGroup.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerGroup"


# instance fields
.field public final mDimDuration:J

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mDreamManagerAttemptedDozing:Z

.field public final mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mGroupId:I

.field public final mIsDefaultGroupAdjacent:Z

.field public mIsSandmanSummoned:Z

.field public mLastPowerOnTime:J

.field public mLastSleepReason:I

.field public mLastSleepTime:J

.field public mLastUserActivityEvent:I

.field public mLastUserActivityTime:J

.field public mLastUserActivityTimeNoChangeLights:J

.field public mLastWakeReason:I

.field public mLastWakeTime:J

.field public final mNotifier:Lcom/android/server/power/Notifier;

.field public mPoweringOn:Z

.field public mReady:Z

.field public final mScreenOffTimeout:J

.field public final mSupportsSandman:Z

.field public mUserActivitySummary:I

.field public mWakeLockSummary:I

.field public mWakefulness:I

.field public final mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;IZZJLcom/android/server/power/feature/PowerManagerFlags;Z)V
    .registers 14

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    const/16 v1, 0xe

    .line 104
    iput v1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 116
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 117
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 118
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 119
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 120
    iput p5, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 121
    iput-boolean p6, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 122
    iput-boolean p7, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 123
    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 124
    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 125
    iput-object p10, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 126
    iput-boolean p11, p0, Lcom/android/server/power/PowerGroup;->mIsDefaultGroupAdjacent:Z

    if-eqz p1, :cond_5c

    .line 132
    const-class p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 133
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz p2, :cond_5c

    .line 135
    invoke-virtual {p4, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsForGroup(I)[I

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 136
    array-length p3, p1

    if-lez p3, :cond_5c

    .line 137
    aget p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdForDisplayId(I)I

    move-result p1

    .line 138
    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isValidVirtualDeviceId(I)Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 139
    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDimDurationMillisForDeviceId(I)J

    move-result-wide p3

    .line 140
    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getScreenOffTimeoutMillisForDeviceId(I)J

    move-result-wide p1

    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-lez p5, :cond_5f

    cmp-long p5, p3, p1

    if-lez p5, :cond_5f

    move-wide p3, p1

    goto :goto_5f

    :cond_5c
    const-wide/16 p3, -0x1

    move-wide p1, p3

    .line 149
    :cond_5f
    :goto_5f
    iput-wide p3, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    .line 150
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;JLcom/android/server/power/feature/PowerManagerFlags;Z)V
    .registers 11

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    const/16 v1, 0xe

    .line 104
    iput v1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 156
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 157
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 158
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 159
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 160
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 161
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 163
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 164
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 165
    iput-object p7, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const-wide/16 p1, -0x1

    .line 166
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    .line 167
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    .line 168
    iput-boolean p8, p0, Lcom/android/server/power/PowerGroup;->mIsDefaultGroupAdjacent:Z

    return-void
.end method

.method public static sleepReasonToDisplayStateReason(I)I
    .registers 3

    .line 0
    const/4 v0, 0x4

    const/4 v1, 0x6

    if-eq p0, v0, :cond_8

    if-eq p0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return v1
.end method

.method public static wakeReasonToDisplayStateReason(I)I
    .registers 4

    .line 0
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_11

    const/16 v2, 0xe

    if-eq p0, v2, :cond_f

    if-eq p0, v0, :cond_11

    const/4 v0, 0x7

    if-eq p0, v0, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    const/4 p0, 0x4

    return p0

    :cond_11
    return v0
.end method


# virtual methods
.method public canTransitionBetweenNonInteractiveStates()Z
    .registers 2

    .line 253
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    if-nez v0, :cond_12

    .line 254
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public dozeLocked(JIIZ)Z
    .registers 18

    .line 370
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_99

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_10

    goto/16 :goto_99

    :cond_10
    if-nez v1, :cond_1a

    if-nez p5, :cond_15

    return v2

    .line 378
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/power/PowerGroup;->mDreamManagerAttemptedDozing:Z

    if-eqz v1, :cond_1a

    return v2

    .line 383
    :cond_1a
    const-string/jumbo v1, "powerOffDisplay"

    const-wide/32 v9, 0x20000

    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move/from16 v1, p4

    .line 386
    :try_start_25
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0xe

    .line 385
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 387
    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v3, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    sub-long v1, p1, v1

    .line 389
    sget-object v3, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Powering off display group due to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {v5}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (groupId= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", millisSinceLastUserActivity="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastUserActivityEvent="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    .line 393
    invoke-static {v1}, Landroid/os/PowerManager;->userActivityEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    .line 396
    invoke-virtual {p0, v11}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .line 397
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_90
    .catchall {:try_start_25 .. :try_end_90} :catchall_94

    .line 400
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return v11

    :catchall_94
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 401
    throw v0

    :cond_99
    :goto_99
    return v2
.end method

.method public dreamLocked(JIZ)Z
    .registers 17

    .line 344
    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_67

    const/4 v9, 0x1

    if-nez p4, :cond_e

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v1, v9, :cond_e

    goto :goto_67

    .line 348
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dreamPowerGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 350
    :try_start_29
    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Napping power group (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0, v9}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .line 352
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_5e
    .catchall {:try_start_29 .. :try_end_5e} :catchall_62

    .line 355
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v9

    :catchall_62
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    throw v0

    :cond_67
    :goto_67
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .registers 1

    .line 192
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    return p0
.end method

.method public getLastPowerOnTimeLocked()J
    .registers 3

    .line 285
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-wide v0
.end method

.method public getLastSleepTimeLocked()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeLocked()J
    .registers 3

    .line 425
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeNoChangeLightsLocked()J
    .registers 3

    .line 435
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-wide v0
.end method

.method public getLastWakeTimeLocked()J
    .registers 3

    .line 180
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    return-wide v0
.end method

.method public getScreenDimDurationOverrideLocked(J)J
    .registers 7

    .line 176
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_9

    return-wide p1

    :cond_9
    return-wide v0
.end method

.method public getScreenOffTimeoutOverrideLocked(J)J
    .registers 7

    .line 172
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_9

    return-wide p1

    :cond_9
    return-wide v0
.end method

.method public getScreenTimeoutPolicy()I
    .registers 1

    .line 486
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->hasWakeLockKeepingScreenOnLocked()Z

    move-result p0

    return p0
.end method

.method public getUserActivitySummaryLocked()I
    .registers 1

    .line 445
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return p0
.end method

.method public getWakeLockSummaryLocked()I
    .registers 1

    .line 465
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return p0
.end method

.method public getWakefulnessLocked()I
    .registers 1

    .line 188
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    return p0
.end method

.method public hasWakeLockKeepingScreenOnLocked()Z
    .registers 1

    .line 481
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit8 p0, p0, 0x26

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isBrightOrDimLocked()Z
    .registers 1

    .line 457
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result p0

    return p0
.end method

.method public isDefaultGroupAdjacent()Z
    .registers 1

    .line 297
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mIsDefaultGroupAdjacent:Z

    return p0
.end method

.method public isDefaultOrAdjacentGroup()Z
    .registers 2

    .line 242
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isDefaultGroupAdjacent()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isPolicyBrightLocked()Z
    .registers 2

    .line 449
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isPolicyDimLocked()Z
    .registers 2

    .line 453
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isPoweringOnLocked()Z
    .registers 1

    .line 293
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return p0
.end method

.method public isReadyLocked()Z
    .registers 1

    .line 262
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    return p0
.end method

.method public isSandmanSummonedLocked()Z
    .registers 1

    .line 305
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return p0
.end method

.method public needSuspendBlockerLocked(ZZ)Z
    .registers 5

    .line 508
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 513
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    if-nez p2, :cond_12

    :cond_11
    return v1

    .line 519
    :cond_12
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne p1, v1, :cond_1e

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1e

    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public setDreamManagerAttemptedDozingLocked(Z)V
    .registers 5

    .line 236
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dreamManagerAttemptedDozing status changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mDreamManagerAttemptedDozing:Z

    return-void
.end method

.method public setIsPoweringOnLocked(Z)V
    .registers 2

    .line 301
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return-void
.end method

.method public setLastPowerOnTimeLocked(J)V
    .registers 3

    .line 289
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-void
.end method

.method public setLastUserActivityTimeLocked(JI)V
    .registers 4

    .line 430
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    .line 431
    iput p3, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    return-void
.end method

.method public setLastUserActivityTimeNoChangeLightsLocked(JI)V
    .registers 4

    .line 440
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    .line 441
    iput p3, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    return-void
.end method

.method public setReadyLocked(Z)Z
    .registers 3

    .line 277
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eq v0, p1, :cond_8

    .line 278
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public setSandmanSummonedLocked(Z)V
    .registers 2

    .line 314
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return-void
.end method

.method public setUserActivitySummaryLocked(I)V
    .registers 2

    .line 461
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return-void
.end method

.method public setWakeLockSummaryLocked(I)V
    .registers 2

    .line 491
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return-void
.end method

.method public setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    .registers 20

    move/from16 v5, p5

    .line 202
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_51

    const/4 v10, 0x1

    if-ne p1, v10, :cond_1d

    .line 204
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/PowerGroup;->setLastPowerOnTimeLocked(J)V

    .line 205
    invoke-virtual {p0, v10}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 206
    iput-wide p2, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 207
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 208
    iput v5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    goto :goto_35

    .line 210
    :cond_1d
    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 211
    iput-wide p2, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 212
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 213
    iput v5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 219
    :cond_35
    :goto_35
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 220
    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerGroup;->setDreamManagerAttemptedDozingLocked(Z)V

    .line 222
    :cond_3e
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 223
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move v2, p1

    move-wide v3, p2

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/server/power/PowerGroup$PowerGroupListener;->onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_51
    return v1
.end method

.method public sleepLocked(JII)Z
    .registers 17

    .line 406
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_63

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_63

    .line 410
    :cond_d
    const-string/jumbo v0, "sleepPowerGroup"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 412
    :try_start_16
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleeping power group (groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-static/range {p4 .. p4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 415
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v5, p1

    move v7, p3

    move/from16 v8, p4

    .line 416
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_59
    .catchall {:try_start_16 .. :try_end_59} :catchall_5d

    .line 419
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :catchall_5d
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 420
    throw p0

    :cond_63
    :goto_63
    const/4 p0, 0x0

    return p0
.end method

.method public supportsSandmanLocked()Z
    .registers 1

    .line 499
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nuserActivitySummary=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    .line 637
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmWakeLockSummary=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    .line 638
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nlastUserActivityTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    .line 639
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nlastUserActivityTimeNoChangeLights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    .line 641
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmLastWakeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmLastSleepReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmDimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmWakefulness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmIsDefaultGroupAdjacent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/PowerGroup;->mIsDefaultGroupAdjacent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmSupportsSandman="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmDreamManagerAttemptedDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/PowerGroup;->mDreamManagerAttemptedDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenOffTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateLocked(FLjava/lang/CharSequence;ZZIIFZZLandroid/os/PowerSaveState;ZZZZZZZ)Z
    .registers 26

    move-object/from16 v0, p10

    move-object v1, p0

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p16

    move/from16 v7, p17

    .line 594
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerGroup;->updateScreenPolicyLocked(ZZZZZZ)V

    .line 597
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 598
    iput-object p2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverrideTag:Ljava/lang/CharSequence;

    .line 599
    iput-boolean p3, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 600
    iput-boolean p4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 602
    iget p1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4e

    .line 603
    iput p5, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 604
    iput p6, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 605
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_45

    if-nez p9, :cond_45

    .line 606
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 p3, 0x4

    const/4 p4, 0x2

    if-ne p2, p3, :cond_3c

    const/4 p2, 0x3

    .line 607
    iput p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 608
    iput p4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 611
    :cond_3c
    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_45

    .line 612
    iput p4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 613
    iput p4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 617
    :cond_45
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p7, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    move/from16 p2, p8

    .line 618
    iput-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    goto :goto_59

    :cond_4e
    const/4 p1, 0x0

    .line 620
    iput p1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 621
    iput p3, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 622
    iput p2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 624
    iput-boolean p1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    .line 626
    :goto_59
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 627
    iget p2, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 628
    iget-object p2, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p3, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move/from16 p4, p15

    invoke-virtual {p2, p3, p1, p4}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result p1

    .line 630
    iget-object p2, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iget p3, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {p2, p3, p0}, Lcom/android/server/power/Notifier;->onScreenPolicyUpdate(II)V

    return p1
.end method

.method public final updateScreenPolicyLocked(ZZZZZZ)V
    .registers 13

    .line 534
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    .line 535
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    if-eqz p1, :cond_12

    :cond_10
    :goto_10
    move p1, v4

    goto :goto_3b

    :cond_12
    if-nez v0, :cond_1b

    .line 542
    iget p1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    invoke-static {p1}, Lcom/android/server/power/PowerGroup;->sleepReasonToDisplayStateReason(I)I

    move-result p1

    goto :goto_3b

    :cond_1b
    if-ne v0, v2, :cond_39

    and-int/lit8 p1, v1, 0x40

    if-eqz p1, :cond_24

    move p1, v4

    move v3, p1

    goto :goto_3b

    :cond_24
    if-nez p2, :cond_10

    .line 546
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isSeparateTimeoutsFlickerEnabled()Z

    move-result p1

    if-eqz p1, :cond_35

    if-eqz p6, :cond_35

    iget p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-nez p1, :cond_35

    goto :goto_10

    :cond_35
    if-eqz p5, :cond_39

    move v3, v2

    goto :goto_10

    :cond_39
    move p1, v4

    move v3, v5

    :goto_3b
    if-ne v3, v5, :cond_5c

    .line 562
    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 563
    iget p1, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    invoke-static {p1}, Lcom/android/server/power/PowerGroup;->wakeReasonToDisplayStateReason(I)I

    move-result p1

    :cond_49
    const/4 p2, 0x2

    and-int/lit8 p5, v1, 0x2

    if-nez p5, :cond_5d

    if-eqz p3, :cond_5d

    .line 567
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result p3

    and-int/2addr p3, v4

    if-nez p3, :cond_5d

    if-eqz p4, :cond_5a

    goto :goto_5d

    :cond_5a
    move v2, p2

    goto :goto_5d

    :cond_5c
    move v2, v3

    .line 575
    :cond_5d
    :goto_5d
    iget-object p2, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p2}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result p2

    if-eqz p2, :cond_69

    .line 576
    iget-object p2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p1, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyReason:I

    .line 578
    :cond_69
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return-void
.end method

.method public wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V
    .registers 15

    .line 319
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_94

    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    goto/16 :goto_94

    .line 323
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wakePowerGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 325
    :try_start_27
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waking up power group from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 326
    invoke-static {v4}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", details="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v0, "Screen turning on"

    iget v3, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 334
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {p8, v3, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    move-object p8, p4

    move p4, p5

    move p5, p3

    move-wide p2, p1

    const/4 p1, 0x1

    move v5, p7

    move-object p7, p6

    move p6, v5

    .line 336
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_8a
    .catchall {:try_start_27 .. :try_end_8a} :catchall_8e

    .line 339
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_8e
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 340
    throw p0

    :cond_94
    :goto_94
    return-void
.end method
