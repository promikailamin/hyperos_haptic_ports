.class final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "SoundTriggerMiddlewareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModuleService"
.end annotation


# instance fields
.field private final mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# direct methods
.method private constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .registers 2
    .param p1, "delegate"    # Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 138
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 211
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    .line 212
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 213
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_e
    return-void

    .line 210
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw v1
.end method

.method public forceRecognitionEvent(I)V
    .registers 5
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 181
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    .line 182
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 183
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_e
    return-void

    .line 180
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw v1
.end method

.method public getModelParameter(II)I
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 196
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 197
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 196
    :cond_f
    return v1

    .line 195
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw v1
.end method

.method public loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .registers 5
    .param p1, "model"    # Landroid/media/soundtrigger/SoundModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 145
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 146
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 145
    :cond_f
    return v1

    .line 144
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw v1
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .registers 5
    .param p1, "model"    # Landroid/media/soundtrigger/PhraseSoundModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 152
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 153
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 152
    :cond_f
    return v1

    .line 151
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw v1
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 204
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 205
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 204
    :cond_f
    return-object v1

    .line 203
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw v1
.end method

.method public setModelParameter(III)V
    .registers 7
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 189
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    .line 190
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 191
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_e
    return-void

    .line 188
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw v1
.end method

.method public startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/media/soundtrigger/RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 167
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    .line 168
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 169
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_e
    return-void

    .line 166
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw v1
.end method

.method public stopRecognition(I)V
    .registers 5
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 174
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    .line 175
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 176
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_e
    return-void

    .line 173
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw v1
.end method

.method public unloadModel(I)V
    .registers 5
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 159
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    .line 160
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 161
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_e
    return-void

    .line 158
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw v1
.end method
