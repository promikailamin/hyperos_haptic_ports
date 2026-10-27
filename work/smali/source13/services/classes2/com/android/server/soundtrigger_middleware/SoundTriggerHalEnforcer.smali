.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHalEnforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    }
.end annotation


# static fields
.field private static final INVALID_NUM_PHRASES_STATUS:I = 0x1001

.field private static final TAG:Ljava/lang/String; = "SoundTriggerHalEnforcer"


# instance fields
.field private final mModelStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V
    .registers 3
    .param p1, "underlying"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 60
    return-void
.end method

.method private handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .registers 5
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 215
    instance-of v0, p1, Lcom/android/server/soundtrigger_middleware/HalException;

    const-string v1, "SoundTriggerHalEnforcer"

    if-eqz v0, :cond_15

    .line 216
    move-object v0, p1

    check-cast v0, Lcom/android/server/soundtrigger_middleware/HalException;

    iget v0, v0, Lcom/android/server/soundtrigger_middleware/HalException;->errorCode:I

    const/16 v2, -0x1001

    if-ne v0, v2, :cond_15

    .line 217
    const-string v0, "errorCode is INVALID_NUM_PHRASES_STATUS return"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object p1

    .line 221
    :cond_15
    instance-of v0, p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    if-nez v0, :cond_36

    .line 224
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_2d

    .line 226
    const-string v0, "HAL died"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw v0

    .line 229
    :cond_2d
    const-string v0, "Exception caught from HAL, rebooting HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 231
    throw p1

    .line 222
    :cond_36
    throw p1
.end method


# virtual methods
.method public detach()V
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    .line 242
    return-void
.end method

.method public flushCallbacks()V
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->flushCallbacks()V

    .line 212
    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_7

    .line 164
    nop

    .line 165
    return-void

    .line 162
    :catch_7
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getModelParameter(II)I
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 171
    :catch_7
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 66
    :catch_7
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 196
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 197
    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 8
    .param p1, "soundModel"    # Landroid/media/soundtrigger/PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer-IA;)V

    invoke-interface {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result v1

    .line 100
    .local v1, "handle":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v0

    return v1

    .line 102
    .end local v1    # "handle":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .end local p1    # "soundModel":Landroid/media/soundtrigger/PhraseSoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    :try_start_1e
    throw v1
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 103
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .restart local p1    # "soundModel":Landroid/media/soundtrigger/PhraseSoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    :catch_1f
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 8
    .param p1, "soundModel"    # Landroid/media/soundtrigger/SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer-IA;)V

    invoke-interface {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result v1

    .line 86
    .local v1, "handle":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v0

    return v1

    .line 88
    .end local v1    # "handle":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .end local p1    # "soundModel":Landroid/media/soundtrigger/SoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    :try_start_1e
    throw v1
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 89
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .restart local p1    # "soundModel":Landroid/media/soundtrigger/SoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    :catch_1f
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 189
    :catch_7
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reboot()V
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    .line 237
    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_7

    .line 77
    nop

    .line 78
    return-void

    .line 75
    :catch_7
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setModelParameter(III)V
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_7

    .line 182
    nop

    .line 183
    return-void

    .line 180
    :catch_7
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 9
    .param p1, "modelHandle"    # I
    .param p2, "deviceHandle"    # I
    .param p3, "ioHandle"    # I
    .param p4, "config"    # Landroid/media/soundtrigger/RecognitionConfig;

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_19

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 151
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v0

    .line 155
    nop

    .line 156
    return-void

    .line 152
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .end local p1    # "modelHandle":I
    .end local p2    # "deviceHandle":I
    .end local p3    # "ioHandle":I
    .end local p4    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    :try_start_18
    throw v1
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_19} :catch_19

    .line 153
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "deviceHandle":I
    .restart local p3    # "ioHandle":I
    .restart local p4    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    :catch_19
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopRecognition(I)V
    .registers 6
    .param p1, "modelHandle"    # I

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_2b

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->PENDING_STOP:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_28

    .line 134
    :try_start_f
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 135
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_17} :catch_2b

    .line 138
    :try_start_17
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v0

    .line 142
    nop

    .line 143
    return-void

    .line 139
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_25

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .end local p1    # "modelHandle":I
    :try_start_27
    throw v1
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_28} :catch_2b

    .line 133
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .restart local p1    # "modelHandle":I
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .end local p1    # "modelHandle":I
    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 140
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .restart local p1    # "modelHandle":I
    :catch_2b
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 201
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 202
    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 5
    .param p1, "modelHandle"    # I

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_17

    .line 118
    :try_start_8
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    .line 122
    nop

    .line 123
    return-void

    .line 119
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .end local p1    # "modelHandle":I
    :try_start_16
    throw v1
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_17} :catch_17

    .line 120
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
    .restart local p1    # "modelHandle":I
    :catch_17
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
