.class Landroid/media/AudioManager$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 10608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10611
    if-eqz p3, :cond_a

    .line 10612
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    goto :goto_e

    .line 10615
    :cond_a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 10619
    :goto_e
    if-eqz p3, :cond_18

    .line 10621
    new-instance v0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;

    invoke-direct {v0, p0, p3, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V

    iput-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1b

    .line 10645
    :cond_18
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 10647
    :goto_1b
    return-void
.end method


# virtual methods
.method greylist-max-o getHandler()Landroid/os/Handler;
    .registers 2

    .line 10650
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
