.class public final Landroid/companion/virtual/ViewConfigurationParams$Builder;
.super Ljava/lang/Object;
.source "ViewConfigurationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/ViewConfigurationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDoubleTapMinTimeMillis:I

.field private blacklist mDoubleTapTimeoutMillis:I

.field private blacklist mLongPressTimeoutMillis:I

.field private blacklist mMaximumFlingVelocityPixelsPerSecond:I

.field private blacklist mMinimumFlingVelocityPixelsPerSecond:I

.field private blacklist mMultiPressTimeoutMillis:I

.field private blacklist mScrollFriction:F

.field private blacklist mTapTimeoutMillis:I

.field private blacklist mTouchSlopPixels:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mTouchSlopPixels:I

    .line 247
    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMinimumFlingVelocityPixelsPerSecond:I

    .line 248
    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMaximumFlingVelocityPixelsPerSecond:I

    .line 249
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mScrollFriction:F

    .line 250
    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mTapTimeoutMillis:I

    .line 251
    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mDoubleTapTimeoutMillis:I

    .line 252
    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mDoubleTapMinTimeMillis:I

    .line 253
    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mLongPressTimeoutMillis:I

    .line 254
    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMultiPressTimeoutMillis:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/companion/virtual/ViewConfigurationParams;
    .registers 14

    .line 439
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mTouchSlopPixels:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMinimumFlingVelocityPixelsPerSecond:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMaximumFlingVelocityPixelsPerSecond:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mScrollFriction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_32

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mTapTimeoutMillis:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mDoubleTapTimeoutMillis:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mDoubleTapMinTimeMillis:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mLongPressTimeoutMillis:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMultiPressTimeoutMillis:I

    if-eq v0, v1, :cond_2a

    goto :goto_32

    .line 448
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "None of the parameters are set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_32
    :goto_32
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMinimumFlingVelocityPixelsPerSecond:I

    if-eq v0, v1, :cond_49

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMaximumFlingVelocityPixelsPerSecond:I

    if-eq v0, v1, :cond_49

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMinimumFlingVelocityPixelsPerSecond:I

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMaximumFlingVelocityPixelsPerSecond:I

    if-gt v0, v1, :cond_41

    goto :goto_49

    .line 454
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum fling velocity cannot be greater than the maximum fling velocity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_49
    :goto_49
    new-instance v2, Landroid/companion/virtual/ViewConfigurationParams;

    iget v3, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mTouchSlopPixels:I

    iget v4, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMinimumFlingVelocityPixelsPerSecond:I

    iget v5, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMaximumFlingVelocityPixelsPerSecond:I

    iget v6, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mScrollFriction:F

    iget v7, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mTapTimeoutMillis:I

    iget v8, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mDoubleTapTimeoutMillis:I

    iget v9, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mDoubleTapMinTimeMillis:I

    iget v10, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mLongPressTimeoutMillis:I

    iget v11, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMultiPressTimeoutMillis:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/companion/virtual/ViewConfigurationParams;-><init>(IIIFIIIIILandroid/companion/virtual/ViewConfigurationParams-IA;)V

    return-object v2
.end method

.method public whitelist setDoubleTapMinTimeDuration(Ljava/time/Duration;)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 6

    .line 376
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_20

    .line 380
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 381
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_18

    .line 385
    long-to-int p1, v0

    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mDoubleTapMinTimeMillis:I

    .line 386
    return-object p0

    .line 382
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Double tap min time cannot be larger than 2147483647"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Double tap min time cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setDoubleTapTimeoutDuration(Ljava/time/Duration;)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 6

    .line 355
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_20

    .line 359
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 360
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_18

    .line 364
    long-to-int p1, v0

    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mDoubleTapTimeoutMillis:I

    .line 365
    return-object p0

    .line 361
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Double tap timeout cannot be larger than 2147483647"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Double tap timeout cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLongPressTimeoutDuration(Ljava/time/Duration;)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 6

    .line 397
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_20

    .line 401
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 402
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_18

    .line 406
    long-to-int p1, v0

    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mLongPressTimeoutMillis:I

    .line 407
    return-object p0

    .line 403
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Long press timeout cannot be larger than 2147483647"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Long press timeout cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setMaximumFlingVelocityPixelsPerSecond(I)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 3

    .line 302
    if-ltz p1, :cond_5

    .line 305
    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMaximumFlingVelocityPixelsPerSecond:I

    .line 306
    return-object p0

    .line 303
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum fling velocity cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setMinimumFlingVelocityPixelsPerSecond(I)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 3

    .line 284
    if-ltz p1, :cond_5

    .line 287
    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMinimumFlingVelocityPixelsPerSecond:I

    .line 288
    return-object p0

    .line 285
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Minimum fling velocity cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setMultiPressTimeoutDuration(Ljava/time/Duration;)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 6

    .line 418
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_20

    .line 422
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 423
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_18

    .line 427
    long-to-int p1, v0

    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mMultiPressTimeoutMillis:I

    .line 428
    return-object p0

    .line 424
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multi press timeout cannot be larger than 2147483647"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 420
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multi press timeout cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setScrollFriction(F)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 3

    .line 317
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 320
    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mScrollFriction:F

    .line 321
    return-object p0

    .line 318
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scroll friction cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTapTimeoutDuration(Ljava/time/Duration;)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 6

    .line 333
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_20

    .line 337
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 338
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_18

    .line 342
    long-to-int p1, v0

    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mTapTimeoutMillis:I

    .line 343
    return-object p0

    .line 339
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tap timeout cannot be larger than 2147483647"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tap timeout cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTouchSlopPixels(I)Landroid/companion/virtual/ViewConfigurationParams$Builder;
    .registers 3

    .line 266
    if-ltz p1, :cond_5

    .line 269
    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams$Builder;->mTouchSlopPixels:I

    .line 270
    return-object p0

    .line 267
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Touch slop cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
