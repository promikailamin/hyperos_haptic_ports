.class public Landroid/view/InputEventLogStubImpl;
.super Ljava/lang/Object;
.source "InputEventLogStubImpl.java"

# interfaces
.implements Landroid/view/InputEventLogStub;


# static fields
.field private static final blacklist AMOTION_EVENT_FLAG_DEBUGINPUT_DETAIL:I = 0x400000

.field private static final blacklist AMOTION_EVENT_FLAG_DEBUGINPUT_MAJAR:I = 0x200000

.field private static final blacklist DEBUG_INPUT_DETAIL:I = 0x2

.field private static final blacklist DEBUG_INPUT_MAJAR:I = 0x1

.field private static final blacklist DEBUG_INPUT_NO:I = 0x0

.field private static final blacklist LOG_MAX_REPEAT_COUNT:I = 0x5

.field private static final blacklist TAG_INPUT:Ljava/lang/String; = "MIUIInput"

.field private static blacklist mDebugInput:I

.field private static blacklist mMoveCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput v0, Landroid/view/InputEventLogStubImpl;->mDebugInput:I

    .line 24
    sput v0, Landroid/view/InputEventLogStubImpl;->mMoveCount:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkTouchInputLevel(I)V
    .registers 3
    .param p1, "eventFlags"    # I

    .line 74
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    .line 75
    const/4 v0, 0x1

    sput v0, Landroid/view/InputEventLogStubImpl;->mDebugInput:I

    goto :goto_15

    .line 76
    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    if-eqz v0, :cond_12

    .line 77
    const/4 v0, 0x2

    sput v0, Landroid/view/InputEventLogStubImpl;->mDebugInput:I

    goto :goto_15

    .line 79
    :cond_12
    const/4 v0, 0x0

    sput v0, Landroid/view/InputEventLogStubImpl;->mDebugInput:I

    .line 81
    :goto_15
    return-void
.end method

.method private blacklist eventTimeToPhoneEventTime(J)Ljava/lang/String;
    .registers 10
    .param p1, "eventTime"    # J

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 100
    .local v0, "currenttime":J
    sub-long v2, v0, p1

    .line 101
    .local v2, "latency":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 102
    .local v4, "phoneEventTime":J
    invoke-static {v4, v5}, Landroid/view/InputEventLogStubImpl;->formatCurrentTime(J)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static blacklist formatCurrentTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "phoneEventTime"    # J

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 107
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method private blacklist getMotionStr(Landroid/view/MotionEvent;)Ljava/lang/String;
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "{ action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 87
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_44

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 90
    .end local v2    # "i":I
    :cond_44
    const-string v2, ", pointerCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v2, ", eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    const-string v2, ", downTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string v2, ", phoneEventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/view/InputEventLogStubImpl;->eventTimeToPhoneEventTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist checkScoutStateOnInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V
    .registers 11
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "windowName"    # Ljava/lang/String;

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, "currenttime":J
    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    .line 114
    .local v2, "eventtime":J
    sub-long v4, v0, v2

    .line 115
    .local v4, "latency":J
    const-wide/16 v6, 0x9c4

    cmp-long v6, v4, v6

    if-lez v6, :cond_40

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AnrScout input event latency is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", windowName \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MIUIInput"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v6

    long-to-int v7, v4

    invoke-interface {v6, v7}, Landroid/app/ActivityThreadStub;->checkScoutStateOnInputEvent(I)V

    .line 120
    :cond_40
    return-void
.end method

.method public blacklist logOnInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "windowName"    # Ljava/lang/String;

    .line 29
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x5

    const-string v2, ", phoneEventTime="

    const/4 v3, 0x2

    const-string v4, "\', "

    const-string v5, "MIUIInput"

    const/4 v6, 0x1

    if-eqz v0, :cond_96

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 31
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 32
    .local v7, "keyCode":I
    const/16 v8, 0x19

    const-string v9, "[KeyEvent] ViewRootImpl windowName \'"

    if-eq v7, v8, :cond_5e

    const/16 v8, 0x18

    if-eq v7, v8, :cond_5e

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5e

    const/16 v8, 0x42

    if-ne v7, v8, :cond_26

    goto :goto_5e

    .line 39
    :cond_26
    sget v1, Landroid/view/InputEventLogStubImpl;->mDebugInput:I

    if-eq v1, v6, :cond_2c

    if-ne v1, v3, :cond_129

    .line 40
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/InputEventLogStubImpl;->eventTimeToPhoneEventTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129

    .line 34
    :cond_5e
    :goto_5e
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gt v3, v1, :cond_129

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/InputEventLogStubImpl;->eventTimeToPhoneEventTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129

    .line 44
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    .end local v7    # "keyCode":I
    :cond_96
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_129

    .line 45
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 46
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/view/InputEventLogStubImpl;->checkTouchInputLevel(I)V

    .line 47
    sget v7, Landroid/view/InputEventLogStubImpl;->mDebugInput:I

    const-string v8, "[MotionEvent] ViewRootImpl windowName \'"

    if-ne v7, v6, :cond_f5

    .line 48
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 49
    .local v2, "maskedAction":I
    if-ne v2, v3, :cond_b5

    .line 50
    sget v3, Landroid/view/InputEventLogStubImpl;->mMoveCount:I

    add-int/2addr v3, v6

    sput v3, Landroid/view/InputEventLogStubImpl;->mMoveCount:I

    .line 52
    :cond_b5
    const/4 v3, 0x3

    if-eqz v2, :cond_c1

    if-eq v2, v6, :cond_c1

    if-eq v2, v1, :cond_c1

    const/4 v1, 0x6

    if-eq v2, v1, :cond_c1

    if-ne v2, v3, :cond_128

    .line 57
    :cond_c1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-direct {p0, v0}, Landroid/view/InputEventLogStubImpl;->getMotionStr(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " moveCount:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Landroid/view/InputEventLogStubImpl;->mMoveCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eq v2, v6, :cond_f1

    if-ne v2, v3, :cond_128

    .line 62
    :cond_f1
    const/4 v1, 0x0

    sput v1, Landroid/view/InputEventLogStubImpl;->mMoveCount:I

    goto :goto_128

    .line 65
    .end local v2    # "maskedAction":I
    :cond_f5
    if-ne v7, v3, :cond_128

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/InputEventLogStubImpl;->eventTimeToPhoneEventTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 65
    :cond_128
    :goto_128
    goto :goto_12a

    .line 44
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_129
    :goto_129
    nop

    .line 71
    :goto_12a
    return-void
.end method
