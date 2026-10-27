.class public Landroid/os/perfdebug/InputEventMonitor;
.super Ljava/lang/Object;
.source "InputEventMonitor.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/os/perfdebug/InputEventMonitor;
    .registers 1

    .line 22
    const-class v0, Landroid/os/perfdebug/InputEventMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/InputEventMonitor;

    return-object v0
.end method

.method public static blacklist newInputEventMonitor()Landroid/os/perfdebug/InputEventMonitor;
    .registers 1

    .line 17
    const-class v0, Landroid/os/perfdebug/InputEventMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/InputEventMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist markViewInterceptTouchEventBegin(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 38
    return-void
.end method

.method public blacklist markViewInterceptTouchEventEnd()V
    .registers 1

    .line 41
    return-void
.end method

.method public blacklist markViewTouchEventBegin(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 32
    return-void
.end method

.method public blacklist markViewTouchEventEnd()V
    .registers 1

    .line 35
    return-void
.end method

.method public blacklist monitorDispatchInputEvent(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 26
    return-void
.end method

.method public blacklist monitorDispatchKeyEventBegin(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 47
    return-void
.end method

.method public blacklist monitorDispatchKeyEventEnd(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 44
    return-void
.end method

.method public blacklist monitorDispatchKeyEventPreImeBegin(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 56
    return-void
.end method

.method public blacklist monitorDispatchKeyEventPreImeEnd(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public blacklist monitorDispatchPointerEventBegin(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 50
    return-void
.end method

.method public blacklist monitorDispatchPointerEventEnd(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 53
    return-void
.end method

.method public blacklist monitorFinishInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "inputEventReceiver"    # Landroid/view/InputEventReceiver;

    .line 29
    return-void
.end method
