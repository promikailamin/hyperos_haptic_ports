.class final Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub;
.super Landroid/media/IPreferredMixerAttributesDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferredMixerAttributesDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 10238
    iput-object p1, p0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchPrefMixerAttributesChanged$0(Landroid/media/AudioAttributes;Landroid/media/AudioDeviceInfo;Landroid/media/AudioMixerAttributes;Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;)V
    .registers 4

    .line 10268
    invoke-interface {p3, p0, p1, p2}, Landroid/media/AudioManager$OnPreferredMixerAttributesChangedListener;->onPreferredMixerAttributesChanged(Landroid/media/AudioAttributes;Landroid/media/AudioDeviceInfo;Landroid/media/AudioMixerAttributes;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchPrefMixerAttributesChanged(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)V
    .registers 6

    .line 10261
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 10262
    if-nez v0, :cond_26

    .line 10263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Drop preferred mixer attributes changed as the device("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is disconnected"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10265
    return-void

    .line 10267
    :cond_26
    iget-object p2, p0, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {p2}, Landroid/media/AudioManager;->-$$Nest$fgetmPrefMixerAttributesListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object p2

    new-instance v1, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p3}, Landroid/media/AudioManager$PreferredMixerAttributesDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioDeviceInfo;Landroid/media/AudioMixerAttributes;)V

    invoke-virtual {p2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 10270
    return-void
.end method

.method public blacklist register(Z)V
    .registers 2

    .line 10245
    if-eqz p1, :cond_a

    .line 10246
    :try_start_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/IAudioService;->registerPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    goto :goto_11

    .line 10248
    :cond_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/IAudioService;->unregisterPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 10252
    :goto_11
    goto :goto_16

    .line 10250
    :catch_12
    move-exception p1

    .line 10251
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10253
    :goto_16
    return-void
.end method
