.class final Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;
.super Landroid/os/Handler;
.source "ShoulderKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/shoulderkey/ShoulderKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchMotionEventListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_TOUCH_MOTION_EVENT:I


# instance fields
.field public final blacklist mListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;


# direct methods
.method public constructor blacklist <init>(Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 280
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    iput-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;->mListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;

    .line 282
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    goto :goto_10

    .line 292
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 293
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;->mListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;

    invoke-interface {v1, v0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;->onTouchMotionEvent(Landroid/view/MotionEvent;)V

    .line 294
    nop

    .line 298
    .end local v0    # "event":Landroid/view/MotionEvent;
    :goto_10
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist sendTouchMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method
