.class public Lcom/android/server/accessibility/gestures/TouchState;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;,
        Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/gestures/TouchState$State;
    }
.end annotation


# static fields
.field public static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchState"

.field public static final MAX_POINTER_COUNT:I = 0x20

.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_DELEGATING:I = 0x4

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_GESTURE_DETECTING:I = 0x5

.field public static final STATE_TOUCH_EXPLORING:I = 0x2

.field public static final STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mDisplayId:I

.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field mLastReceivedPolicyFlags:I

.field private mLastReceivedRawEvent:Landroid/view/MotionEvent;

.field private mLastTouchedWindowId:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field private mServiceDetectsGestures:Z

.field private mServiceDetectsGesturesRequested:Z

.field private mState:I


# direct methods
.method public constructor <init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 93
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDisplayId:I

    .line 101
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDisplayId:I

    .line 102
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 103
    new-instance v0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 104
    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 314
    packed-switch p0, :pswitch_data_2a

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :pswitch_17
    const-string v0, "STATE_GESTURE_DETECTING"

    return-object v0

    .line 324
    :pswitch_1a
    const-string v0, "STATE_DELEGATING"

    return-object v0

    .line 322
    :pswitch_1d
    const-string v0, "STATE_DRAGGING"

    return-object v0

    .line 320
    :pswitch_20
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    .line 318
    :pswitch_23
    const-string v0, "STATE_TOUCH_INTERACTING"

    return-object v0

    .line 316
    :pswitch_26
    const-string v0, "STATE_CLEAR"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 109
    iget-boolean v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 111
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_12

    .line 112
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 115
    :cond_12
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    .line 116
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 117
    return-void
.end method

.method public getInjectedPointerDownCount()I
    .registers 2

    .line 367
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .registers 2

    .line 372
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .registers 3

    .line 358
    iget-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedPolicyFlags()I
    .registers 2

    .line 343
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    return v0
.end method

.method public getLastReceivedRawEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastTouchedWindowId()I
    .registers 2

    .line 362
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    return v0
.end method

.method public getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 242
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    return v0
.end method

.method public isClear()Z
    .registers 2

    .line 306
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDelegating()Z
    .registers 3

    .line 267
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isDragging()Z
    .registers 3

    .line 285
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isGestureDetecting()Z
    .registers 3

    .line 276
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isInjectedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .line 382
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 383
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isServiceDetectingGestures()Z
    .registers 2

    .line 392
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    return v0
.end method

.method public isTouchExploring()Z
    .registers 3

    .line 258
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isTouchInteracting()Z
    .registers 3

    .line 294
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public onInjectedAccessibilityEvent(I)V
    .registers 3
    .param p1, "type"    # I

    .line 213
    sparse-switch p1, :sswitch_data_1e

    goto :goto_1d

    .line 218
    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 220
    goto :goto_1d

    .line 215
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    .line 216
    goto :goto_1d

    .line 233
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 234
    goto :goto_1d

    .line 228
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startGestureDetecting()V

    .line 229
    goto :goto_1d

    .line 225
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    .line 226
    goto :goto_1d

    .line 222
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchExploring()V

    .line 223
    nop

    .line 238
    :goto_1d
    return-void

    :sswitch_data_1e
    .sparse-switch
        0x200 -> :sswitch_19
        0x400 -> :sswitch_15
        0x40000 -> :sswitch_11
        0x80000 -> :sswitch_d
        0x100000 -> :sswitch_9
        0x200000 -> :sswitch_4
    .end sparse-switch
.end method

.method public onInjectedMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 147
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 148
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 149
    .local v2, "pointerFlag":I
    packed-switch v0, :pswitch_data_56

    :pswitch_11
    goto :goto_54

    .line 170
    :pswitch_12
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_19

    .line 171
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 173
    :cond_19
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 174
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v3, :cond_26

    .line 175
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 177
    :cond_26
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_54

    .line 164
    :pswitch_2d
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_34

    .line 165
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 167
    :cond_34
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 168
    goto :goto_54

    .line 157
    :pswitch_3b
    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    not-int v4, v2

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 158
    if-nez v3, :cond_54

    .line 159
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    goto :goto_54

    .line 152
    :pswitch_48
    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    .line 154
    nop

    .line 183
    :cond_54
    :goto_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_48
        :pswitch_3b
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_48
        :pswitch_3b
        :pswitch_2d
        :pswitch_11
        :pswitch_2d
        :pswitch_12
    .end packed-switch
.end method

.method public onReceivedAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 189
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    goto :goto_1d

    .line 200
    :sswitch_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    goto :goto_1d

    .line 192
    :sswitch_f
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v0, :cond_19

    .line 193
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 196
    :cond_19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    .line 197
    nop

    .line 203
    :goto_1d
    return-void

    :sswitch_data_1e
    .sparse-switch
        0x20 -> :sswitch_f
        0x80 -> :sswitch_8
        0x100 -> :sswitch_8
        0x8000 -> :sswitch_f
    .end sparse-switch
.end method

.method public onReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 125
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_f

    .line 126
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 128
    :cond_f
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_16

    .line 129
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 131
    :cond_16
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1d

    .line 132
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 134
    :cond_1d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 135
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    .line 136
    iput p3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    .line 137
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 138
    return-void
.end method

.method public setServiceDetectsGestures(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .line 400
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    .line 401
    return-void
.end method

.method public setState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 247
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 251
    :cond_5
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 252
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_12

    .line 253
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchStateChanged(II)Z

    .line 255
    :cond_12
    return-void
.end method

.method public startDelegating()V
    .registers 2

    .line 272
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 273
    return-void
.end method

.method public startDragging()V
    .registers 2

    .line 290
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 291
    return-void
.end method

.method public startGestureDetecting()V
    .registers 2

    .line 281
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 282
    return-void
.end method

.method public startTouchExploring()V
    .registers 2

    .line 263
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 264
    return-void
.end method

.method public startTouchInteracting()V
    .registers 2

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchState { mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
