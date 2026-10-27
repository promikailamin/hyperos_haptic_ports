.class public final Lcom/android/server/policy/SingleKeyGestureEvent;
.super Ljava/lang/Object;
.source "SingleKeyGestureEvent.java"


# instance fields
.field public final mAction:I

.field public mDeviceId:I

.field public mDisplayId:I

.field public mEventTime:J

.field public final mKeyCode:I

.field public mPressCount:I

.field public mStartTime:J

.field public final mType:I


# direct methods
.method public constructor <init>(IIIJJIII)V
    .registers 14

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mStartTime:J

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mEventTime:J

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mPressCount:I

    const/4 v1, -0x1

    .line 117
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDisplayId:I

    const/4 v1, -0x2

    .line 122
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDeviceId:I

    .line 193
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mKeyCode:I

    .line 194
    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mType:I

    .line 196
    const-string p1, ")"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_5a

    if-eq p2, v2, :cond_5a

    if-ne p2, v1, :cond_27

    goto :goto_5a

    .line 199
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "type was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but must be one of: SINGLE_KEY_GESTURE_TYPE_PRESS("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), SINGLE_KEY_GESTURE_TYPE_LONG_PRESS("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), SINGLE_KEY_GESTURE_TYPE_VERY_LONG_PRESS("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_5a
    :goto_5a
    iput p3, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mAction:I

    if-eqz p3, :cond_95

    if-eq p3, v2, :cond_95

    if-ne p3, v1, :cond_63

    goto :goto_95

    .line 211
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "action was "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " but must be one of: ACTION_START("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "), ACTION_COMPLETE("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "), ACTION_CANCEL("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_95
    :goto_95
    iput-wide p4, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mStartTime:J

    .line 219
    iput-wide p6, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mEventTime:J

    .line 220
    iput p8, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mPressCount:I

    .line 221
    iput p9, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDisplayId:I

    .line 222
    iput p10, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDeviceId:I

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_d
    const-string p0, "ACTION_CANCEL"

    return-object p0

    .line 176
    :cond_10
    const-string p0, "ACTION_COMPLETE"

    return-object p0

    .line 174
    :cond_13
    const-string p0, "ACTION_START"

    return-object p0
.end method

.method public static singleKeyGestureTypeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 156
    :cond_d
    const-string p0, "SINGLE_KEY_GESTURE_TYPE_VERY_LONG_PRESS"

    return-object p0

    .line 154
    :cond_10
    const-string p0, "SINGLE_KEY_GESTURE_TYPE_LONG_PRESS"

    return-object p0

    .line 152
    :cond_13
    const-string p0, "SINGLE_KEY_GESTURE_TYPE_PRESS"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    .line 329
    const-class v2, Lcom/android/server/policy/SingleKeyGestureEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_47

    .line 331
    :cond_10
    check-cast p1, Lcom/android/server/policy/SingleKeyGestureEvent;

    .line 333
    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mKeyCode:I

    iget v3, p1, Lcom/android/server/policy/SingleKeyGestureEvent;->mKeyCode:I

    if-ne v2, v3, :cond_47

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mType:I

    iget v3, p1, Lcom/android/server/policy/SingleKeyGestureEvent;->mType:I

    if-ne v2, v3, :cond_47

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mAction:I

    iget v3, p1, Lcom/android/server/policy/SingleKeyGestureEvent;->mAction:I

    if-ne v2, v3, :cond_47

    iget-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mStartTime:J

    iget-wide v4, p1, Lcom/android/server/policy/SingleKeyGestureEvent;->mStartTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mEventTime:J

    iget-wide v4, p1, Lcom/android/server/policy/SingleKeyGestureEvent;->mEventTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mPressCount:I

    iget v3, p1, Lcom/android/server/policy/SingleKeyGestureEvent;->mPressCount:I

    if-ne v2, v3, :cond_47

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDisplayId:I

    iget v3, p1, Lcom/android/server/policy/SingleKeyGestureEvent;->mDisplayId:I

    if-ne v2, v3, :cond_47

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDeviceId:I

    iget p1, p1, Lcom/android/server/policy/SingleKeyGestureEvent;->mDeviceId:I

    if-ne p0, p1, :cond_47

    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public getAction()I
    .registers 1

    .line 260
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mAction:I

    return p0
.end method

.method public getDeviceId()I
    .registers 1

    .line 300
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDeviceId:I

    return p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 292
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDisplayId:I

    return p0
.end method

.method public getKeyCode()I
    .registers 1

    .line 232
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mKeyCode:I

    return p0
.end method

.method public getPressCount()I
    .registers 1

    .line 284
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mPressCount:I

    return p0
.end method

.method public getStartTime()J
    .registers 3

    .line 268
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mStartTime:J

    return-wide v0
.end method

.method public getType()I
    .registers 1

    .line 240
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mType:I

    return p0
.end method

.method public hashCode()I
    .registers 5

    .line 351
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mKeyCode:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 352
    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mType:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 353
    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mAction:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 354
    iget-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 355
    iget-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mEventTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 356
    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mPressCount:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 357
    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDisplayId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 358
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDeviceId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleKeyGestureEvent { keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mType:I

    .line 311
    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureEvent;->singleKeyGestureTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mAction:I

    .line 312
    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pressCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mPressCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureEvent;->mDeviceId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
