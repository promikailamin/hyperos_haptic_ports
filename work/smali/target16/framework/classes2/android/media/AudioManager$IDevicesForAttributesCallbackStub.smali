.class final Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;
.super Landroid/media/IDevicesForAttributesCallback$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IDevicesForAttributesCallbackStub"
.end annotation


# instance fields
.field blacklist mInfo:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$W02OkHjzJVPpLLk2SAkDvyu8TN4(Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;Landroid/media/AudioAttributes;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->lambda$onDevicesForAttributesChanged$0(Landroid/media/AudioAttributes;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 6597
    invoke-direct {p0}, Landroid/media/IDevicesForAttributesCallback$Stub;-><init>()V

    .line 6598
    new-instance v0, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v0, p1, p2}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->mInfo:Landroid/media/CallbackUtil$ListenerInfo;

    .line 6599
    return-void
.end method

.method private synthetic blacklist lambda$onDevicesForAttributesChanged$0(Landroid/media/AudioAttributes;Ljava/util/List;)V
    .registers 4

    .line 6618
    iget-object v0, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->mInfo:Landroid/media/CallbackUtil$ListenerInfo;

    iget-object v0, v0, Landroid/media/CallbackUtil$ListenerInfo;->mListener:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;->onDevicesForAttributesChanged(Landroid/media/AudioAttributes;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onDevicesForAttributesChanged(Landroid/media/AudioAttributes;ZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 6617
    iget-object p2, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->mInfo:Landroid/media/CallbackUtil$ListenerInfo;

    iget-object p2, p2, Landroid/media/CallbackUtil$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;Landroid/media/AudioAttributes;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6620
    return-void
.end method

.method public blacklist register(ZLandroid/media/AudioAttributes;)V
    .registers 3

    .line 6603
    if-eqz p1, :cond_a

    .line 6604
    :try_start_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    invoke-interface {p1, p2, p0}, Landroid/media/IAudioService;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Landroid/media/IDevicesForAttributesCallback;)V

    goto :goto_11

    .line 6606
    :cond_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/IAudioService;->removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_13

    .line 6610
    :goto_11
    nop

    .line 6611
    return-void

    .line 6608
    :catch_13
    move-exception p1

    .line 6609
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
