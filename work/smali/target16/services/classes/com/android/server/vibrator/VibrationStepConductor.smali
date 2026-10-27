.class public final Lcom/android/server/vibrator/VibrationStepConductor;
.super Ljava/lang/Object;
.source "VibrationStepConductor.java"


# static fields
.field public static final DEBUG:Z

.field public static final EMPTY_STEP_LIST:Ljava/util/List;


# instance fields
.field public final isInSession:Z

.field public mCancelledImmediately:Z

.field public mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public mFailedVibratorOnSteps:I

.field public final mLock:Ljava/lang/Object;

.field public final mNextSteps:Ljava/util/PriorityQueue;

.field public final mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

.field public mPendingVibrateSteps:I

.field public mRemainingStartSequentialEffectSteps:I

.field public final mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

.field public mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

.field public mSignalCancelImmediate:Z

.field public final mSignalVibratorStepIds:Landroid/util/SparseIntArray;

.field public final mSignalVibratorsComplete:Landroid/util/IntArray;

.field public final mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public mSuccessfulVibratorOnSteps:I

.field public final mVibration:Lcom/android/server/vibrator/HalVibration;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field public final vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    sget-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/vibrator/VibrationStepConductor;->DEBUG:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/HalVibration;ZLcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceAdapter;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/util/concurrent/CompletableFuture;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V
    .registers 11

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    const/4 v1, 0x0

    .line 102
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 105
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 107
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 119
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 120
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->isInSession:Z

    .line 121
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 122
    iput-object p4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 123
    iput-object p5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 124
    iput-object p6, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 125
    iput-object p7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    .line 126
    iput-object p8, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 127
    new-instance p1, Landroid/util/IntArray;

    .line 128
    invoke-virtual {p4}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibratorIds()[I

    move-result-object p2

    array-length p2, p2

    invoke-direct {p1, p2}, Landroid/util/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 129
    new-instance p1, Landroid/util/SparseIntArray;

    .line 130
    invoke-virtual {p4}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibratorIds()[I

    move-result-object p2

    array-length p2, p2

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorStepIds:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static expectIsVibrationThread(Z)V
    .registers 3

    .line 708
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/vibrator/VibrationThread;

    if-eq v0, p0, :cond_1e

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread caller assertion failed, expected isVibrationThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibrationStepConductor"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public static toSequential(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$Sequential;
    .registers 2

    .line 693
    instance-of v0, p0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_7

    .line 694
    check-cast p0, Landroid/os/CombinedVibration$Sequential;

    return-object p0

    .line 696
    :cond_7
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 697
    invoke-virtual {v0, p0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p0

    .line 698
    invoke-virtual {p0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p0

    check-cast p0, Landroid/os/CombinedVibration$Sequential;

    return-object p0
.end method


# virtual methods
.method public calculateVibrationEndInfo()Lcom/android/server/vibrator/Vibration$EndInfo;
    .registers 2

    .line 255
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 256
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 259
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v0, :cond_d

    return-object v0

    .line 262
    :cond_d
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    if-gtz v0, :cond_36

    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    if-lez v0, :cond_16

    goto :goto_36

    .line 266
    :cond_16
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mFailedVibratorOnSteps:I

    if-lez v0, :cond_22

    .line 268
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_DISPATCHING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p0

    .line 270
    :cond_22
    iget p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    if-lez p0, :cond_2e

    .line 272
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p0

    .line 275
    :cond_2e
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p0

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVibration()Lcom/android/server/vibrator/HalVibration;
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    return-object p0
.end method

.method public getVibrators()Landroid/util/SparseArray;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    invoke-virtual {p0}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibrators()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public final hasPendingNotifySignalLocked()Z
    .registers 3

    .line 549
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 550
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 552
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v0, :cond_20

    :cond_10
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_20

    :cond_18
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 554
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p0

    if-lez p0, :cond_21

    :cond_20
    return v1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public isFinished()Z
    .registers 3

    .line 237
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 238
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 240
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_d

    return v1

    .line 246
    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1e

    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public nextVibrateStep(JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;
    .registers 24

    .line 154
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 155
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 157
    :cond_8
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, p5

    if-lt v1, v0, :cond_1a

    .line 158
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    move v7, v0

    goto :goto_1b

    :cond_1a
    move v7, v1

    :goto_1b
    if-gez v7, :cond_2c

    .line 162
    new-instance v8, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    move-wide/from16 v14, p6

    invoke-direct/range {v8 .. v15}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/HalVibrator;J)V

    return-object v8

    .line 166
    :cond_2c
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 167
    instance-of v1, v0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v1, :cond_4a

    .line 168
    new-instance v1, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v1

    .line 171
    :cond_4a
    instance-of v1, v0, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v1, :cond_5e

    .line 172
    new-instance v1, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v1

    .line 175
    :cond_5e
    instance-of v1, v0, Landroid/os/vibrator/RampSegment;

    if-eqz v1, :cond_72

    .line 176
    new-instance v1, Lcom/android/server/vibrator/ComposePwleVibratorStep;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/ComposePwleVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v1

    .line 179
    :cond_72
    instance-of v0, v0, Landroid/os/vibrator/PwleSegment;

    if-eqz v0, :cond_86

    .line 180
    new-instance v1, Lcom/android/server/vibrator/ComposePwleV2VibratorStep;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/ComposePwleV2VibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v1

    .line 183
    :cond_86
    new-instance v1, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v1
.end method

.method public nextVibrateStep(JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect;)Lcom/android/server/vibrator/AbstractVibratorStep;
    .registers 15

    .line 136
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 137
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 139
    :cond_8
    instance-of v0, p4, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v0, :cond_1a

    move-object v6, p4

    check-cast v6, Landroid/os/VibrationEffect$VendorEffect;

    .line 140
    new-instance v1, Lcom/android/server/vibrator/PerformVendorEffectVibratorStep;

    const-wide/16 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vibrator/PerformVendorEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$VendorEffect;J)V

    return-object v1

    :cond_1a
    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    .line 143
    instance-of p0, p4, Landroid/os/VibrationEffect$Composed;

    if-eqz p0, :cond_2c

    move-object v6, p4

    check-cast v6, Landroid/os/VibrationEffect$Composed;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 144
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/HalVibrator;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object p0

    return-object p0

    .line 147
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to create next step for unexpected effect: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibrationThread"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public nextVibratorCallbackStepId(I)I
    .registers 5

    .line 681
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 682
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 684
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_b
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorStepIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 686
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorStepIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    monitor-exit v0

    return v2

    :catchall_19
    move-exception p0

    .line 688
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V
    .registers 7

    .line 395
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 396
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 398
    :cond_8
    sget-boolean v0, Lcom/android/server/vibrator/VibrationStepConductor;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 399
    const-string v1, "VibrationThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration cancel requested with signal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", immediate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-eqz p1, :cond_3a

    .line 402
    iget-object v1, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 403
    :cond_3a
    const-string v1, "VibrationThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration cancel requested with bad signal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", using CANCELLED_UNKNOWN_REASON to ensure cancellation."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance p1, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {p1, v1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 407
    :cond_5c
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_69

    .line 408
    :try_start_61
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-nez v2, :cond_6d

    goto :goto_69

    :catchall_66
    move-exception p0

    goto/16 :goto_e4

    :cond_69
    :goto_69
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v2, :cond_9f

    :cond_6d
    if-eqz v0, :cond_9d

    .line 410
    const-string p1, "VibrationThread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vibration cancel request ignored as the vibration "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v2, v0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "is already being cancelled with signal="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", immediate="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_9d
    monitor-exit v1

    return-void

    .line 416
    :cond_9f
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    or-int/2addr p2, v3

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-nez v2, :cond_a9

    .line 418
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    goto :goto_d5

    :cond_a9
    if-eqz v0, :cond_d5

    .line 421
    const-string p2, "VibrationThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration cancel request new signal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored as the vibration was already cancelled with signal="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but immediate flag was updated to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_d5
    :goto_d5
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p1, :cond_dd

    const/4 p2, 0x1

    .line 428
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 430
    :cond_dd
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 431
    monitor-exit v1

    return-void

    :goto_e4
    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_61 .. :try_end_e5} :catchall_66

    throw p0
.end method

.method public notifySyncedVibrationComplete()V
    .registers 7

    .line 474
    sget-boolean v0, Lcom/android/server/vibrator/VibrationStepConductor;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 475
    const-string v0, "VibrationThread"

    const-string v1, "Synced vibration complete reported by vibrator manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_e
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    invoke-virtual {v1}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibratorIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_24

    aget v4, v1, v3

    .line 480
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :catchall_22
    move-exception p0

    goto :goto_2b

    .line 482
    :cond_24
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 483
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_22

    throw p0
.end method

.method public notifyVibrationComplete(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .registers 5

    .line 494
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 495
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 497
    :cond_8
    sget-boolean v0, Lcom/android/server/vibrator/VibrationStepConductor;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vibration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " finished with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrationThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_2e
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HalVibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    return-void
.end method

.method public notifyVibratorComplete(IJ)V
    .registers 8

    .line 445
    sget-boolean v0, Lcom/android/server/vibrator/VibrationStepConductor;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 446
    const-string v1, "VibrationThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration complete reported by vibrator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1a
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorStepIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_5b

    if-eqz v0, :cond_59

    .line 452
    const-string v0, "VibrationThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibrator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callback for step="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ignored, current step="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorStepIds:Landroid/util/SparseIntArray;

    .line 453
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :catchall_57
    move-exception p0

    goto :goto_67

    .line 455
    :cond_59
    :goto_59
    monitor-exit v1

    return-void

    .line 457
    :cond_5b
    iget-object p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {p2, p1}, Landroid/util/IntArray;->add(I)V

    .line 458
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 459
    monitor-exit v1

    return-void

    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_1d .. :try_end_68} :catchall_57

    throw p0
.end method

.method public final pollNext()Lcom/android/server/vibrator/Step;
    .registers 2

    .line 332
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 333
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 338
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 339
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/Step;

    return-object p0

    .line 341
    :cond_19
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/Step;

    return-object p0
.end method

.method public prepareToStart()Z
    .registers 5

    .line 193
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 194
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 197
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->waitForVibrationParamsIfRequired()V

    .line 200
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/HalVibration;->scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/HalVibration;->adaptToDevice(Landroid/os/CombinedVibration$VibratorAdapter;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 212
    :cond_1e
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 213
    invoke-virtual {v0}, Lcom/android/server/vibrator/HalVibration;->getEffectToPlay()Landroid/os/CombinedVibration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->toSequential(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$Sequential;

    move-result-object v0

    .line 214
    iget v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 216
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 217
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    new-instance v3, Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {v3, p0, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;Landroid/os/CombinedVibration$Sequential;)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 221
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStats;->reportStarted()V

    return v1
.end method

.method public final processAllNotifySignals()V
    .registers 7

    .line 562
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 563
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 570
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_b
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    .line 572
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v2, :cond_1e

    .line 573
    const-string v2, "VibrationThread"

    const-string v4, "Immediate cancellation signal processed twice"

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_53

    .line 577
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    move-object v2, v3

    .line 579
    :goto_23
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v4, :cond_2c

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-nez v5, :cond_2c

    move-object v2, v4

    :cond_2c
    if-nez v1, :cond_41

    .line 582
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_41

    .line 584
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    .line 585
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->clear()V

    .line 587
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_1c

    if-eqz v1, :cond_48

    .line 594
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationStepConductor;->processCancelImmediately(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    return-void

    :cond_48
    if-eqz v2, :cond_4d

    .line 598
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationStepConductor;->processCancel(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    :cond_4d
    if-eqz v3, :cond_52

    .line 601
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationStepConductor;->processVibratorsComplete([I)V

    :cond_52
    return-void

    .line 587
    :goto_53
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_1c

    throw p0
.end method

.method public processCancel(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .registers 3

    .line 612
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 613
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 616
    :cond_8
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 619
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 621
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 622
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->cancel()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_1d
    const/4 v0, 0x0

    .line 625
    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 626
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public processCancelImmediately(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .registers 4

    .line 635
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 636
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 639
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 640
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 642
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 643
    invoke-virtual {p1}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    goto :goto_c

    :cond_16
    const/4 p1, 0x0

    .line 645
    iput p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    return-void
.end method

.method public final processVibratorsComplete([I)V
    .registers 8

    .line 657
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 658
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 661
    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_31

    aget v2, p1, v1

    .line 662
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 663
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 664
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/Step;

    .line 665
    invoke-virtual {v4, v2}, Lcom/android/server/vibrator/Step;->acceptVibratorCompleteCallback(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 666
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 667
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v2, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_31
    return-void
.end method

.method public runNextStep()V
    .registers 8

    .line 349
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 350
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 355
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 357
    sget-boolean v2, Lcom/android/server/vibrator/VibrationStepConductor;->DEBUG:Z

    if-eqz v2, :cond_6c

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playing vibration id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    instance-of v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;

    const-string v4, ""

    if-eqz v3, :cond_44

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " on vibrator "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v0

    check-cast v5, Lcom/android/server/vibrator/AbstractVibratorStep;

    invoke-virtual {v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_45

    :cond_44
    move-object v3, v4

    :goto_45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v3

    if-eqz v3, :cond_60

    const-string v4, " (cleanup)"

    :cond_60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    const-string v3, "VibrationThread"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_6c
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v2

    .line 366
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->getVibratorOnDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_80

    .line 367
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    goto :goto_8d

    .line 368
    :cond_80
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->getVibratorOnDuration()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_8d

    .line 369
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mFailedVibratorOnSteps:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mFailedVibratorOnSteps:I

    .line 371
    :cond_8d
    :goto_8d
    instance-of v3, v0, Lcom/android/server/vibrator/StartSequentialEffectStep;

    if-eqz v3, :cond_96

    .line 372
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 374
    :cond_96
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 375
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    :cond_a1
    const/4 v0, 0x0

    .line 377
    :goto_a2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_bb

    .line 378
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/Step;

    invoke-virtual {v4}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v4

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    .line 380
    :cond_bb
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v2}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    :cond_c0
    return-void
.end method

.method public final waitForVibrationParamsIfRequired()V
    .registers 6

    .line 520
    const-string v0, "VibrationThread"

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    .line 521
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 524
    :cond_a
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    if-nez v1, :cond_f

    goto :goto_46

    .line 529
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 530
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->getRequestVibrationParamsTimeoutMs()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 529
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_1b} :catch_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_1b} :catch_1e
    .catchall {:try_start_f .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_22

    :catch_1e
    move-exception p0

    goto :goto_28

    :catch_20
    move-exception v1

    goto :goto_32

    .line 543
    :goto_22
    const-string v1, "Failed to retrieve vibration params."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 538
    :goto_28
    sget-boolean v1, Lcom/android/server/vibrator/VibrationStepConductor;->DEBUG:Z

    if-eqz v1, :cond_46

    .line 539
    const-string v1, "Request for vibration params cancelled, maybe superseded or the vibrator controller service unregistered. Skipping params..."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 533
    :goto_32
    sget-boolean v2, Lcom/android/server/vibrator/VibrationStepConductor;->DEBUG:Z

    if-eqz v2, :cond_3b

    .line 534
    const-string v2, "Request for vibration params timed out"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    :cond_3b
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v0, p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamRequestTimeout(I)V

    :cond_46
    :goto_46
    return-void
.end method

.method public waitUntilNextStepIsDue()Z
    .registers 8

    .line 291
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 292
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 295
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->processAllNotifySignals()V

    .line 296
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    return v2

    .line 301
    :cond_11
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 304
    :cond_1a
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/Step;

    if-nez v0, :cond_25

    return v1

    .line 308
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->isInSession:Z

    if-eqz v3, :cond_2a

    return v1

    .line 311
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->calculateWaitTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_35

    return v1

    .line 315
    :cond_35
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->hasPendingNotifySignalLocked()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 320
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    return v2

    :catchall_40
    move-exception p0

    goto :goto_49

    .line 323
    :cond_42
    :try_start_42
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_47} :catch_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_40

    .line 326
    :catch_47
    :try_start_47
    monitor-exit v0

    return v2

    .line 327
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_40

    throw p0
.end method

.method public wasNotifiedToCancel()Z
    .registers 3

    .line 505
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 506
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 508
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_b
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    monitor-exit v0

    return v1

    :catchall_12
    move-exception p0

    .line 510
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0
.end method
