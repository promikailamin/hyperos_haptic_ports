.class public Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# instance fields
.field public final mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

.field public final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/hardware/display/IBrightnessListener;Landroid/os/Handler;)V
    .registers 4

    .line 719
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 720
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 721
    iput-object p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .registers 2

    const/4 v0, 0x0

    .line 749
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDisplayResumed()V
    .registers 2

    const/4 v0, 0x1

    .line 753
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDisplayStopped()V
    .registers 2

    const/4 v0, 0x2

    .line 762
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchRequestedBrightnessChanged(F)V
    .registers 3

    const/4 v0, 0x3

    .line 757
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 758
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 727
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_1d

    .line 738
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    if-eqz p0, :cond_1d

    .line 739
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/display/IBrightnessListener;->onBrightnessChanged(F)V

    :cond_1d
    :goto_1d
    return-void

    .line 735
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V

    return-void

    .line 732
    :cond_24
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    return-void

    .line 729
    :cond_2a
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p0

    .line 744
    const-string p1, "VirtualDisplayAdapter"

    const-string v0, "Failed to notify listener of virtual display event."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
