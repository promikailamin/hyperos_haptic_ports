.class public Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;
.super Landroid/os/Handler;
.source "SingleKeyGestureDetector.java"


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/os/Looper;)V
    .registers 3

    .line 534
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 539
    iget p0, p1, Landroid/os/Message;->what:I

    const-string v0, "Active rule or associated event is null"

    const-string v1, "SingleKeyGesture"

    if-eqz p0, :cond_37

    const/4 v2, 0x1

    if-eq p0, v2, :cond_37

    const/4 v2, 0x2

    if-eq p0, v2, :cond_37

    const/4 v2, 0x3

    if-eq p0, v2, :cond_12

    return-void

    .line 541
    :cond_12
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;

    .line 542
    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->-$$Nest$fgetrule(Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->-$$Nest$fgetevent(Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;)Landroid/view/KeyEvent;

    move-result-object p1

    if-nez p1, :cond_23

    goto :goto_33

    .line 550
    :cond_23
    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->-$$Nest$fgetrule(Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->-$$Nest$fgetpressCount(Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;)I

    move-result v0

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->-$$Nest$fgetevent(Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;)Landroid/view/KeyEvent;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(ILandroid/view/KeyEvent;)V

    return-void

    .line 543
    :cond_33
    :goto_33
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 556
    :cond_37
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    .line 557
    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->-$$Nest$fgetrule(Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->-$$Nest$fgetevent(Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;)Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p1

    if-nez p1, :cond_48

    goto :goto_54

    .line 564
    :cond_48
    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->-$$Nest$fgetrule(Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->-$$Nest$fgetevent(Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;)Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V

    return-void

    .line 558
    :cond_54
    :goto_54
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
