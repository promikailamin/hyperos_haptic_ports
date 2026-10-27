.class public abstract Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MagnificationGestureHandler.java"


# static fields
.field public static final DEBUG_ALL:Z

.field public static final DEBUG_EVENT_STREAM:Z


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

.field public final mDebugInputEventHistory:Ljava/util/Queue;

.field public final mDebugOutputEventHistory:Ljava/util/Queue;

.field public final mDetectShortcutTrigger:Z

.field public final mDetectSingleFingerTripleTap:Z

.field public final mDetectTwoFingerTripleTap:Z

.field public final mDisplayId:I

.field public final mLogTag:Ljava/lang/String;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-string v0, "MagnificationGestureHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 46
    sput-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    return-void
.end method

.method public constructor <init>(IZZZLcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V
    .registers 7

    .line 111
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 112
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 113
    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectTwoFingerTripleTap:Z

    .line 116
    iput-boolean p4, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 117
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 118
    iput-object p6, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    .line 120
    sget-boolean p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_25

    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    goto :goto_26

    :cond_25
    move-object p3, p2

    :goto_26
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    if-eqz p1, :cond_2f

    .line 121
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    :cond_2f
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    return-void
.end method

.method public static storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V
    .registers 6

    .line 208
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_7
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 211
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_7

    :cond_2c
    return-void
.end method


# virtual methods
.method public final dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 192
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    if-eqz v0, :cond_31

    .line 193
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V

    .line 195
    :try_start_9
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 198
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception downstream following input events: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nTransformed into output events: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 204
    :cond_31
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public abstract getMode()I
.end method

.method public abstract handleMouseOrStylusEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public abstract handleShortcutTriggered()V
.end method

.method public final magnificationShortcutExists()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectTwoFingerTripleTap:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public notifyShortcutTriggered()V
    .registers 3

    .line 231
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_c

    .line 232
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "notifyShortcutTriggered():"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_13

    .line 235
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->handleShortcutTriggered()V

    :cond_13
    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onDestroy(Z)V

    return-void
.end method

.method public abstract onDestroy(Z)V
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9

    .line 139
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_20

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_20
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 144
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MagnificationGestureHandler.onMotionEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 148
    :cond_52
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    if-eqz v0, :cond_5b

    .line 149
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V

    .line 151
    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_88

    const/16 v1, 0x2002

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x4002

    if-eq v0, v1, :cond_6c

    goto :goto_b7

    .line 170
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->magnificationShortcutExists()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_84

    .line 172
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;->onMouseMove(II)V

    .line 174
    :cond_84
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->handleMouseOrStylusEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_b7

    .line 153
    :cond_88
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->magnificationShortcutExists()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 155
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_a3

    .line 159
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    iget p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;->onTouchInteractionStart(II)V

    return-void

    :cond_a3
    const/4 p2, 0x1

    if-eq p1, p2, :cond_ab

    const/4 p2, 0x3

    if-ne p1, p2, :cond_aa

    goto :goto_ab

    :cond_aa
    return-void

    .line 161
    :cond_ab
    :goto_ab
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    iget p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;->onTouchInteractionEnd(II)V

    return-void

    .line 182
    :cond_b7
    :goto_b7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public abstract onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method
