.class Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;
.super Ljava/lang/Object;
.source "UiAutomation.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mGenerationId:I

.field final synthetic blacklist val$generationId:I

.field final synthetic blacklist val$this$0:Landroid/app/UiAutomation;


# direct methods
.method constructor blacklist <init>(Landroid/app/UiAutomation;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1954
    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    iput p2, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$generationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1955
    iget p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$generationId:I

    iput p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->mGenerationId:I

    return-void
.end method

.method private blacklist isGenerationChangedLocked()Z
    .registers 3

    .line 1963
    iget v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->mGenerationId:I

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmGenerationId(Landroid/app/UiAutomation;)I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 2

    .line 2011
    return-void
.end method

.method public blacklist init(ILandroid/os/IBinder;)V
    .registers 5

    .line 1976
    iget-object p2, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {p2}, Landroid/app/UiAutomation;->-$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1977
    :try_start_7
    invoke-direct {p0}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->isGenerationChangedLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1981
    monitor-exit p2

    return-void

    .line 1984
    :cond_f
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/app/UiAutomation;->-$$Nest$fputmConnectionState(Landroid/app/UiAutomation;I)V

    .line 1985
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0, p1}, Landroid/app/UiAutomation;->-$$Nest$fputmConnectionId(Landroid/app/UiAutomation;I)V

    .line 1986
    iget-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {p1}, Landroid/app/UiAutomation;->-$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1987
    monitor-exit p2
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_45

    .line 1988
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_44

    .line 1989
    invoke-static {}, Landroid/app/UiAutomation;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Init "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_44
    return-void

    .line 1987
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit p2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public blacklist onAccessibilityButtonAvailabilityChanged(Z)V
    .registers 2

    .line 2108
    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .registers 2

    .line 2103
    return-void
.end method

.method public blacklist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8

    .line 2042
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->-$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2043
    :try_start_7
    invoke-direct {p0}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->isGenerationChangedLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2050
    monitor-exit v0

    return-void

    .line 2054
    :cond_f
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    iget-object v2, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v2}, Landroid/app/UiAutomation;->-$$Nest$fgetmLastEventTimeMillis(Landroid/app/UiAutomation;)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/app/UiAutomation;->-$$Nest$fputmLastEventTimeMillis(Landroid/app/UiAutomation;J)V

    .line 2055
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmCurrentEventWatchersCount(Landroid/app/UiAutomation;)I

    move-result v1

    if-lez v1, :cond_37

    .line 2056
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmEventQueue(Landroid/app/UiAutomation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    :cond_37
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2059
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmOnAccessibilityEventListener(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;

    move-result-object v1

    .line 2060
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_60

    .line 2061
    if-eqz v1, :cond_5f

    .line 2063
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->-$$Nest$fgetmLocalCallbackHandler(Landroid/app/UiAutomation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1$$ExternalSyntheticLambda0;-><init>()V

    .line 2065
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2063
    invoke-static {v2, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2067
    :cond_5f
    return-void

    .line 2060
    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public blacklist onFingerprintCapturingGesturesChanged(Z)V
    .registers 2

    .line 2093
    return-void
.end method

.method public blacklist onFingerprintGesture(I)V
    .registers 2

    .line 2098
    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 2

    .line 2022
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onInterrupt()V
    .registers 1

    .line 2001
    return-void
.end method

.method public blacklist onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 2071
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    .line 2078
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 2027
    return-void
.end method

.method public blacklist onPerformGestureResult(IZ)V
    .registers 3

    .line 2088
    return-void
.end method

.method public blacklist onServiceConnected()V
    .registers 1

    .line 1996
    return-void
.end method

.method public blacklist onSoftKeyboardShowModeChanged(I)V
    .registers 2

    .line 2083
    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .registers 1

    .line 2006
    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .registers 3

    .line 2032
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    .line 2017
    return-void
.end method
