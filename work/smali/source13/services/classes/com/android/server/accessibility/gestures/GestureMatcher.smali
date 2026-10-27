.class public abstract Lcom/android/server/accessibility/gestures/GestureMatcher;
.super Ljava/lang/Object;
.source "GestureMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;,
        Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;,
        Lcom/android/server/accessibility/gestures/GestureMatcher$State;
    }
.end annotation


# static fields
.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_GESTURE_CANCELED:I = 0x3

.field public static final STATE_GESTURE_COMPLETED:I = 0x2

.field public static final STATE_GESTURE_STARTED:I = 0x1


# instance fields
.field protected final mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

.field private final mGestureId:I

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

.field private mState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetState(Lcom/android/server/accessibility/gestures/GestureMatcher;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected constructor <init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 5
    .param p1, "gestureId"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 69
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    .line 70
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;-><init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 72
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 73
    return-void
.end method

.method static getStateSymbolicName(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 284
    packed-switch p0, :pswitch_data_24

    .line 294
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

    .line 292
    :pswitch_17
    const-string v0, "STATE_GESTURE_CANCELED"

    return-object v0

    .line 290
    :pswitch_1a
    const-string v0, "STATE_GESTURE_COMPLETED"

    return-object v0

    .line 288
    :pswitch_1d
    const-string v0, "STATE_GESTURE_STARTED"

    return-object v0

    .line 286
    :pswitch_20
    const-string v0, "STATE_CLEAR"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "policyFlags"    # I

    .line 95
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 96
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelPendingTransitions()V

    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    if-eqz v0, :cond_13

    .line 98
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;->onStateChanged(IILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 100
    :cond_13
    return-void
.end method


# virtual methods
.method protected final cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 14
    .param p1, "timeout"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "rawEvent"    # Landroid/view/MotionEvent;
    .param p5, "policyFlags"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 234
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    const/4 v2, 0x3

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 235
    return-void
.end method

.method protected final cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 224
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 225
    return-void
.end method

.method protected cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 218
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 219
    return-void
.end method

.method protected final cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 109
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 110
    return-void
.end method

.method protected final cancelPendingTransitions()V
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 240
    return-void
.end method

.method public clear()V
    .registers 2

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 82
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelPendingTransitions()V

    .line 83
    return-void
.end method

.method protected final completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 14
    .param p1, "timeout"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "rawEvent"    # Landroid/view/MotionEvent;
    .param p5, "policyFlags"    # I

    .line 269
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 270
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    const/4 v2, 0x2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 271
    return-void
.end method

.method protected final completeAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 280
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 281
    return-void
.end method

.method protected final completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 249
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 250
    return-void
.end method

.method protected final completeAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 259
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 260
    return-void
.end method

.method protected final completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 114
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 115
    return-void
.end method

.method public getGestureId()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    return v0
.end method

.method protected abstract getGestureName()Ljava/lang/String;
.end method

.method public final getState()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return v0
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 167
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 135
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_2b

    .line 138
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 156
    :pswitch_10
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 149
    :pswitch_14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 150
    goto :goto_28

    .line 143
    :pswitch_18
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 144
    goto :goto_28

    .line 146
    :pswitch_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 147
    goto :goto_28

    .line 152
    :pswitch_20
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 153
    goto :goto_28

    .line 140
    :pswitch_24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 141
    nop

    .line 159
    :goto_28
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return v0

    .line 136
    :cond_2b
    :goto_2b
    return v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_10
        :pswitch_10
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 190
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 179
    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 202
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 214
    return-void
.end method

.method public final setListener(Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 118
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 119
    return-void
.end method

.method protected final startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
