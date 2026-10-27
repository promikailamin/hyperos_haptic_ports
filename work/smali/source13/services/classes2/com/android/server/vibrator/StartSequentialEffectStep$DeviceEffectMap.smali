.class final Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
.super Ljava/lang/Object;
.source "StartSequentialEffectStep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/StartSequentialEffectStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeviceEffectMap"
.end annotation


# instance fields
.field private final mRequiredSyncCapabilities:J

.field private final mVibratorEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibratorIds:[I

.field final synthetic this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/vibrator/StartSequentialEffectStep;
    .param p2, "mono"    # Landroid/os/CombinedVibration$Mono;

    .line 256
    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iget-object v0, p1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v0

    .line 258
    .local v0, "vibrators":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/vibrator/VibratorController;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 259
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 261
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 262
    .local v2, "vibratorId":I
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v3

    .line 263
    .local v3, "vibratorInfo":Landroid/os/VibratorInfo;
    iget-object v4, p1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 264
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v5

    .line 263
    invoke-virtual {v4, v5, v3}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 265
    .local v4, "effect":Landroid/os/VibrationEffect;
    instance-of v5, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v5, :cond_4f

    .line 266
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    move-object v6, v4

    check-cast v6, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    aput v2, v5, v1

    .line 260
    .end local v2    # "vibratorId":I
    .end local v3    # "vibratorInfo":Landroid/os/VibratorInfo;
    .end local v4    # "effect":Landroid/os/VibrationEffect;
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 270
    .end local v1    # "i":I
    :cond_52
    iget-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    .line 271
    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/server/vibrator/StartSequentialEffectStep;
    .param p2, "stereo"    # Landroid/os/CombinedVibration$Stereo;

    .line 273
    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iget-object v0, p1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v0

    .line 275
    .local v0, "vibrators":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/vibrator/VibratorController;>;"
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v1

    .line 276
    .local v1, "stereoEffects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 278
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 279
    .local v3, "vibratorId":I
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 280
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v4

    .line 281
    .local v4, "vibratorInfo":Landroid/os/VibratorInfo;
    iget-object v5, p1, Lcom/android/server/vibrator/StartSequentialEffectStep;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 282
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    .line 281
    invoke-virtual {v5, v6, v4}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 283
    .local v5, "effect":Landroid/os/VibrationEffect;
    instance-of v6, v5, Landroid/os/VibrationEffect$Composed;

    if-eqz v6, :cond_4b

    .line 284
    iget-object v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    move-object v7, v5

    check-cast v7, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    .end local v3    # "vibratorId":I
    .end local v4    # "vibratorInfo":Landroid/os/VibratorInfo;
    .end local v5    # "effect":Landroid/os/VibrationEffect;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 288
    .end local v2    # "i":I
    :cond_4e
    iget-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 289
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_59
    iget-object v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6e

    .line 290
    iget-object v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    iget-object v4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v2

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 292
    .end local v2    # "i":I
    :cond_6e
    iget-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    .line 293
    return-void
.end method

.method private calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;)J"
        }
    .end annotation

    .line 336
    .local p1, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect$Composed;>;"
    const-wide/16 v0, 0x0

    .line 337
    .local v0, "prepareCap":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    const-wide/16 v6, 0x4

    const-wide/16 v8, 0x2

    if-ge v2, v3, :cond_34

    .line 338
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 339
    .local v3, "firstSegment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v10, v3, Landroid/os/vibrator/StepSegment;

    if-eqz v10, :cond_26

    .line 340
    or-long/2addr v0, v8

    goto :goto_31

    .line 341
    :cond_26
    instance-of v8, v3, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v8, :cond_2c

    .line 342
    or-long/2addr v0, v6

    goto :goto_31

    .line 343
    :cond_2c
    instance-of v6, v3, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v6, :cond_31

    .line 344
    or-long/2addr v0, v4

    .line 337
    .end local v3    # "firstSegment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 347
    .end local v2    # "i":I
    :cond_34
    const/4 v2, 0x0

    .line 348
    .local v2, "triggerCap":I
    invoke-direct {p0, v0, v1, v8, v9}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 349
    or-int/lit8 v2, v2, 0x10

    .line 351
    :cond_3d
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 352
    or-int/lit8 v2, v2, 0x20

    .line 354
    :cond_45
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 355
    or-int/lit8 v2, v2, 0x40

    .line 357
    :cond_4d
    const-wide/16 v3, 0x1

    or-long/2addr v3, v0

    int-to-long v5, v2

    or-long/2addr v3, v5

    return-wide v3
.end method

.method private requireMixedTriggerCapability(JJ)Z
    .registers 9
    .param p1, "prepareCapabilities"    # J
    .param p3, "capability"    # J

    .line 366
    and-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    not-long v0, p3

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public effectAt(I)Landroid/os/VibrationEffect$Composed;
    .registers 3
    .param p1, "index"    # I

    .line 324
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    return-object v0
.end method

.method public getRequiredSyncCapabilities()J
    .registers 3

    .line 309
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-wide v0
.end method

.method public getVibratorIds()[I
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    array-length v0, v0

    return v0
.end method

.method public vibratorIdAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method
