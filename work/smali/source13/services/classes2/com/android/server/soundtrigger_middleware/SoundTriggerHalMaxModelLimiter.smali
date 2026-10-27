.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;
.super Ljava/lang/Object;
.source "SoundTriggerHalMaxModelLimiter.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field private mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

.field private final mMaxModels:I

.field private mNumLoadedModels:I


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;I)V
    .registers 4
    .param p1, "delegate"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .param p2, "maxModels"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 47
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 48
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    .line 49
    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    .line 59
    return-void
.end method

.method public flushCallbacks()V
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->flushCallbacks()V

    .line 167
    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 3
    .param p1, "modelHandle"    # I

    .line 131
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V

    .line 132
    return-void
.end method

.method public getModelParameter(II)I
    .registers 4
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result v0

    return v0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v0

    return-object v0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 151
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 152
    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6
    .param p1, "soundModel"    # Landroid/media/soundtrigger/PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_15

    .line 91
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result v0

    .line 92
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 93
    monitor-exit p0

    return v0

    .line 89
    .end local v0    # "result":I
    :cond_15
    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {v0, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;
    .end local p1    # "soundModel":Landroid/media/soundtrigger/PhraseSoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    throw v0

    .line 94
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;
    .restart local p1    # "soundModel":Landroid/media/soundtrigger/PhraseSoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6
    .param p1, "soundModel"    # Landroid/media/soundtrigger/SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_15

    .line 78
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result v0

    .line 79
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 80
    monitor-exit p0

    return v0

    .line 76
    .end local v0    # "result":I
    :cond_15
    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {v0, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;
    .end local p1    # "soundModel":Landroid/media/soundtrigger/SoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    throw v0

    .line 81
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;
    .restart local p1    # "soundModel":Landroid/media/soundtrigger/SoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 4
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 146
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v0

    return-object v0
.end method

.method public reboot()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    .line 54
    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 68
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 69
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    .line 70
    return-void
.end method

.method public setModelParameter(III)V
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 141
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V

    .line 142
    return-void
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "deviceHandle"    # I
    .param p3, "ioHandle"    # I
    .param p4, "config"    # Landroid/media/soundtrigger/RecognitionConfig;

    .line 126
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 127
    return-void
.end method

.method public stopRecognition(I)V
    .registers 3
    .param p1, "modelHandle"    # I

    .line 120
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 121
    return-void
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 156
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 157
    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 6
    .param p1, "modelHandle"    # I

    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 102
    .local v0, "wasAtMaxCapacity":Z
    :goto_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2a

    .line 104
    :try_start_10
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1e

    .line 110
    nop

    .line 111
    if-eqz v0, :cond_1d

    .line 114
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    .line 116
    :cond_1d
    return-void

    .line 105
    :catch_1e
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    monitor-enter p0

    .line 107
    :try_start_20
    iget v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 108
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_27

    .line 109
    throw v1

    .line 108
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2

    .line 102
    .end local v0    # "wasAtMaxCapacity":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method
