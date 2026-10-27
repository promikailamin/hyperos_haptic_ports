.class final Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;
.super Landroid/os/Handler;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/MiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceShareStateListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_SOCKET_BROKEN:I = 0x1


# instance fields
.field private final blacklist mListener:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;


# direct methods
.method public constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 704
    if-nez p2, :cond_7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 705
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;

    .line 706
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 710
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 711
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;

    invoke-interface {v0}, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;->onSocketBroken()V

    .line 713
    :cond_a
    return-void
.end method
