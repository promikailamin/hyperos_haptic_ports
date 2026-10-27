.class public final Lcom/android/server/inputmethod/HandwritingModeController;
.super Ljava/lang/Object;
.source "HandwritingModeController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HandwritingModeController"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayId:I

.field public mCurrentRequestId:I

.field public mDelegatePackageName:Ljava/lang/String;

.field public mDelegationConnectionlessFlow:Z

.field public mDelegationIdleTimeoutHandler:Landroid/os/Handler;

.field public mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

.field public mDelegatorFromDefaultHomePackage:Z

.field public mDelegatorPackageName:Ljava/lang/String;

.field public final mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

.field public mHandwritingBuffer:Ljava/util/ArrayList;

.field public mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field public mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

.field public mInkWindowInitRunnable:Ljava/lang/Runnable;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mLooper:Landroid/os/Looper;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRecordingGesture:Z

.field public mRecordingGestureAfterStylusUp:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$RpmsqgTEsdViILmxObrUZOUXU6I(Lcom/android/server/inputmethod/HandwritingModeController;Landroid/view/InputEvent;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rI_-JXHQgynFcPJdS6ZZt3puFz4(Lcom/android/server/inputmethod/HandwritingModeController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->lambda$scheduleHandwritingDelegationTimeout$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    const/4 p2, -0x1

    .line 105
    iput p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 106
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 107
    const-class p1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 108
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 109
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 111
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 112
    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final clearBufferIfRecordingAfterStylusUp()V
    .registers 2

    .line 464
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-eqz v0, :cond_c

    .line 465
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    :cond_c
    return-void
.end method

.method public clearPendingHandwritingDelegation()V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 273
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    .line 276
    :cond_c
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 277
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    .line 278
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 280
    iget-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-eqz v1, :cond_20

    .line 281
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 282
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_20
    return-void
.end method

.method public getCurrentRequestId()Ljava/util/OptionalInt;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-nez v0, :cond_10

    .line 155
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get requestId: Handwriting was not initialized."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    .line 158
    :cond_10
    iget p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public getDelegatePackageName()Ljava/lang/String;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getDelegatorPackageName()Ljava/lang/String;
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHandwritingBufferSize()I
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    if-eqz p0, :cond_b

    const/16 p0, 0x7d0

    return p0

    :cond_b
    const/16 p0, 0x64

    return p0
.end method

.method public hasOngoingStylusHandwritingSession()Z
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->isIntercepting()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public initializeHandwritingSpy(I)V
    .registers 11

    .line 124
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    .line 125
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 127
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 132
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stylus-handwriting-event-receiver-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerInternal;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v8

    .line 134
    const-string v0, "Failed to create input channel"

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_41
    move-object v7, v0

    goto :goto_4a

    .line 137
    :cond_43
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getHandwritingSurfaceForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_41

    :goto_4a
    if-nez v7, :cond_54

    .line 139
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Failed to create input surface"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_54
    new-instance v3, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    iget-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 148
    new-instance p1, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    .line 149
    invoke-virtual {v8}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    invoke-direct {p1, v0, v2, v3, v4}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 150
    iget p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    return-void
.end method

.method public isDelegationUsingConnectionlessFlow()Z
    .registers 1

    .line 236
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    return p0
.end method

.method public isDelegatorFromDefaultHomePackage()Z
    .registers 1

    .line 232
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    return p0
.end method

.method public isStylusGestureOngoing()Z
    .registers 6

    .line 176
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 179
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 180
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v2, :cond_32

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xc8

    cmp-long p0, v3, v0

    if-gez p0, :cond_30

    return v2

    :cond_30
    const/4 p0, 0x0

    return p0

    .line 185
    :cond_32
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    return p0
.end method

.method public final synthetic lambda$scheduleHandwritingDelegationTimeout$0()V
    .registers 3

    .line 246
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v1, "Stylus handwriting delegation idle timed-out."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 248
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    .line 249
    new-instance v1, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 252
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_29
    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_2f

    .line 397
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    check-cast p1, Landroid/view/MotionEvent;

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 404
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iget v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    if-eq v0, v2, :cond_22

    .line 405
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Received stylus event associated with the incorrect display."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 409
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->onStylusEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 398
    :cond_27
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Received non-motion event in stylus monitor."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 393
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input Event should not be processed when IME has the spy channel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onStylusEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_12

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1b

    .line 419
    :cond_12
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    return-void

    .line 422
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_4a

    .line 430
    :cond_22
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_30

    iget-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-eqz v1, :cond_3b

    :cond_30
    if-eq v0, v3, :cond_35

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 432
    :cond_35
    iput-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-ne v0, v3, :cond_67

    .line 434
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    :cond_3b
    if-nez v0, :cond_42

    .line 442
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearBufferIfRecordingAfterStylusUp()V

    .line 443
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 446
    :cond_42
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-nez v0, :cond_4b

    :goto_4a
    return-void

    .line 450
    :cond_4b
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result v1

    if-lt v0, v1, :cond_5d

    .line 455
    iput-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 456
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearBufferIfRecordingAfterStylusUp()V

    return-void

    .line 460
    :cond_5d
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 436
    :cond_67
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 199
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    .line 200
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 204
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 205
    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 206
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 209
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 212
    :cond_1f
    iput-boolean p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-nez p4, :cond_3a

    .line 214
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-nez p1, :cond_33

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    goto :goto_3a

    .line 217
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 220
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->scheduleHandwritingDelegationTimeout()V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    return-void
.end method

.method public final reset(Z)V
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 364
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 365
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 368
    :cond_a
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 369
    new-instance v2, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_1f

    .line 372
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 376
    :cond_1f
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v0, :cond_33

    .line 377
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    if-nez p1, :cond_33

    .line 379
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->remove()V

    .line 380
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 384
    :cond_33
    iget-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-nez p1, :cond_3a

    .line 385
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    :cond_3a
    const/4 p1, 0x0

    .line 387
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 388
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    return-void
.end method

.method public final scheduleHandwritingDelegationTimeout()V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 241
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    goto :goto_13

    .line 243
    :cond_e
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    :goto_13
    new-instance v0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 255
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setHandwritingTouchableRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 172
    :cond_b
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->setTouchableRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method public setInkWindowInitializer(Ljava/lang/Runnable;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setNotTouchable(Z)V
    .registers 3

    .line 162
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 165
    :cond_b
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->setNotTouchable(Z)V

    return-void
.end method

.method public startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    .registers 13

    .line 298
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 299
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 300
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: Handwriting was not initialized."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 303
    :cond_10
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    if-eq p1, v0, :cond_2b

    .line 304
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot start handwriting session: Invalid request id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 307
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result p1

    if-nez p1, :cond_39

    .line 308
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: No stylus gesture is being recorded."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 311
    :cond_39
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const-string v0, "Handwriting session was already transferred to IME."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 315
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 315
    invoke-virtual {v2, p4, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->isPointInsideWindow(Landroid/os/IBinder;IFF)Z

    move-result p4

    if-nez p4, :cond_63

    .line 317
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: Stylus gesture did not start inside the focused window."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 323
    :cond_63
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/hardware/input/InputManager;->pilferPointers(Landroid/os/IBinder;)V

    .line 326
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {p4}, Landroid/view/InputEventReceiver;->dispose()V

    .line 327
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 328
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 329
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 331
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p4}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->isIntercepting()Z

    move-result p4

    if-nez p4, :cond_bc

    .line 335
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p4, p2, p3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->startIntercepting(II)V

    .line 338
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    .line 339
    invoke-static {p2, p3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 341
    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v7

    .line 338
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/input/InputManager;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    .line 343
    new-instance p1, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    iget p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-direct {p1, p2, p3, p0, v1}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;Lcom/android/server/inputmethod/HandwritingModeController-IA;)V

    return-object p1

    .line 332
    :cond_bc
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Handwriting surface should not be already intercepting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
