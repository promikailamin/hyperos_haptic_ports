.class final Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;
.super Landroid/os/Handler;
.source "BsGamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/BsGamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "onForceTouchEventListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_FORCE_TOUCH_EVENT:I


# instance fields
.field public final blacklist mListener:Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;


# direct methods
.method public constructor blacklist <init>(Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 333
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    iput-object p1, p0, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;->mListener:Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;

    .line 335
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 344
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    goto :goto_f

    .line 346
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 347
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;->mListener:Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;

    invoke-interface {v1, v0}, Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;->onForceTouchEvent(Landroid/view/MotionEvent;)V

    .line 350
    .end local v0    # "event":Landroid/view/MotionEvent;
    :goto_f
    return-void

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist sendForceTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 339
    return-void
.end method
