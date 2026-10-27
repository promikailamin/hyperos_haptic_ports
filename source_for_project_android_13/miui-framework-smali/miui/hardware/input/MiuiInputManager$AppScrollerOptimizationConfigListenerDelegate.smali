.class final Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;
.super Landroid/os/Handler;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/MiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppScrollerOptimizationConfigListenerDelegate"
.end annotation


# static fields
.field static final blacklist MSG_CONFIG_CHANGED:I = 0x1


# instance fields
.field public final blacklist mListener:Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;


# direct methods
.method private constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 866
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 867
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;

    .line 868
    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;Landroid/os/Handler;Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;-><init>(Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 872
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    goto :goto_11

    .line 874
    :pswitch_6
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;

    if-eqz v0, :cond_11

    .line 875
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;->onScrollerOptimizationConfig([Ljava/lang/String;)V

    .line 881
    :cond_11
    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
