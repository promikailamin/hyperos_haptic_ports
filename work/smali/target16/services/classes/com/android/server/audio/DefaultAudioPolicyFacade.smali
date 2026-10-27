.class public Lcom/android/server/audio/DefaultAudioPolicyFacade;
.super Ljava/lang/Object;
.source "DefaultAudioPolicyFacade.java"

# interfaces
.implements Lcom/android/server/audio/AudioPolicyFacade;


# instance fields
.field public final mServiceHolder:Lcom/android/server/audio/ServiceHolder;


# direct methods
.method public static synthetic $r8$lambda$-AKBXD_jGFn8nzWEFdnCSYP_kCg(Ljava/lang/Runnable;Landroid/media/IAudioPolicyService;)V
    .registers 2

    .line 91
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$pChqcGzX0MLfsfJ880RTN3vNnNI(Landroid/media/IAudioPolicyService;)V
    .registers 1

    .line 51
    invoke-interface {p0}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/audio/ServiceHolder;

    new-instance v1, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v2, "media.audio_policy"

    invoke-direct {v0, v2, v1, p1}, Lcom/android/server/audio/ServiceHolder;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    .line 51
    new-instance p0, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/audio/ServiceHolder;->registerOnStartTask(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getPermissionController()Lcom/android/media/permission/INativePermissionController;
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    invoke-virtual {v0}, Lcom/android/server/audio/ServiceHolder;->checkService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/IAudioPolicyService;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 70
    :cond_c
    :try_start_c
    invoke-interface {v0}, Landroid/media/IAudioPolicyService;->getPermissionController()Lcom/android/media/permission/INativePermissionController;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/android/media/permission/INativePermissionController;

    .line 71
    invoke-interface {v2}, Lcom/android/media/permission/INativePermissionController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_1d

    return-object v2

    .line 74
    :catch_1d
    iget-object p0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    invoke-interface {v0}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public isHotwordStreamSupported(Z)Z
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    invoke-virtual {v0}, Lcom/android/server/audio/ServiceHolder;->waitForService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/IAudioPolicyService;

    .line 58
    :try_start_8
    invoke-interface {v0, p1}, Landroid/media/IAudioPolicyService;->isHotwordStreamSupported(Z)Z

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return p0

    .line 60
    :catch_d
    iget-object p0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    invoke-interface {v0}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    .line 61
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public isServiceAvailable()Z
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    invoke-virtual {p0}, Lcom/android/server/audio/ServiceHolder;->checkService()Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public registerOnStartTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 91
    iget-object p0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    new-instance v0, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/ServiceHolder;->registerOnStartTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setEnableHardening(Z)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    invoke-virtual {v0}, Lcom/android/server/audio/ServiceHolder;->waitForService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/IAudioPolicyService;

    .line 83
    :try_start_8
    invoke-interface {v0, p1}, Landroid/media/IAudioPolicyService;->setEnableHardening(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    .line 85
    :catch_c
    iget-object p0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    invoke-interface {v0}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    return-void
.end method
