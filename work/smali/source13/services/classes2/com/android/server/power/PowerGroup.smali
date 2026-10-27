.class public Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "PowerGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerGroup$PowerGroupListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_SUB_SCREEN_DEVICE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private final mGroupId:I

.field private mIsSandmanSummoned:Z

.field private mLastPowerOnTime:J

.field private mLastSleepTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private mPoweringOn:Z

.field private mReady:Z

.field private final mSupportsSandman:Z

.field private mUserActivitySummary:I

.field private mWakeLockSummary:I

.field private mWakefulness:I

.field private final mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    const-class v0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    .line 85
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "star"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerGroup;->IS_SUB_SCREEN_DEVICE:Z

    return-void
.end method

.method constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;IZZJ)V
    .registers 11
    .param p1, "groupId"    # I
    .param p2, "wakefulnessListener"    # Lcom/android/server/power/PowerGroup$PowerGroupListener;
    .param p3, "notifier"    # Lcom/android/server/power/Notifier;
    .param p4, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p5, "wakefulness"    # I
    .param p6, "ready"    # Z
    .param p7, "supportsSandman"    # Z
    .param p8, "eventTime"    # J

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 90
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 91
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 92
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 93
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 94
    iput p5, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 95
    iput-boolean p6, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 96
    iput-boolean p7, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 97
    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 98
    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 99
    return-void
.end method

.method constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;J)V
    .registers 8
    .param p1, "wakefulness"    # I
    .param p2, "wakefulnessListener"    # Lcom/android/server/power/PowerGroup$PowerGroupListener;
    .param p3, "notifier"    # Lcom/android/server/power/Notifier;
    .param p4, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p5, "eventTime"    # J

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 104
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 105
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 106
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 107
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 108
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 110
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 111
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 112
    return-void
.end method


