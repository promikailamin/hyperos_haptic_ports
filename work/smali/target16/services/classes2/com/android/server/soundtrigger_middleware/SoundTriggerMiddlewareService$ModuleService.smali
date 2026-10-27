.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "SoundTriggerMiddlewareService.java"


# instance fields
.field public final mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# direct methods
.method public constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .registers 2

    .line 154
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    .line 226
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 227
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 228
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 226
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public forceRecognitionEvent(I)V
    .registers 3

    .line 196
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 197
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 198
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 196
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public getModelParameter(II)I
    .registers 4

    .line 211
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 212
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 213
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 211
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .registers 3

    .line 160
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 161
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 162
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 160
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .registers 3

    .line 167
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 168
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 169
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 167
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 4

    .line 219
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 220
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 221
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return-object p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 219
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public setModelParameter(III)V
    .registers 5

    .line 204
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 205
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 206
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 204
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;
    .registers 4

    .line 182
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 183
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 184
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return-object p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 182
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public stopRecognition(I)V
    .registers 3

    .line 189
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 190
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 191
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 189
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public unloadModel(I)V
    .registers 3

    .line 174
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 175
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 176
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 174
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method
