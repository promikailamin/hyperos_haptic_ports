.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.super Ljava/lang/Object;
.source "SoundTriggerHw3Compat.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;
    }
.end annotation


# instance fields
.field private final mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

.field private final mRebootRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "rebootRunnable"    # Ljava/lang/Runnable;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 42
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mRebootRunnable:Ljava/lang/Runnable;

    .line 43
    return-void
.end method


# virtual methods
.method public detach()V
    .registers 1

    .line 196
    return-void
.end method

.method public flushCallbacks()V
    .registers 1

    .line 186
    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->forceRecognitionEvent(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_7
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getModelParameter(II)I
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0, p1, p2}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->getParameter(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 146
    :catch_7
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 49
    :catch_7
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 3

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 164
    :catch_b
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 175
    nop

    .line 176
    return-void

    .line 173
    :catch_c
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6
    .param p1, "soundModel"    # Landroid/media/soundtrigger/PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;

    invoke-direct {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {v0, p1, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 83
    :catch_c
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 85
    new-instance v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw v1

    .line 87
    :cond_18
    throw v0

    .line 81
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_19
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6
    .param p1, "soundModel"    # Landroid/media/soundtrigger/SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;

    invoke-direct {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {v0, p1, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 69
    :catch_c
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 71
    new-instance v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw v1

    .line 73
    :cond_18
    throw v0

    .line 67
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_19
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0, p1, p2}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 137
    :catch_7
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reboot()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mRebootRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 60
    nop

    .line 61
    return-void

    .line 58
    :catch_c
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setModelParameter(III)V
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->setParameter(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :catch_7
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "deviceHandle"    # I
    .param p3, "ioHandle"    # I
    .param p4, "config"    # Landroid/media/soundtrigger/RecognitionConfig;

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 112
    nop

    .line 113
    return-void

    .line 107
    :catch_7
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 109
    new-instance v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw v1

    .line 111
    :cond_13
    throw v0

    .line 105
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_14
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopRecognition(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->stopRecognition(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 121
    nop

    .line 122
    return-void

    .line 119
    :catch_7
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 180
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 181
    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->unloadSoundModel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 97
    nop

    .line 98
    return-void

    .line 95
    :catch_7
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