# virtual methods
.method dozeLocked(JII)Z
    .registers 19
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I
    .param p4, "reason"    # I

    .line 257
    move-object v10, p0

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_8b

    iget v0, v10, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_18

    move/from16 v13, p3

    move/from16 v2, p4

    goto/16 :goto_8f

    .line 261
    :cond_18
    const-wide/32 v11, 0x20000

    const-string/jumbo v0, "powerOffDisplay"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 263
    const/16 v0, 0xd

    .line 264
    move/from16 v2, p4

    :try_start_25
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 263
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_83

    .line 265
    .end local p4    # "reason":I
    .local v6, "reason":I
    :try_start_2d
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Powering off display group due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 266
    invoke-static {v6}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (groupId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_56
    .catchall {:try_start_2d .. :try_end_56} :catchall_7f

    move/from16 v13, p3

    :try_start_58
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    .line 270
    const/4 v2, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_78
    .catchall {:try_start_58 .. :try_end_78} :catchall_7d

    .line 273
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 274
    nop

    .line 275
    return v0

    .line 273
    :catchall_7d
    move-exception v0

    goto :goto_87

    :catchall_7f
    move-exception v0

    move/from16 v13, p3

    goto :goto_87

    .end local v6    # "reason":I
    .restart local p4    # "reason":I
    :catchall_83
    move-exception v0

    move/from16 v13, p3

    move v6, v2

    .end local p4    # "reason":I
    .restart local v6    # "reason":I
    :goto_87
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 274
    throw v0

    .line 257
    .end local v6    # "reason":I
    .restart local p4    # "reason":I
    :cond_8b
    move/from16 v13, p3

    move/from16 v2, p4

    .line 258
    :goto_8f
    return v1
.end method

.method dreamLocked(JI)Z
    .registers 19
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 240
    move-object v10, p0

    iget-wide v0, v10, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_78

    iget v0, v10, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_f

    move/from16 v14, p3

    goto :goto_7a

    .line 244
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dreamPowerGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v12, 0x20000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 246
    :try_start_2c
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Napping power group (groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_71

    move/from16 v14, p3

    :try_start_49
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0, v11}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    .line 248
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_6a
    .catchall {:try_start_49 .. :try_end_6a} :catchall_6f

    .line 251
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 252
    nop

    .line 253
    return v11

    .line 251
    :catchall_6f
    move-exception v0

    goto :goto_74

    :catchall_71
    move-exception v0

    move/from16 v14, p3

    :goto_74
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 252
    throw v0

    .line 240
    :cond_78
    move/from16 v14, p3

    .line 241
    :goto_7a
    const/4 v0, 0x0

    return v0
.end method

.method getDesiredScreenPolicyLocked(ZZZZZ)I
    .registers 12
    .param p1, "quiescent"    # Z
    .param p2, "dozeAfterScreenOff"    # Z
    .param p3, "vrModeEnabled"    # Z
    .param p4, "bootCompleted"    # Z
    .param p5, "screenBrightnessBoostInProgress"    # Z

    .line 393
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    .line 394
    .local v0, "wakefulness":I
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v1

    .line 395
    .local v1, "wakeLockSummary":I
    const/4 v2, 0x0

    if-eqz v0, :cond_62

    if-eqz p1, :cond_e

    goto :goto_62

    .line 397
    :cond_e
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_35

    .line 400
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_28

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isPoweringOnLocked()Z

    move-result v5

    if-nez v5, :cond_28

    .line 402
    sget-boolean v3, Lcom/android/server/power/PowerGroup;->IS_SUB_SCREEN_DEVICE:Z

    if-eqz v3, :cond_27

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    if-ne v3, v4, :cond_27

    .line 403
    return v2

    .line 406
    :cond_27
    return v4

    .line 410
    :cond_28
    if-nez p2, :cond_34

    sget-boolean v5, Lcom/android/server/power/PowerGroup;->IS_SUB_SCREEN_DEVICE:Z

    if-eqz v5, :cond_35

    .line 411
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v5

    if-ne v5, v4, :cond_35

    .line 412
    :cond_34
    return v2

    .line 421
    :cond_35
    if-eqz p3, :cond_39

    .line 422
    const/4 v2, 0x4

    return v2

    .line 425
    :cond_39
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerServiceStub;->shouldRequestDisplayHangupLocked()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 426
    const/4 v2, 0x5

    return v2

    .line 430
    :cond_45
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_61

    if-eqz p4, :cond_61

    .line 432
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v2

    and-int/2addr v2, v4

    if-nez v2, :cond_61

    if-nez p5, :cond_61

    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 435
    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManagerInternal;->isDisplayGroupAlwaysOn(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_61

    .line 439
    :cond_5f
    const/4 v2, 0x2

    return v2

    .line 436
    :cond_61
    :goto_61
    return v3

    .line 396
    :cond_62
    :goto_62
    return v2
.end method

.method getGroupId()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    return v0
.end method

.method getLastPowerOnTimeLocked()J
    .registers 3

    .line 181
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-wide v0
.end method

.method getLastSleepTimeLocked()J
    .registers 3

    .line 119
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-wide v0
.end method

.method getLastUserActivityTimeLocked()J
    .registers 3

    .line 296
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeNoChangeLightsLocked()J
    .registers 3

    .line 304
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-wide v0
.end method

.method getLastWakeTimeLocked()J
    .registers 3

    .line 115
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    return-wide v0
.end method

.method getPolicyLocked()I
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return v0
.end method

.method public getUserActivitySummaryLocked()I
    .registers 2

    .line 312
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return v0
.end method

.method public getWakeLockSummaryLocked()I
    .registers 2

    .line 337
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return v0
.end method

.method getWakefulnessLocked()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    return v0
.end method

.method public isBrightOrDimLocked()Z
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    return v0
.end method

.method public isPolicyBrightLocked()Z
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isPolicyDimLocked()Z
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isPolicyVrLocked()Z
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v0

    return v0
.end method

.method isPoweringOnLocked()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return v0
.end method

.method isReadyLocked()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    return v0
.end method

.method isSandmanSummonedLocked()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return v0
.end method

.method needSuspendBlockerLocked(ZZ)Z
    .registers 6
    .param p1, "proximityPositive"    # Z
    .param p2, "suspendWhenScreenOffDueToProximityConfig"    # Z

    .line 358
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 363
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    if-nez p2, :cond_12

    .line 365
    :cond_11
    return v1

    .line 369
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    .line 374
    return v1

    .line 378
    :cond_20
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2f

    .line 379
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2f

    .line 380
    return v1

    .line 383
    :cond_2f
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->isDisplayGroupAlwaysOn(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 384
    return v1

    .line 387
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method setIsPoweringOnLocked(Z)V
    .registers 2
    .param p1, "isPoweringOnNew"    # Z

    .line 193
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    .line 194
    return-void
.end method

.method setLastPowerOnTimeLocked(J)V
    .registers 3
    .param p1, "time"    # J

    .line 185
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    .line 186
    return-void
.end method

.method setLastUserActivityTimeLocked(J)V
    .registers 3
    .param p1, "lastUserActivityTime"    # J

    .line 300
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    .line 301
    return-void
.end method

.method public setLastUserActivityTimeNoChangeLightsLocked(J)V
    .registers 3
    .param p1, "time"    # J

    .line 308
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    .line 309
    return-void
.end method

.method setReadyLocked(Z)Z
    .registers 3
    .param p1, "isReady"    # Z

    .line 173
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eq v0, p1, :cond_8

    .line 174
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method setSandmanSummonedLocked(Z)V
    .registers 2
    .param p1, "isSandmanSummoned"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    .line 207
    return-void
.end method

.method public setUserActivitySummaryLocked(I)V
    .registers 2
    .param p1, "summary"    # I

    .line 333
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    .line 334
    return-void
.end method

.method public setWakeLockSummaryLocked(I)V
    .registers 2
    .param p1, "summary"    # I

    .line 341
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    .line 342
    return-void
.end method

.method setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p1, "newWakefulness"    # I
    .param p2, "eventTime"    # J
    .param p4, "uid"    # I
    .param p5, "reason"    # I
    .param p6, "opUid"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "details"    # Ljava/lang/String;

    .line 137
    move-object v0, p0

    move/from16 v11, p1

    move-wide/from16 v12, p2

    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v1, v11, :cond_3b

    .line 138
    const/4 v14, 0x1

    if-ne v11, v14, :cond_15

    .line 139
    invoke-virtual {p0, v12, v13}, Lcom/android/server/power/PowerGroup;->setLastPowerOnTimeLocked(J)V

    .line 140
    invoke-virtual {p0, v14}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 141
    iput-wide v12, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    goto :goto_23

    .line 142
    :cond_15
    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 143
    iput-wide v12, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 145
    :cond_23
    :goto_23
    iput v11, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 146
    iget-object v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    iget v2, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p5

    move/from16 v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/server/power/PowerGroup$PowerGroupListener;->onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    .line 148
    return v14

    .line 150
    :cond_3b
    const/4 v1, 0x0

    return v1
.end method

.method sleepLocked(JII)Z
    .registers 19
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I
    .param p4, "reason"    # I

    .line 279
    move-object v10, p0

    iget-wide v0, v10, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_66

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    if-nez v0, :cond_10

    move/from16 v13, p3

    goto :goto_68

    .line 283
    :cond_10
    const-wide/32 v11, 0x20000

    const-string/jumbo v0, "sleepPowerGroup"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 285
    :try_start_19
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping power group (groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_5f

    move/from16 v13, p3

    :try_start_36
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    .line 287
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_5d

    .line 290
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 291
    nop

    .line 292
    return v0

    .line 290
    :catchall_5d
    move-exception v0

    goto :goto_62

    :catchall_5f
    move-exception v0

    move/from16 v13, p3

    :goto_62
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 291
    throw v0

    .line 279
    :cond_66
    move/from16 v13, p3

    .line 280
    :goto_68
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSandmanLocked()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    return v0
.end method

.method updateLocked(FZZZIFZLandroid/os/PowerSaveState;ZZZZZZ)Z
    .registers 28
    .param p1, "screenBrightnessOverride"    # F
    .param p2, "autoBrightness"    # Z
    .param p3, "useProximitySensor"    # Z
    .param p4, "boostScreenBrightness"    # Z
    .param p5, "dozeScreenState"    # I
    .param p6, "dozeScreenBrightness"    # F
    .param p7, "overrideDrawWakeLock"    # Z
    .param p8, "powerSaverState"    # Landroid/os/PowerSaveState;
    .param p9, "quiescent"    # Z
    .param p10, "dozeAfterScreenOff"    # Z
    .param p11, "vrModeEnabled"    # Z
    .param p12, "bootCompleted"    # Z
    .param p13, "screenBrightnessBoostInProgress"    # Z
    .param p14, "waitForNegativeProximity"    # Z

    .line 452
    move-object v6, p0

    move-object/from16 v7, p8

    iget-object v8, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p12

    move/from16 v5, p13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerGroup;->getDesiredScreenPolicyLocked(ZZZZZ)I

    move-result v0

    iput v0, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 454
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move v1, p1

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 455
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move v2, p2

    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 456
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v3, p3

    iput-boolean v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 457
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v4, p4

    iput-boolean v4, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 459
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_62

    .line 460
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v5, p5

    iput v5, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 461
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5b

    if-nez p7, :cond_5b

    .line 462
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_4f

    .line 463
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v8, 0x3

    iput v8, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 465
    :cond_4f
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v8, 0x6

    if-ne v0, v8, :cond_5b

    .line 466
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v8, 0x2

    iput v8, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 469
    :cond_5b
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v8, p6

    iput v8, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    goto :goto_71

    .line 471
    :cond_62
    move/from16 v5, p5

    move/from16 v8, p6

    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v9, 0x0

    iput v9, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 472
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/high16 v9, 0x7fc00000    # Float.NaN

    iput v9, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 474
    :goto_71
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v9, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 475
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v7, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v9, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 477
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    iget-object v9, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v9}, Lcom/android/server/power/PowerManagerServiceStub;->updateLowPowerModeIfNeeded(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 479
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v9, v6, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object v10, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v11, p14

    invoke-virtual {v0, v9, v10, v11}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v0

    .line 481
    .local v0, "ready":Z
    iget-object v9, v6, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iget v10, v6, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object v12, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v9, v10, v12}, Lcom/android/server/power/Notifier;->onScreenPolicyUpdate(II)V

    .line 482
    return v0
.end method

.method wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V
    .registers 25
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "opUid"    # I
    .param p8, "latencyTracker"    # Lcom/android/internal/util/LatencyTracker;

    .line 211
    move-object/from16 v10, p0

    iget-wide v0, v10, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d1

    iget v0, v10, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    move-object/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v15, p8

    goto/16 :goto_d7

    .line 215
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wakePowerGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v11, 0x20000

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 217
    :try_start_31
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up power group from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 218
    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_5a
    .catchall {:try_start_31 .. :try_end_5a} :catchall_c6

    move/from16 v13, p5

    :try_start_5c
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_c2

    move-object/from16 v14, p4

    :try_start_76
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "Screen turning on"

    iget v1, v10, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v11, v12, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 226
    const/4 v0, 0x5

    iget v1, v10, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_95
    .catchall {:try_start_76 .. :try_end_95} :catchall_c0

    move-object/from16 v15, p8

    :try_start_97
    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    .line 231
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    move/from16 v9, p3

    invoke-virtual {v0, v9}, Lcom/android/server/power/PowerManagerServiceStub;->lockNowIfNeededLocked(I)V

    .line 232
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_b9
    .catchall {:try_start_97 .. :try_end_b9} :catchall_be

    .line 235
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_be
    move-exception v0

    goto :goto_cd

    :catchall_c0
    move-exception v0

    goto :goto_cb

    :catchall_c2
    move-exception v0

    move-object/from16 v14, p4

    goto :goto_cb

    :catchall_c6
    move-exception v0

    move-object/from16 v14, p4

    move/from16 v13, p5

    :goto_cb
    move-object/from16 v15, p8

    :goto_cd
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 236
    throw v0

    .line 211
    :cond_d1
    move-object/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v15, p8

    .line 212
    :goto_d7
    return-void
.end method
