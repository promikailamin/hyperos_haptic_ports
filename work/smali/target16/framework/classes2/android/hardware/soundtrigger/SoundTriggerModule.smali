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
.method public constructor blacklist <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;)V
    .registers 7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 68
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-direct {v0, p0, p3, p4}, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    .line 70
    :try_start_c
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object p3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_37

    .line 71
    :try_start_10
    iget-object p4, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-interface {p1, p2, p5, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_2b

    .line 73
    if-eqz p3, :cond_1d

    :try_start_1a
    invoke-interface {p3}, Landroid/media/permission/SafeCloseable;->close()V

    .line 74
    :cond_1d
    iget-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_29} :catch_37

    .line 77
    nop

    .line 78
    return-void

    .line 70
    :catchall_2b
    move-exception p1

    if-eqz p3, :cond_36

    :try_start_2e
    invoke-interface {p3}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p2

    :try_start_33
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    throw p1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_37} :catch_37

    .line 75
    :catch_37
    move-exception p1

    .line 76
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public constructor blacklist <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V
    .registers 14

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 89
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    invoke-direct {v0, p0, p3, p4}, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    .line 92
    :try_start_c
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object p3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_3e

    .line 93
    :try_start_10
    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    move-object v0, p1

    move v1, p2

    move-object v2, p5

    move-object v3, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_30

    .line 97
    if-eqz p3, :cond_22

    :try_start_1f
    invoke-interface {p3}, Landroid/media/permission/SafeCloseable;->close()V

    .line 98
    :cond_22
    iget-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_3e

    .line 101
    nop

    .line 102
    return-void

    .line 92
    :catchall_30
    move-exception v0

    move-object p1, v0

    if-eqz p3, :cond_3d

    :try_start_34
    invoke-interface {p3}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3d

    :catchall_38
    move-exception v0

    move-object p2, v0

    :try_start_3a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw p1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 99
    :catch_3e
    move-exception v0

    move-object p1, v0

    .line 100
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public declared-synchronized greylist detach()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    if-eqz v0, :cond_19

    .line 120
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1c
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    .line 126
    :cond_19
    goto :goto_20

    .line 118
    :catchall_1a
    move-exception v0

    goto :goto_22

    .line 124
    :catch_1c
    move-exception v0

    .line 125
    :try_start_1d
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1a

    .line 127
    :goto_20
    monitor-exit p0

    return-void

    .line 118
    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1a

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 106
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 107
    return-void
.end method

.method public declared-synchronized blacklist getModelState(I)I
    .registers 3

    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 305
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 303
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 306
    :catch_b
    move-exception p1

    .line 307
    :try_start_c
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return p1

    .line 303
    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_9

    throw p1
.end method

.method public declared-synchronized blacklist getParameter(II)I
    .registers 4

    monitor-enter p0

    .line 351
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 352
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result p2

    .line 351
    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_f
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    .line 350
    :catchall_d
    move-exception p1

    goto :goto_15

    .line 353
    :catch_f
    move-exception p1

    .line 354
    :try_start_10
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 350
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    throw p1
.end method

