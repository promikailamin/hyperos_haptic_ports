.class final Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;
.super Landroid/os/Handler;
.source "BsGamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/BsGamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "onGameKeyEventListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_GAME_KEY_EVENT:I


# instance fields
.field public final blacklist mListener:Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;


# direct methods
.method public constructor blacklist <init>(Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 460
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 461
    iput-object p1, p0, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;->mListener:Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;

    .line 462
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 471
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    goto :goto_f

    .line 473
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 474
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;->mListener:Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;

    invoke-interface {v1, v0}, Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;->onGameKeyEvent(Landroid/view/MotionEvent;)V

    .line 477
    .end local v0    # "event":Landroid/view/MotionEvent;
    :goto_f
    return-void

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist sendGameKeyEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 466
    return-void
.end method
