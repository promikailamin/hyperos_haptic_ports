.class public final Lcom/android/server/policy/SingleKeyGestureEvent$Builder;
.super Ljava/lang/Object;
.source "SingleKeyGestureEvent.java"


# instance fields
.field public mAction:I

.field public mBuilderFieldsSet:J

.field public mDeviceId:I

.field public mDisplayId:I

.field public mEventTime:J

.field public mKeyCode:I

.field public mPressCount:I

.field public mStartTime:J

.field public mType:I


# direct methods
.method public constructor <init>(III)V
    .registers 8

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 378
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    .line 406
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mKeyCode:I

    .line 407
    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mType:I

    .line 409
    const-string p1, ")"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_4c

    if-eq p2, v2, :cond_4c

    if-ne p2, v1, :cond_17

    goto :goto_4c

    .line 412
    :cond_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type was "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mType:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: SINGLE_KEY_GESTURE_TYPE_PRESS("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), SINGLE_KEY_GESTURE_TYPE_LONG_PRESS("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), SINGLE_KEY_GESTURE_TYPE_VERY_LONG_PRESS("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 419
    :cond_4c
    :goto_4c
    iput p3, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mAction:I

    if-eqz p3, :cond_89

    if-eq p3, v2, :cond_89

    if-ne p3, v1, :cond_55

    goto :goto_89

    .line 424
    :cond_55
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action was "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mAction:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: ACTION_START("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), ACTION_COMPLETE("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), ACTION_CANCEL("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_89
    :goto_89
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/policy/SingleKeyGestureEvent;
    .registers 13

    .line 535
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->checkNotUsed()V

    .line 536
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mStartTime:J

    .line 541
    :cond_19
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mEventTime:J

    .line 544
    :cond_28
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_34

    const/4 v4, 0x0

    .line 545
    iput v4, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mPressCount:I

    :cond_34
    const-wide/16 v4, 0x40

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_3e

    const/4 v4, -0x1

    .line 548
    iput v4, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mDisplayId:I

    :cond_3e
    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_48

    const/4 v0, -0x2

    .line 551
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mDeviceId:I

    .line 553
    :cond_48
    new-instance v1, Lcom/android/server/policy/SingleKeyGestureEvent;

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mKeyCode:I

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mType:I

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mAction:I

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mStartTime:J

    iget-wide v7, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mEventTime:J

    iget v9, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mPressCount:I

    iget v10, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mDisplayId:I

    iget v11, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mDeviceId:I

    invoke-direct/range {v1 .. v11}, Lcom/android/server/policy/SingleKeyGestureEvent;-><init>(IIIJJIII)V

    return-object v1
.end method

.method public final checkNotUsed()V
    .registers 5

    .line 566
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    return-void

    .line 567
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDisplayId(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;
    .registers 6

    .line 516
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->checkNotUsed()V

    .line 517
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    .line 518
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mDisplayId:I

    return-object p0
.end method

.method public setEventTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;
    .registers 7

    .line 494
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->checkNotUsed()V

    .line 495
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    .line 496
    iput-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mEventTime:J

    return-object p0
.end method

.method public setPressCount(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;
    .registers 6

    .line 505
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->checkNotUsed()V

    .line 506
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    .line 507
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mPressCount:I

    return-object p0
.end method

.method public setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;
    .registers 7

    .line 483
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->checkNotUsed()V

    .line 484
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mBuilderFieldsSet:J

    .line 485
    iput-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->mStartTime:J

    return-object p0
.end method