.method public declared-synchronized greylist loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_1
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 152
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-static {p1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_86
    .catchall {:try_start_1 .. :try_end_c} :catchall_84

    .line 155
    :try_start_c
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result v0

    aput v0, p2, v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_29

    .line 160
    :try_start_14
    iget-object p2, p1, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_16} :catch_86
    .catchall {:try_start_14 .. :try_end_16} :catchall_84

    if-eqz p2, :cond_27

    .line 162
    :try_start_18
    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_86
    .catchall {:try_start_18 .. :try_end_1d} :catchall_84

    .line 165
    :goto_1d
    goto :goto_27

    .line 163
    :catch_1e
    move-exception p1

    .line 164
    :try_start_1f
    const-string p2, "SoundTriggerModule"

    const-string v0, "Failed to close file"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_86
    .catchall {:try_start_1f .. :try_end_26} :catchall_84

    goto :goto_1d

    .line 168
    :cond_27
    :goto_27
    monitor-exit p0

    return v1

    .line 160
    :catchall_29
    move-exception p2

    :try_start_2a
    iget-object v0, p1, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2c} :catch_86
    .catchall {:try_start_2a .. :try_end_2c} :catchall_84

    if-eqz v0, :cond_3c

    .line 162
    :try_start_2e
    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_34
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_86
    .catchall {:try_start_2e .. :try_end_33} :catchall_84

    .line 165
    goto :goto_3c

    .line 163
    :catch_34
    move-exception p1

    .line 164
    :try_start_35
    const-string v0, "SoundTriggerModule"

    const-string v1, "Failed to close file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_3c
    :goto_3c
    throw p2

    .line 170
    :cond_3d
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-eqz v0, :cond_80

    .line 171
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-static {p1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Landroid/media/soundtrigger/PhraseSoundModel;

    move-result-object p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_47} :catch_86
    .catchall {:try_start_35 .. :try_end_47} :catchall_84

    .line 174
    :try_start_47
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result v0

    aput v0, p2, v1
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_68

    .line 179
    :try_start_4f
    iget-object p2, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object p2, p2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_86
    .catchall {:try_start_4f .. :try_end_53} :catchall_84

    if-eqz p2, :cond_66

    .line 181
    :try_start_55
    iget-object p1, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5c} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5c} :catch_86
    .catchall {:try_start_55 .. :try_end_5c} :catchall_84

    .line 184
    :goto_5c
    goto :goto_66

    .line 182
    :catch_5d
    move-exception p1

    .line 183
    :try_start_5e
    const-string p2, "SoundTriggerModule"

    const-string v0, "Failed to close file"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_86
    .catchall {:try_start_5e .. :try_end_65} :catchall_84

    goto :goto_5c

    .line 187
    :cond_66
    :goto_66
    monitor-exit p0

    return v1

    .line 179
    :catchall_68
    move-exception p2

    :try_start_69
    iget-object v0, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v0, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6d} :catch_86
    .catchall {:try_start_69 .. :try_end_6d} :catchall_84

    if-eqz v0, :cond_7f

    .line 181
    :try_start_6f
    iget-object p1, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_86
    .catchall {:try_start_6f .. :try_end_76} :catchall_84

    .line 184
    goto :goto_7f

    .line 182
    :catch_77
    move-exception p1

    .line 183
    :try_start_78
    const-string v0, "SoundTriggerModule"

    const-string v1, "Failed to close file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_7f
    :goto_7f
    throw p2

    .line 189
    :cond_80
    sget p1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_86
    .catchall {:try_start_78 .. :try_end_82} :catchall_84

    monitor-exit p0

    return p1

    .line 150
    :catchall_84
    move-exception p1

    goto :goto_8d

    .line 190
    :catch_86
    move-exception p1

    .line 191
    :try_start_87
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result p1
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_84

    monitor-exit p0

    return p1

    .line 150
    :goto_8d
    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_84

    throw p1
.end method

.method public declared-synchronized blacklist queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 4

    monitor-enter p0

    .line 370
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 372
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result p2

    .line 370
    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiModelParameterRange(Landroid/media/soundtrigger/ModelParameterRange;)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    .line 369
    :catchall_11
    move-exception p1

    goto :goto_19

    .line 373
    :catch_13
    move-exception p1

    .line 374
    :try_start_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 369
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    throw p1
.end method

.method public declared-synchronized blacklist setParameter(III)I
    .registers 5

    monitor-enter p0

    .line 329
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 330
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlModelParameter(I)I

    move-result p2

    .line 329
    invoke-interface {v0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 331
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 328
    :catchall_d
    move-exception p1

    goto :goto_16

    .line 332
    :catch_f
    move-exception p1

    .line 333
    :try_start_10
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d

    monitor-exit p0

    return p1

    .line 328
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_d

    throw p1
.end method

.method public declared-synchronized greylist startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 244
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger/RecognitionConfig;

    move-result-object p2

    .line 243
    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 245
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 242
    :catchall_d
    move-exception p1

    goto :goto_16

    .line 246
    :catch_f
    move-exception p1

    .line 247
    :try_start_10
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d

    monitor-exit p0

    return p1

    .line 242
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_d

    throw p1
.end method

.method public declared-synchronized blacklist startRecognitionWithToken(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/os/IBinder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 258
    invoke-static {p2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger/RecognitionConfig;

    move-result-object p2

    .line 257
    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    .line 256
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized greylist stopRecognition(I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 280
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 278
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 281
    :catch_b
    move-exception p1

    .line 282
    :try_start_c
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return p1

    .line 278
    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_9

    throw p1
.end method

.method public declared-synchronized greylist unloadSoundModel(I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 213
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 211
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 214
    :catch_b
    move-exception p1

    .line 215
    :try_start_c
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    monitor-exit p0

    return p1

    .line 211
    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_9

    throw p1
.end method
