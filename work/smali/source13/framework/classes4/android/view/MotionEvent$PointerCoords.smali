.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private greylist mPackedAxisBits:J

.field private greylist mPackedAxisValues:[F

.field public whitelist orientation:F

.field public whitelist pressure:F

.field public blacklist relativeX:F

.field public blacklist relativeY:F

.field public whitelist size:F

.field public whitelist toolMajor:F

.field public whitelist toolMinor:F

.field public whitelist touchMajor:F

.field public whitelist touchMinor:F

.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 4116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4117
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4126
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 4127
    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 4
    .param p0, "size"    # I

    .line 4132
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 4133
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 4134
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 4133
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4136
    .end local v1    # "i":I
    :cond_f
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 3

    .line 4255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4257
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4258
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4259
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4260
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4261
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4262
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4263
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4264
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4265
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4266
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4267
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4268
    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 8
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4276
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4277
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4278
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_20

    .line 4279
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4280
    .local v2, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    .line 4281
    .local v3, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4282
    .local v4, "values":[F
    if-eqz v4, :cond_17

    array-length v5, v4

    if-le v3, v5, :cond_1c

    .line 4283
    :cond_17
    array-length v5, v2

    new-array v4, v5, [F

    .line 4284
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4286
    :cond_1c
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4289
    .end local v2    # "otherValues":[F
    .end local v3    # "count":I
    .end local v4    # "values":[F
    :cond_20
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4290
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4291
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4292
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4293
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4294
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4295
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4296
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4297
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4298
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4299
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4300
    return-void
.end method

.method public whitelist getAxisValue(I)F
    .registers 10
    .param p1, "axis"    # I

    .line 4312
    sparse-switch p1, :sswitch_data_50

    .line 4336
    if-ltz p1, :cond_47

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_47

    .line 4339
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4340
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4341
    .local v2, "axisBit":J
    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_39

    .line 4342
    const/4 v4, 0x0

    return v4

    .line 4334
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    :sswitch_18
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return v0

    .line 4332
    :sswitch_1b
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    return v0

    .line 4330
    :sswitch_1e
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v0

    .line 4328
    :sswitch_21
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v0

    .line 4326
    :sswitch_24
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v0

    .line 4324
    :sswitch_27
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v0

    .line 4322
    :sswitch_2a
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v0

    .line 4320
    :sswitch_2d
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v0

    .line 4318
    :sswitch_30
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v0

    .line 4316
    :sswitch_33
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v0

    .line 4314
    :sswitch_36
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v0

    .line 4344
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    :cond_39
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4345
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    .line 4337
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_36
        0x1 -> :sswitch_33
        0x2 -> :sswitch_30
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_2a
        0x5 -> :sswitch_27
        0x6 -> :sswitch_24
        0x7 -> :sswitch_21
        0x8 -> :sswitch_1e
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_18
    .end sparse-switch
.end method

.method public whitelist setAxisValue(IF)V
    .registers 13
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .line 4360
    sparse-switch p1, :sswitch_data_7e

    .line 4395
    if-ltz p1, :cond_75

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_75

    .line 4398
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4399
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4400
    .local v2, "axisBit":J
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4401
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4402
    .local v5, "values":[F
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_72

    .line 4403
    if-nez v5, :cond_4b

    .line 4404
    const/16 v6, 0x8

    new-array v5, v6, [F

    .line 4405
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_6e

    .line 4392
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :sswitch_2a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4393
    goto :goto_74

    .line 4389
    :sswitch_2d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4390
    goto :goto_74

    .line 4386
    :sswitch_30
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4387
    goto :goto_74

    .line 4383
    :sswitch_33
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4384
    goto :goto_74

    .line 4380
    :sswitch_36
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4381
    goto :goto_74

    .line 4377
    :sswitch_39
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4378
    goto :goto_74

    .line 4374
    :sswitch_3c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4375
    goto :goto_74

    .line 4371
    :sswitch_3f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4372
    goto :goto_74

    .line 4368
    :sswitch_42
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4369
    goto :goto_74

    .line 4365
    :sswitch_45
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4366
    goto :goto_74

    .line 4362
    :sswitch_48
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4363
    goto :goto_74

    .line 4407
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    .restart local v4    # "index":I
    .restart local v5    # "values":[F
    :cond_4b
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    .line 4408
    .local v6, "count":I
    array-length v7, v5

    if-ge v6, v7, :cond_5c

    .line 4409
    if-eq v4, v6, :cond_6e

    .line 4410
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v6, v4

    invoke-static {v5, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6e

    .line 4414
    :cond_5c
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [F

    .line 4415
    .local v7, "newValues":[F
    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4416
    add-int/lit8 v8, v4, 0x1

    sub-int v9, v6, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4418
    move-object v5, v7

    .line 4419
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4422
    .end local v6    # "count":I
    .end local v7    # "newValues":[F
    :cond_6e
    :goto_6e
    or-long v6, v0, v2

    iput-wide v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4424
    :cond_72
    aput p2, v5, v4

    .line 4427
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :goto_74
    return-void

    .line 4396
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_48
        0x1 -> :sswitch_45
        0x2 -> :sswitch_42
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_39
        0x6 -> :sswitch_36
        0x7 -> :sswitch_33
        0x8 -> :sswitch_30
        0x1b -> :sswitch_2d
        0x1c -> :sswitch_2a
    .end sparse-switch
.end method
