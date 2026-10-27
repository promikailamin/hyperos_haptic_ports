.class final Lcom/android/server/inputmethod/HandwritingModeController;
.super Ljava/lang/Object;
.source "HandwritingModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DEBUG:Z = true

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDisplayId:I

.field private mCurrentRequestId:I

.field private mHandwritingBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field private mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

.field private mInkWindowInitRunnable:Ljava/lang/Runnable;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mLooper:Landroid/os/Looper;

.field private mRecordingGesture:Z

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$KpcswpYnoX8BR0b0UwQ_jhp9qE0(Lcom/android/server/inputmethod/HandwritingModeController;Landroid/view/InputEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    nop

    .line 48
    const-class v0, Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "uiThreadLooper"    # Landroid/os/Looper;
    .param p2, "inkWindowInitRunnable"    # Ljava/lang/Runnable;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 72
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 73
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 75
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method private static isStylusEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 80
    const/16 v0, 0x4002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 81
    return v1

    .line 83
    :cond_a
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    .line 84
    .local v0, "tool":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x4

    if-ne v0, v2, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private onInputEvent(Landroid/view/InputEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/InputEvent;

    .line 226
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_30

    .line 231
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 232
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v2, "Received non-motion event in stylus monitor."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v1

    .line 235
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 236
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 237
    return v1

    .line 239
    :cond_1b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    if-eq v2, v3, :cond_2b

    .line 240
    sget-object v2, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v3, "Received stylus event associated with the incorrect display."

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v1

    .line 244
    :cond_2b
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->onStylusEvent(Landroid/view/MotionEvent;)V

    .line 245
    const/4 v1, 0x1

    return v1

    .line 227
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input Event should not be processed when IME has the spy channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onStylusEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 251
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_12

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1a

    .line 254
    :cond_12
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 258
    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_49

    const/4 v3, 0x3

    if-ne v0, v3, :cond_22

    goto :goto_49

    .line 264
    :cond_22
    if-nez v0, :cond_26

    .line 265
    iput-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 268
    :cond_26
    iget-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-nez v2, :cond_2b

    .line 269
    return-void

    .line 272
    :cond_2b
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_3f

    .line 274
    sget-object v2, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v3, "Current gesture exceeds the buffer capacity. The rest of the gesture will not be recorded."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 278
    return-void

    .line 281
    :cond_3f
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void

    .line 259
    :cond_49
    :goto_49
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 260
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 261
    return-void
.end method

.method private reset(Z)V
    .registers 5
    .param p1, "reinitializing"    # Z

    .line 201
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 202
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 203
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 207
    new-instance v2, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    if-nez p1, :cond_1f

    .line 210
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    .line 214
    :cond_1f
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v0, :cond_33

    .line 215
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 216
    if-nez p1, :cond_33

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->remove()V

    .line 218
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 222
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 223
    return-void
.end method


# virtual methods
.method getCurrentRequestId()Ljava/util/OptionalInt;
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-nez v0, :cond_10

    .line 127
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get requestId: Handwriting was not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0

    .line 130
    :cond_10
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method initializeHandwritingSpy(I)V
    .registers 11
    .param p1, "displayId"    # I

    .line 96
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    .line 97
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 99
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    if-nez v0, :cond_1a

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    .line 103
    :cond_1a
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing handwriting spy monitor for display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stylus-handwriting-event-receiver-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v3, v2}, Landroid/hardware/input/InputManagerInternal;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    .line 106
    .local v3, "channel":Landroid/view/InputChannel;
    const-string v4, "Failed to create input channel"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v4, :cond_5a

    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    goto :goto_60

    .line 109
    :cond_5a
    iget-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->getHandwritingSurfaceForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v4

    :goto_60
    nop

    .line 110
    .local v4, "surface":Landroid/view/SurfaceControl;
    if-nez v4, :cond_69

    .line 111
    const-string v1, "Failed to create input surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_69
    new-instance v0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-direct {v0, v2, p1, v4, v3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;-><init>(Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 120
    new-instance v0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    .line 121
    invoke-virtual {v3}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v7

    new-instance v8, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 122
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 123
    return-void
.end method

.method isStylusGestureOngoing()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    return v0
.end method

.method reset()V
    .registers 2

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    .line 198
    return-void
.end method

.method startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    .registers 12
    .param p1, "requestId"    # I
    .param p2, "imePid"    # I
    .param p3, "imeUid"    # I
    .param p4, "focusedWindowToken"    # Landroid/os/IBinder;

    .line 148
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 149
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start handwriting session: Handwriting was not initialized."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object v1

    .line 152
    :cond_d
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    if-eq p1, v0, :cond_2a

    .line 153
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start handwriting session: Invalid request id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 156
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_ba

    .line 160
    :cond_38
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const-string v2, "Handwriting session was already transferred to IME."

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 163
    .local v0, "downEvent":Landroid/view/MotionEvent;
    nop

    .line 164
    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 165
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 164
    invoke-virtual {v3, p4, v4, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->isPointInsideWindow(Landroid/os/IBinder;IFF)Z

    move-result v3

    if-nez v3, :cond_63

    .line 166
    sget-object v2, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start handwriting session: Stylus gesture did not start inside the focused window."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v1

    .line 170
    :cond_63
    sget-object v3, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting handwriting session in display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iget-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManagerInternal;->pilferPointers(Landroid/os/IBinder;)V

    .line 175
    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v3}, Landroid/view/InputEventReceiver;->dispose()V

    .line 176
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 177
    iput-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 179
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->isIntercepting()Z

    move-result v2

    if-nez v2, :cond_b2

    .line 183
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->startIntercepting(II)V

    .line 185
    new-instance v2, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    iget-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession-IA;)V

    return-object v2

    .line 180
    :cond_b2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Handwriting surface should not be already intercepting."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    .end local v0    # "downEvent":Landroid/view/MotionEvent;
    :cond_ba
    :goto_ba
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start handwriting session: No stylus gesture is being recorded."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v1
.end method
