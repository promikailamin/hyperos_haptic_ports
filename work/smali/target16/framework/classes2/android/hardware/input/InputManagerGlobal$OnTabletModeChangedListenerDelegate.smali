.class final Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnTabletModeChangedListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_TABLET_MODE_CHANGED:I


# instance fields
.field public final blacklist mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .registers 3

    .line 574
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_b
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 575
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 576
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 588
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_25

    .line 589
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 590
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 591
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 592
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    invoke-interface {v2, v0, v1, p1}, Landroid/hardware/input/InputManager$OnTabletModeChangedListener;->onTabletModeChanged(JZ)V

    .line 594
    :cond_25
    return-void
.end method

.method public blacklist sendTabletModeChanged(JZ)V
    .registers 6

    .line 579
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 580
    long-to-int v1, p1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 581
    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 582
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 583
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 584
    return-void
.end method
