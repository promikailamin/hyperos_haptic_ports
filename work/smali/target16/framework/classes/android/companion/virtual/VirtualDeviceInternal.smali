.class public Landroid/companion/virtual/VirtualDeviceInternal;
.super Ljava/lang/Object;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
    }
.end annotation


# instance fields
.field private final blacklist mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field private final blacklist mActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;",
            "Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mActivityListenersLock:Ljava/lang/Object;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntentInterceptorListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;",
            "Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntentInterceptorListenersLock:Ljava/lang/Object;

.field private final blacklist mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

.field private final blacklist mSoundEffectListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;",
            "Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSoundEffectListenersLock:Ljava/lang/Object;

.field private blacklist mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method public static synthetic blacklist $r8$lambda$RDTvc_Ej4vCvy7TcyDM5Fc-Xy7Y(Landroid/companion/virtual/VirtualDeviceInternal;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->lambda$createVirtualAudioDevice$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivityListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundEffectListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundEffectListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$1;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$1;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 186
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$2;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$2;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 211
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    .line 212
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v5, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    iget-object v6, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 212
    move-object v0, p1

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/companion/virtual/IVirtualDeviceManager;->createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 219
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V
    .registers 4

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$1;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$1;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 186
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$2;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$2;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 225
    :try_start_43
    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    invoke-interface {p1, p2, v0}, Landroid/companion/virtual/IVirtualDevice;->setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4c} :catch_4e

    .line 228
    nop

    .line 229
    return-void

    .line 226
    :catch_4e
    move-exception p1

    .line 227
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private synthetic blacklist lambda$createVirtualAudioDevice$0()V
    .registers 2

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    return-void
.end method


# virtual methods
.method blacklist addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 5

    .line 532
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    .line 533
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V

    .line 534
    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    monitor-enter p1

    .line 535
    :try_start_14
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    monitor-exit p1

    .line 537
    return-void

    .line 536
    :catchall_1b
    move-exception p2

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p2
.end method

.method blacklist addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 3

    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 355
    nop

    .line 356
    return-void

    .line 353
    :catch_7
    move-exception p1

    .line 354
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 6

    .line 547
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;

    .line 548
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 549
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;Landroid/companion/virtual/VirtualDeviceInternal-IA;)V

    .line 550
    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    monitor-enter p1

    .line 551
    :try_start_15
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    monitor-exit p1

    .line 553
    return-void

    .line 552
    :catchall_1c
    move-exception p2

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p2
.end method

.method blacklist close()V
    .registers 2

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_13

    .line 324
    nop

    .line 325
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-eqz v0, :cond_12

    .line 326
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioDevice;->close()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    .line 329
    :cond_12
    return-void

    .line 322
    :catch_13
    move-exception v0

    .line 323
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist createContext()Landroid/content/Context;
    .registers 3

    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 250
    :catch_d
    move-exception v0

    .line 251
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;
    .registers 12

    .line 478
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-nez v0, :cond_35

    .line 483
    :try_start_4
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getDevicePolicy(I)I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 484
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    move-object v2, v0

    goto :goto_1c

    .line 485
    :cond_19
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    move-object v2, v0

    .line 486
    :goto_1c
    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioDevice;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    new-instance v7, Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/companion/virtual/audio/VirtualAudioDevice;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;)V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2d} :catch_2e

    .line 490
    goto :goto_35

    .line 488
    :catch_2e
    move-exception v0

    move-object p1, v0

    .line 489
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 492
    :cond_35
    :goto_35
    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    return-object p1
.end method

