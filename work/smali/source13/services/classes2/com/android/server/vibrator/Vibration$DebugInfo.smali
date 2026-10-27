.class final Lcom/android/server/vibrator/Vibration$DebugInfo;
.super Ljava/lang/Object;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/Vibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebugInfo"
.end annotation


# instance fields
.field private final mAttrs:Landroid/os/VibrationAttributes;

.field private final mDurationMs:J

.field private final mEffect:Landroid/os/CombinedVibration;

.field private final mEndTimeDebug:J

.field private final mOpPkg:Ljava/lang/String;

.field private final mOriginalEffect:Landroid/os/CombinedVibration;

.field private final mReason:Ljava/lang/String;

.field private final mScale:F

.field private final mStartTimeDebug:J

.field private final mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field private final mUid:I


# direct methods
.method constructor <init>(JJJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 15
    .param p1, "startTimeDebug"    # J
    .param p3, "endTimeDebug"    # J
    .param p5, "durationMs"    # J
    .param p7, "effect"    # Landroid/os/CombinedVibration;
    .param p8, "originalEffect"    # Landroid/os/CombinedVibration;
    .param p9, "scale"    # F
    .param p10, "attrs"    # Landroid/os/VibrationAttributes;
    .param p11, "uid"    # I
    .param p12, "opPkg"    # Ljava/lang/String;
    .param p13, "reason"    # Ljava/lang/String;
    .param p14, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    .line 258
    iput-wide p3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    .line 259
    iput-wide p5, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    .line 260
    iput-object p7, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    .line 261
    iput-object p8, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 262
    iput p9, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScale:F

    .line 263
    iput-object p10, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    .line 264
    iput p11, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mUid:I

    .line 265
    iput-object p12, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOpPkg:Ljava/lang/String;

    .line 266
    iput-object p13, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mReason:Ljava/lang/String;

    .line 267
    iput-object p14, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 268
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "effect"    # Landroid/os/CombinedVibration$Mono;

    .line 350
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 351
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    const-wide v3, 0x20b00000001L

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    .line 352
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 353
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Sequential;)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "effect"    # Landroid/os/CombinedVibration$Sequential;

    .line 333
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 334
    .local v0, "token":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 335
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 336
    .local v3, "nestedEffect":Landroid/os/CombinedVibration;
    instance-of v4, v3, Landroid/os/CombinedVibration$Mono;

    const-wide v5, 0x20b00000001L

    if-eqz v4, :cond_29

    .line 337
    move-object v4, v3

    check-cast v4, Landroid/os/CombinedVibration$Mono;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V

    goto :goto_33

    .line 339
    :cond_29
    instance-of v4, v3, Landroid/os/CombinedVibration$Stereo;

    if-eqz v4, :cond_33

    .line 340
    move-object v4, v3

    check-cast v4, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V

    .line 343
    :cond_33
    :goto_33
    const-wide v4, 0x20500000002L

    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 334
    .end local v3    # "nestedEffect":Landroid/os/CombinedVibration;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 345
    .end local v2    # "i":I
    :cond_4c
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 346
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "effect"    # Landroid/os/CombinedVibration$Stereo;

    .line 357
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 358
    .local v0, "token":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 359
    const-wide v3, 0x20500000002L

    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 360
    const-wide v3, 0x20b00000001L

    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationEffect;

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 362
    .end local v2    # "i":I
    :cond_34
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 363
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "effect"    # Landroid/os/CombinedVibration;

    .line 325
    nop

    .line 326
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p4}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 325
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Sequential;)V

    .line 329
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "effect"    # Landroid/os/VibrationEffect;

    .line 367
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 368
    .local v0, "token":J
    move-object v2, p4

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    .line 369
    .local v2, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 370
    .local v4, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    const-wide v5, 0x10b00000001L

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V

    .line 371
    .end local v4    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    goto :goto_f

    .line 372
    :cond_24
    const-wide v3, 0x10500000002L

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 373
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 374
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "segment"    # Landroid/os/vibrator/PrebakedSegment;

    .line 411
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 412
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 413
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 414
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 415
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 416
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "segment"    # Landroid/os/vibrator/PrimitiveSegment;

    .line 420
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 421
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 422
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 423
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 424
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 425
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "segment"    # Landroid/os/vibrator/RampSegment;

    .line 400
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 401
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 402
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 403
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v2

    const-wide v3, 0x10200000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 404
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v2

    const-wide v3, 0x10200000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 405
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v2

    const-wide v3, 0x10200000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 406
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 407
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "segment"    # Landroid/os/vibrator/StepSegment;

    .line 392
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 393
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 394
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 395
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v2

    const-wide v3, 0x10200000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 396
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 397
    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;

    .line 378
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 379
    .local v0, "token":J
    instance-of v2, p4, Landroid/os/vibrator/StepSegment;

    if-eqz v2, :cond_14

    .line 380
    const-wide v2, 0x10b00000003L

    move-object v4, p4

    check-cast v4, Landroid/os/vibrator/StepSegment;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V

    goto :goto_43

    .line 381
    :cond_14
    instance-of v2, p4, Landroid/os/vibrator/RampSegment;

    if-eqz v2, :cond_24

    .line 382
    const-wide v2, 0x10b00000004L

    move-object v4, p4

    check-cast v4, Landroid/os/vibrator/RampSegment;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V

    goto :goto_43

    .line 383
    :cond_24
    instance-of v2, p4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_34

    .line 384
    const-wide v2, 0x10b00000001L

    move-object v4, p4

    check-cast v4, Landroid/os/vibrator/PrebakedSegment;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V

    goto :goto_43

    .line 385
    :cond_34
    instance-of v2, p4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v2, :cond_43

    .line 386
    const-wide v2, 0x10b00000002L

    move-object v4, p4

    check-cast v4, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V

    .line 388
    :cond_43
    :goto_43
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 389
    return-void
.end method


# virtual methods
.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 301
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 302
    .local v0, "token":J
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 303
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 304
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 305
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration$Status;->ordinal()I

    move-result v2

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 307
    const-wide v2, 0x10b00000005L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 308
    .local v2, "attrsToken":J
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 309
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v4

    const-wide v5, 0x10500000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 310
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v4

    const-wide v5, 0x10500000003L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 311
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 313
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    if-eqz v4, :cond_72

    .line 314
    const-wide v5, 0x10b00000003L

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 316
    :cond_72
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz v4, :cond_7e

    .line 317
    const-wide v5, 0x10b00000004L

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 320
    :cond_7e
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 321
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    const-string/jumbo v1, "startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/vibrator/Vibration;->-$$Nest$sfgetDEBUG_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 274
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    goto :goto_3e

    .line 277
    :cond_2f
    invoke-static {}, Lcom/android/server/vibrator/Vibration;->-$$Nest$sfgetDEBUG_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 276
    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    const-string v1, ", durationMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    .line 279
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 281
    invoke-virtual {v1}, Lcom/android/server/vibrator/Vibration$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string v1, ", effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    const-string v1, ", scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScale:F

    .line 287
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string v1, ", attrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mUid:I

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string v1, ", opPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOpPkg:Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mReason:Ljava/lang/String;

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method
