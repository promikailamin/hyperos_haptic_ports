.class final Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;
.super Landroid/os/Handler;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/MiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnMotionEventListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_MOTION_EVENT:I


# instance fields
.field public final blacklist mListener:Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;


# direct methods
.method public constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 900
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 901
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;

    .line 902
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 906
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 907
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 909
    :cond_d
    return-void
.end method