.method blacklist createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;
    .registers 5

    .line 498
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 499
    new-instance v0, Landroid/companion/virtual/camera/VirtualCamera;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v2, p1}, Landroid/companion/virtual/IVirtualDevice;->getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Landroid/companion/virtual/camera/VirtualCamera;-><init>(Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 501
    :catch_13
    move-exception p1

    .line 502
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 5

    .line 306
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v0, p3, p2}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 310
    :try_start_5
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p2, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I

    move-result p2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_15

    .line 313
    nop

    .line 314
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p3

    .line 315
    invoke-virtual {p3, p1, v0, p2}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1

    .line 311
    :catch_15
    move-exception p1

    .line 312
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;
    .registers 5

    .line 388
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualDpad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object v0

    .line 391
    new-instance v1, Landroid/hardware/input/VirtualDpad;

    invoke-direct {v1, p1, v0}, Landroid/hardware/input/VirtualDpad;-><init>(Landroid/hardware/input/VirtualDpadConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 392
    :catch_28
    move-exception p1

    .line 393
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;
    .registers 5

    .line 400
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object v0

    .line 403
    new-instance v1, Landroid/hardware/input/VirtualKeyboard;

    invoke-direct {v1, p1, v0}, Landroid/hardware/input/VirtualKeyboard;-><init>(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 404
    :catch_28
    move-exception p1

    .line 405
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;
    .registers 5

    .line 412
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualMouse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 413
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object v0

    .line 415
    new-instance v1, Landroid/hardware/input/VirtualMouse;

    invoke-direct {v1, p1, v0}, Landroid/hardware/input/VirtualMouse;-><init>(Landroid/hardware/input/VirtualMouseConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 416
    :catch_28
    move-exception p1

    .line 417
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;
    .registers 5

    .line 462
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualNavigationTouchpad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 464
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object v0

    .line 467
    new-instance v1, Landroid/hardware/input/VirtualNavigationTouchpad;

    invoke-direct {v1, p1, v0}, Landroid/hardware/input/VirtualNavigationTouchpad;-><init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 468
    :catch_28
    move-exception p1

    .line 469
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;
    .registers 5

    .line 449
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualRotaryEncoder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object v0

    .line 452
    new-instance v1, Landroid/hardware/input/VirtualRotaryEncoder;

    invoke-direct {v1, p1, v0}, Landroid/hardware/input/VirtualRotaryEncoder;-><init>(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 453
    :catch_28
    move-exception p1

    .line 454
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;
    .registers 5

    .line 437
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualStylus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 438
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object v0

    .line 440
    new-instance v1, Landroid/hardware/input/VirtualStylus;

    invoke-direct {v1, p1, v0}, Landroid/hardware/input/VirtualStylus;-><init>(Landroid/hardware/input/VirtualStylusConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 441
    :catch_28
    move-exception p1

    .line 442
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;
    .registers 5

    .line 425
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualTouchscreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object v0

    .line 428
    new-instance v1, Landroid/hardware/input/VirtualTouchscreen;

    invoke-direct {v1, p1, v0}, Landroid/hardware/input/VirtualTouchscreen;-><init>(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 429
    :catch_28
    move-exception p1

    .line 430
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist getDeviceId()I
    .registers 2

    .line 233
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 234
    :catch_7
    move-exception v0

    .line 235
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist getPersistentDeviceId()Ljava/lang/String;
    .registers 2

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 242
    :catch_7
    move-exception v0

    .line 243
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist getVirtualSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getVirtualSensorList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 259
    :catch_7
    move-exception v0

    .line 260
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist goToSleep()V
    .registers 2

    .line 266
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->goToSleep()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catch_7
    move-exception v0

    .line 268
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 9

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$3;

    new-instance v2, Landroid/os/Handler;

    .line 289
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal$3;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 286
    invoke-interface {v0, p1, p2, v1}, Landroid/companion/virtual/IVirtualDevice;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 298
    goto :goto_18

    .line 296
    :catch_14
    move-exception p1

    .line 297
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 299
    :goto_18
    return-void
.end method

.method blacklist registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 6

    .line 566
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;Landroid/companion/virtual/VirtualDeviceInternal-IA;)V

    .line 572
    :try_start_f
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p2, v0, p1}, Landroid/companion/virtual/IVirtualDevice;->registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_22

    .line 575
    nop

    .line 576
    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    monitor-enter p1

    .line 577
    :try_start_18
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    monitor-exit p1

    .line 579
    return-void

    .line 578
    :catchall_1f
    move-exception p2

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p2

    .line 573
    :catch_22
    move-exception p1

    .line 574
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 4

    .line 540
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method blacklist removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 3

    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 363
    nop

    .line 364
    return-void

    .line 361
    :catch_7
    move-exception p1

    .line 362
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 4

    .line 557
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    monitor-exit v0

    .line 560
    return-void

    .line 559
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method blacklist setDevicePolicy(II)V
    .registers 5

    .line 333
    packed-switch p1, :pswitch_data_30

    .line 340
    :pswitch_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device policy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cannot be changed at runtime. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 338
    :pswitch_22
    nop

    .line 344
    :try_start_23
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDevice;->setDevicePolicy(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_2a
    move-exception p1

    .line 346
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_22
    .end packed-switch
.end method

.method blacklist setDevicePolicyForDisplay(III)V
    .registers 5

    .line 369
    packed-switch p2, :pswitch_data_30

    .line 374
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device policy "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " cannot be changed for a specific display. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :pswitch_22
    nop

    .line 379
    :try_start_23
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/IVirtualDevice;->setDevicePolicyForDisplay(III)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 382
    nop

    .line 383
    return-void

    .line 380
    :catch_2a
    move-exception p1

    .line 381
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method blacklist setDisplayImePolicy(II)V
    .registers 4

    .line 516
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDevice;->setDisplayImePolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 519
    nop

    .line 520
    return-void

    .line 517
    :catch_7
    move-exception p1

    .line 518
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist setDisplayUiMode(II)V
    .registers 4

    .line 524
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDevice;->setDisplayUiMode(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 527
    nop

    .line 528
    return-void

    .line 525
    :catch_7
    move-exception p1

    .line 526
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist setShowPointerIcon(Z)V
    .registers 3

    .line 508
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->setShowPointerIcon(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 511
    nop

    .line 512
    return-void

    .line 509
    :catch_7
    move-exception p1

    .line 510
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 4

    .line 583
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_6
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;

    .line 587
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1e

    .line 588
    if-eqz p1, :cond_1d

    .line 590
    :try_start_11
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 593
    goto :goto_1d

    .line 591
    :catch_17
    move-exception p1

    .line 592
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 595
    :cond_1d
    :goto_1d
    return-void

    .line 587
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method blacklist wakeUp()V
    .registers 2

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->wakeUp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 277
    nop

    .line 278
    return-void

    .line 275
    :catch_7
    move-exception v0

    .line 276
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
