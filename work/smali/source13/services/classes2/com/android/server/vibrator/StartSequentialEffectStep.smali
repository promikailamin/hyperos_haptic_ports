.class final Lcom/android/server/vibrator/StartSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "StartSequentialEffectStep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    }
.end annotation


# instance fields
.field public final currentIndex:I

.field private mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V
    .registers 6
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "effect"    # Landroid/os/CombinedVibration$Sequential;
    .param p5, "index"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 69
    iput-object p4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 70
    iput p5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;Landroid/os/CombinedVibration$Sequential;)V
    .registers 13
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "effect"    # Landroid/os/CombinedVibration$Sequential;

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    .line 63
    return-void
.end method

.method private createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    .registers 4
    .param p1, "effect"    # Landroid/os/CombinedVibration;

    .line 146
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_d

    .line 147
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-object v1, p1

    check-cast v1, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V

    return-object v0

    .line 149
    :cond_d
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_1a

    .line 150
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-object v1, p1

    check-cast v1, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V

    return-object v0

    .line 152
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J
    .registers 7
    .param p1, "step"    # Lcom/android/server/vibrator/AbstractVibratorStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/AbstractVibratorStep;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;)J"
        }
    .end annotation

    .line 235
    .local p2, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    invoke-virtual {p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->play()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    invoke-virtual {p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide v0

    .line 237
    .local v0, "stepDuration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 239
    return-wide v0

    .line 242
    :cond_12
    iget-object v2, p1, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J
    .registers 25
    .param p1, "effectMapping"    # Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;)J"
        }
    .end annotation

    .line 169
    .local p2, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->size()I

    move-result v4

    .line 170
    .local v4, "vibratorCount":I
    const-wide/16 v5, 0x0

    if-nez v4, :cond_f

    .line 172
    return-wide v5

    .line 175
    :cond_f
    new-array v7, v4, [Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 176
    .local v7, "steps":[Lcom/android/server/vibrator/AbstractVibratorStep;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 177
    .local v16, "vibrationStartTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v4, :cond_3d

    .line 178
    iget-object v8, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v9, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 179
    invoke-virtual {v9}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->vibratorIdAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/server/vibrator/VibratorController;

    .line 180
    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect$Composed;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    .line 178
    move-wide/from16 v9, v16

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v8

    aput-object v8, v7, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 184
    .end local v0    # "i":I
    :cond_3d
    array-length v0, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_49

    .line 186
    aget-object v0, v7, v8

    invoke-direct {v1, v0, v3}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J

    move-result-wide v5

    return-wide v5

    .line 195
    :cond_49
    const/4 v10, 0x0

    .line 196
    .local v10, "hasPrepared":Z
    const/4 v11, 0x0

    .line 197
    .local v11, "hasTriggered":Z
    const-wide/16 v12, 0x0

    .line 199
    .local v12, "maxDuration":J
    :try_start_4d
    iget-object v0, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getRequiredSyncCapabilities()J

    move-result-wide v14

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getVibratorIds()[I

    move-result-object v8

    .line 199
    invoke-interface {v0, v14, v15, v8}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->prepareSyncedVibration(J[I)Z

    move-result v0
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_f3

    move v10, v0

    .line 203
    :try_start_5e
    array-length v0, v7

    const/4 v8, 0x0

    :goto_60
    if-ge v8, v0, :cond_aa

    aget-object v14, v7, v8

    .line 204
    .local v14, "step":Lcom/android/server/vibrator/AbstractVibratorStep;
    invoke-direct {v1, v14, v3}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J

    move-result-wide v18
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_ef

    move-wide/from16 v20, v18

    .line 205
    .local v20, "duration":J
    move/from16 v18, v10

    move-wide/from16 v9, v20

    .end local v10    # "hasPrepared":Z
    .end local v20    # "duration":J
    .local v9, "duration":J
    .local v18, "hasPrepared":Z
    cmp-long v19, v9, v5

    if-gez v19, :cond_9e

    .line 207
    const-wide/16 v19, -0x1

    move-wide/from16 v12, v19

    .line 220
    if-eqz v18, :cond_85

    if-nez v11, :cond_85

    .line 222
    iget-object v0, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    .line 223
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_9d

    .line 224
    :cond_85
    cmp-long v0, v12, v5

    if-gez v0, :cond_9d

    .line 227
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .restart local v0    # "i":I
    :goto_8f
    if-ltz v0, :cond_9d

    .line 228
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    .line 227
    add-int/lit8 v0, v0, -0x1

    goto :goto_8f

    .line 207
    .end local v0    # "i":I
    :cond_9d
    :goto_9d
    return-wide v19

    .line 209
    :cond_9e
    :try_start_9e
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    move-wide/from16 v12, v19

    .line 203
    .end local v9    # "duration":J
    .end local v14    # "step":Lcom/android/server/vibrator/AbstractVibratorStep;
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v18

    const/4 v9, 0x1

    goto :goto_60

    .line 214
    .end local v18    # "hasPrepared":Z
    .restart local v10    # "hasPrepared":Z
    :cond_aa
    move/from16 v18, v10

    .end local v10    # "hasPrepared":Z
    .restart local v18    # "hasPrepared":Z
    if-eqz v18, :cond_c6

    cmp-long v0, v12, v5

    if-lez v0, :cond_c6

    .line 215
    iget-object v0, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/server/vibrator/Vibration;->id:J

    .line 215
    invoke-interface {v0, v8, v9}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->triggerSyncedVibration(J)Z

    move-result v0
    :try_end_c0
    .catchall {:try_start_9e .. :try_end_c0} :catchall_c2

    move v11, v0

    goto :goto_c6

    .line 220
    :catchall_c2
    move-exception v0

    move/from16 v10, v18

    goto :goto_f4

    .line 218
    :cond_c6
    :goto_c6
    nop

    .line 220
    if-eqz v18, :cond_d6

    if-nez v11, :cond_d6

    .line 222
    iget-object v0, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    .line 223
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_ee

    .line 224
    :cond_d6
    cmp-long v0, v12, v5

    if-gez v0, :cond_ee

    .line 227
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .restart local v0    # "i":I
    :goto_e0
    if-ltz v0, :cond_ee

    .line 228
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    .line 227
    add-int/lit8 v0, v0, -0x1

    goto :goto_e0

    .line 218
    .end local v0    # "i":I
    :cond_ee
    :goto_ee
    return-wide v12

    .line 220
    .end local v18    # "hasPrepared":Z
    .restart local v10    # "hasPrepared":Z
    :catchall_ef
    move-exception v0

    move/from16 v18, v10

    .end local v10    # "hasPrepared":Z
    .restart local v18    # "hasPrepared":Z
    goto :goto_f4

    .end local v18    # "hasPrepared":Z
    .restart local v10    # "hasPrepared":Z
    :catchall_f3
    move-exception v0

    :goto_f4
    if-eqz v10, :cond_104

    if-eqz v11, :cond_f9

    goto :goto_104

    .line 222
    :cond_f9
    iget-object v5, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {v5}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    .line 223
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_11c

    .line 224
    :cond_104
    :goto_104
    cmp-long v5, v12, v5

    if-gez v5, :cond_11c

    .line 227
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_10e
    if-ltz v5, :cond_11c

    .line 228
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/vibrator/Step;

    invoke-virtual {v6}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    .line 227
    add-int/lit8 v5, v5, -0x1

    goto :goto_10e

    .line 231
    .end local v5    # "i":I
    :cond_11c
    :goto_11c
    throw v0
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object v0
.end method

.method public cancelImmediately()V
    .registers 1

    .line 124
    return-void
.end method

.method public getVibratorOnDuration()J
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    return-wide v0
.end method

.method nextStep()Lcom/android/server/vibrator/Step;
    .registers 13

    .line 132
    iget v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 133
    .local v0, "nextIndex":I
    iget-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    .line 134
    const/4 v1, 0x0

    return-object v1

    .line 136
    :cond_12
    iget-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v1}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    .line 137
    .local v7, "nextEffectDelay":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long v9, v1, v7

    .line 138
    .local v9, "nextStartTime":J
    new-instance v11, Lcom/android/server/vibrator/StartSequentialEffectStep;

    iget-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    move-object v1, v11

    move-wide v3, v9

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-object v11
.end method

.method public play()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 80
    const-wide/32 v0, 0x800000

    const-string v2, "StartSequentialEffectStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 88
    const-wide/16 v3, 0x0

    :try_start_13
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v5}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CombinedVibration;

    .line 89
    .local v5, "effect":Landroid/os/CombinedVibration;
    invoke-direct {p0, v5}, Lcom/android/server/vibrator/StartSequentialEffectStep;->createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-result-object v6
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_80

    .line 90
    .local v6, "effectMapping":Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    if-nez v6, :cond_46

    .line 92
    nop

    .line 101
    iget-wide v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v9, v7, v3

    if-ltz v9, :cond_42

    .line 106
    cmp-long v3, v7, v3

    if-lez v3, :cond_38

    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_3c

    .line 107
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_3c
    nop

    .line 108
    .local v3, "nextStep":Lcom/android/server/vibrator/Step;
    if-eqz v3, :cond_42

    .line 109
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    :cond_42
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    return-object v2

    .line 95
    :cond_46
    :try_start_46
    invoke-direct {p0, v6, v2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 96
    cmp-long v7, v7, v3

    if-lez v7, :cond_61

    .line 97
    iget-object v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v7, v7, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object v8, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v8

    iget v8, v8, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-wide v9, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    invoke-interface {v7, v8, v9, v10}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOn(IJ)V
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_80

    .line 101
    .end local v5    # "effect":Landroid/os/CombinedVibration;
    .end local v6    # "effectMapping":Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    :cond_61
    iget-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_7b

    .line 106
    cmp-long v3, v5, v3

    if-lez v3, :cond_71

    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_75

    .line 107
    :cond_71
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_75
    nop

    .line 108
    .restart local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    if-eqz v3, :cond_7b

    .line 109
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    :cond_7b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 113
    nop

    .line 114
    return-object v2

    .line 101
    :catchall_80
    move-exception v5

    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_9b

    .line 106
    cmp-long v3, v6, v3

    if-lez v3, :cond_91

    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_95

    .line 107
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_95
    nop

    .line 108
    .restart local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    if-eqz v3, :cond_9b

    .line 109
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    :cond_9b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 113
    throw v5
.end method
