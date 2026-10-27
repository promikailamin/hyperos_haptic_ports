.class Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;
.super Landroid/view/InputEventReceiver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1068
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 5

    .line 1071
    nop

    .line 1073
    const/4 v0, 0x0

    :try_start_2
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_26

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 1076
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_2a

    if-nez v2, :cond_13

    .line 1085
    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1079
    return-void

    .line 1081
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-static {v2, v1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->-$$Nest$mdeliverStylusHandwritingMotionEvent(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/MotionEvent;)V

    .line 1082
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mscheduleHandwritingSessionTimeout(Landroid/inputmethodservice/InputMethodService;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2a

    .line 1083
    nop

    .line 1085
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1086
    nop

    .line 1087
    return-void

    .line 1085
    :cond_26
    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1074
    return-void

    .line 1085
    :catchall_2a
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1086
    throw v1
.end method
