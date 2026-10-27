.class public Landroid/hardware/soundtrigger/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_MODEL_UNLOADED:I = 0x4

.field private static final greylist-max-o EVENT_RECOGNITION:I = 0x1

.field private static final blacklist EVENT_RESOURCES_AVAILABLE:I = 0x3

.field private static final greylist-max-o EVENT_SERVICE_DIED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SoundTriggerModule"


# instance fields
.field private blacklist mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

.field private greylist-max-r mId:I

.field private blacklist mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# direct methods
.method constructor blacklist <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;)V
    .registers 9
    .param p1, "service"    # Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .param p2, "moduleId"    # I
    .param p3, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "originatorIdentity"    # Landroid/media/permission/Identity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 69
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-direct {v0, p0, p3, p4}, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    .line 71
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 72
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_10
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-interface {p1, p2, p5, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_2a

    .line 74
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 75
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_1d
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 76
    return-void

    .line 71
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_2a
    move-exception v1

    if-eqz v0, :cond_35

    :try_start_2d
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    throw v1
.end method

.method constructor blacklist <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)V
    .registers 10
    .param p1, "service"    # Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .param p2, "moduleId"    # I
    .param p3, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p6, "originatorIdentity"    # Landroid/media/permission/Identity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 87
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-direct {v0, p0, p3, p4}, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    .line 89
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 90
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_10
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-interface {p1, p2, p5, p6, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_2a

    .line 92
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 93
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_1d
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 94
    return-void

    .line 89
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_2a
    move-exception v1

    if-eqz v0, :cond_35

    :try_start_2d
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    throw v1
.end method


# virtual methods
.method public declared-synchronized greylist detach()V
    .registers 4

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    if-eqz v0, :cond_17

    .line 110
    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 111
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1a
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    .line 116
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    :cond_17
    goto :goto_1e

    .line 108
    :catchall_18
    move-exception v0

    goto :goto_20

    .line 114
    :catch_1a
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1b
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    monitor-exit p0

    return-void

    .line 108
    :goto_20
    monitor-exit p0

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 98
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 99
    return-void
.end method

.method public declared-synchronized blacklist getModelState(I)I
    .registers 4
    .param p1, "soundModelHandle"    # I

    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 277
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 275
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 278
    .restart local p1    # "soundModelHandle":I
    :catch_b
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return v1

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    :goto_12
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getParameter(II)I
    .registers 5
    .param p1, "soundModelHandle"    # I
    .param p2, "modelParam"    # I

    monitor-enter p0

    .line 323
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 324
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result v1

    .line 323
    invoke-interface {v0, p1, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_f
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    .line 322
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    :catchall_d
    move-exception p1

    goto :goto_15

    .line 325
    .restart local p1    # "soundModelHandle":I
    .restart local p2    # "modelParam":I
    :catch_f
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_10
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    :goto_15
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I
    .registers 8
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .param p2, "soundModelHandle"    # [I

    monitor-enter p0

    .line 139
    :try_start_1
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 140
    move-object v0, p1

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_8a
    .catchall {:try_start_1 .. :try_end_d} :catchall_88

    .line 143
    .local v0, "aidlModel":Landroid/media/soundtrigger/SoundModel;
    :try_start_d
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result v2

    aput v2, p2, v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_2a

    .line 148
    :try_start_15
    iget-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_8a
    .catchall {:try_start_15 .. :try_end_17} :catchall_88

    if-eqz v2, :cond_28

    .line 150
    :try_start_19
    iget-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_8a
    .catchall {:try_start_19 .. :try_end_1e} :catchall_88

    .line 153
    goto :goto_28

    .line 151
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    :catch_1f
    move-exception v2

    .line 152
    .local v2, "e":Ljava/io/IOException;
    :try_start_20
    const-string v3, "SoundTriggerModule"

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_8a
    .catchall {:try_start_20 .. :try_end_27} :catchall_88

    .line 153
    nop

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    :cond_28
    :goto_28
    monitor-exit p0

    return v1

    .line 148
    :catchall_2a
    move-exception v1

    :try_start_2b
    iget-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_8a
    .catchall {:try_start_2b .. :try_end_2d} :catchall_88

    if-eqz v2, :cond_3d

    .line 150
    :try_start_2f
    iget-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_8a
    .catchall {:try_start_2f .. :try_end_34} :catchall_88

    .line 153
    goto :goto_3d

    .line 151
    :catch_35
    move-exception v2

    .line 152
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_36
    const-string v3, "SoundTriggerModule"

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3d
    :goto_3d
    nop

    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local p2    # "soundModelHandle":[I
    throw v1

    .line 158
    .end local v0    # "aidlModel":Landroid/media/soundtrigger/SoundModel;
    .restart local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local p2    # "soundModelHandle":[I
    :cond_3f
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-eqz v0, :cond_84

    .line 159
    move-object v0, p1

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Landroid/media/soundtrigger/PhraseSoundModel;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4a} :catch_8a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_88

    .line 162
    .local v0, "aidlModel":Landroid/media/soundtrigger/PhraseSoundModel;
    :try_start_4a
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result v2

    aput v2, p2, v1
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_6b

    .line 167
    :try_start_52
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v2, v2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_8a
    .catchall {:try_start_52 .. :try_end_56} :catchall_88

    if-eqz v2, :cond_69

    .line 169
    :try_start_58
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v2, v2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5f} :catch_8a
    .catchall {:try_start_58 .. :try_end_5f} :catchall_88

    .line 172
    goto :goto_69

    .line 170
    :catch_60
    move-exception v2

    .line 171
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_61
    const-string v3, "SoundTriggerModule"

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_8a
    .catchall {:try_start_61 .. :try_end_68} :catchall_88

    .line 172
    nop

    .line 175
    .end local v2    # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    monitor-exit p0

    return v1

    .line 167
    :catchall_6b
    move-exception v1

    :try_start_6c
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v2, v2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_8a
    .catchall {:try_start_6c .. :try_end_70} :catchall_88

    if-eqz v2, :cond_82

    .line 169
    :try_start_72
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v2, v2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_8a
    .catchall {:try_start_72 .. :try_end_79} :catchall_88

    .line 172
    goto :goto_82

    .line 170
    :catch_7a
    move-exception v2

    .line 171
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7b
    const-string v3, "SoundTriggerModule"

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v2    # "e":Ljava/io/IOException;
    :cond_82
    :goto_82
    nop

    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local p2    # "soundModelHandle":[I
    throw v1

    .line 177
    .end local v0    # "aidlModel":Landroid/media/soundtrigger/PhraseSoundModel;
    .restart local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local p2    # "soundModelHandle":[I
    :cond_84
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_86} :catch_8a
    .catchall {:try_start_7b .. :try_end_86} :catchall_88

    monitor-exit p0

    return v0

    .line 138
    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local p2    # "soundModelHandle":[I
    :catchall_88
    move-exception p1

    goto :goto_91

    .line 178
    .restart local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local p2    # "soundModelHandle":[I
    :catch_8a
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8b
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_88

    monitor-exit p0

    return v1

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local p2    # "soundModelHandle":[I
    :goto_91
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 5
    .param p1, "soundModelHandle"    # I
    .param p2, "modelParam"    # I

    monitor-enter p0

    .line 342
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 344
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result v1

    .line 342
    invoke-interface {v0, p1, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiModelParameterRange(Landroid/media/soundtrigger/ModelParameterRange;)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 341
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    :catchall_11
    move-exception p1

    goto :goto_19

    .line 345
    .restart local p1    # "soundModelHandle":I
    .restart local p2    # "modelParam":I
    :catch_13
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_11

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    :goto_19
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setParameter(III)I
    .registers 6
    .param p1, "soundModelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    monitor-enter p0

    .line 301
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 302
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result v1

    .line 301
    invoke-interface {v0, p1, v1, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 303
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 300
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    :catchall_d
    move-exception p1

    goto :goto_16

    .line 304
    .restart local p1    # "soundModelHandle":I
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :catch_f
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d

    monitor-exit p0

    return v1

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    :goto_16
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 5
    .param p1, "soundModelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 228
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger/RecognitionConfig;

    move-result-object v1

    .line 227
    invoke-interface {v0, p1, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 229
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 226
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_d
    move-exception p1

    goto :goto_16

    .line 230
    .restart local p1    # "soundModelHandle":I
    .restart local p2    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_f
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d

    monitor-exit p0

    return v1

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    .end local p2    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :goto_16
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist stopRecognition(I)I
    .registers 4
    .param p1, "soundModelHandle"    # I

    monitor-enter p0

    .line 251
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 252
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 250
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 253
    .restart local p1    # "soundModelHandle":I
    :catch_b
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return v1

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    :goto_12
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist unloadSoundModel(I)I
    .registers 4
    .param p1, "soundModelHandle"    # I

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 199
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 197
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule;
    .end local p1    # "soundModelHandle":I
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 200
    .restart local p1    # "soundModelHandle":I
    :catch_b
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return v1

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "soundModelHandle":I
    :goto_12
    monitor-exit p0

    throw p1
.end method
