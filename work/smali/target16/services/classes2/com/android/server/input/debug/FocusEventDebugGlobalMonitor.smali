.class public Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;
.super Landroid/view/InputEventReceiver;
.source "FocusEventDebugGlobalMonitor.java"


# instance fields
.field public final mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;


# direct methods
.method public constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;Lcom/android/server/input/InputManagerService;)V
    .registers 5

    .line 34
    const-string v0, "FocusEventDebugGlobalMonitor"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/input/InputManagerService;->monitorFocusInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p2

    .line 35
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 34
    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;->mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 5

    const/4 v0, 0x0

    .line 42
    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_10

    .line 43
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;->mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/input/debug/FocusEventDebugView;->reportMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v1

    goto :goto_14

    .line 46
    :cond_10
    :goto_10
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :goto_14
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 47
    throw v1
.end method
