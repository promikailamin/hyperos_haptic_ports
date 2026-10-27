.class public Landroid/media/AudioDeviceVolumeManager;
.super Ljava/lang/Object;
.source "AudioDeviceVolumeManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;,
        Landroid/media/AudioDeviceVolumeManager$ListenerInfo;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;,
        Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;,
        Landroid/media/AudioDeviceVolumeManager$VolumeAdjustmentMode;,
        Landroid/media/AudioDeviceVolumeManager$VolumeAdjustmentNoMute;,
        Landroid/media/AudioDeviceVolumeManager$AbsoluteDeviceVolumeBehavior;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorState;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehavior;
    }
.end annotation


# static fields
.field public static final blacklist ADJUST_MODE_END:I = 0x2

.field public static final blacklist ADJUST_MODE_NORMAL:I = 0x0

.field public static final blacklist ADJUST_MODE_START:I = 0x1

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_ADJUST_ONLY:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_MULTI_MODE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_FIXED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_UNSET:I = -0x1

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_VARIABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AudioDeviceVolumeManager"

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

.field private final blacklist mDeviceVolumeListenerLock:Ljava/lang/Object;

.field private blacklist mDeviceVolumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceVolumeManager$ListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$V0P0RNVQZBiSj2r7dNwQxmGi-t4(Landroid/media/AudioDeviceVolumeManager;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioDeviceVolumeManager;->lambda$addOnDeviceVolumeBehaviorChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeBehaviorChangedListenerMgr(Landroid/media/AudioDeviceVolumeManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/media/IAudioService;
    .registers 1

    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    .line 669
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    .line 221
    return-void
.end method

.method private blacklist baseSetDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            "ZI)V"
        }
    .end annotation

    .line 641
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    invoke-direct {v0, p4, p3, p1, p5}, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;-><init>(Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceAttributes;Z)V

    .line 648
    iget-object p3, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    monitor-enter p3

    .line 649
    :try_start_14
    iget-object p4, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    if-nez p4, :cond_1f

    .line 650
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    .line 652
    :cond_1f
    iget-object p4, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-nez p4, :cond_33

    .line 653
    iget-object p4, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    if-nez p4, :cond_3d

    .line 654
    new-instance p4, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    invoke-direct {p4, p0}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    iput-object p4, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    goto :goto_3d

    .line 657
    :cond_33
    iget-object p4, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceAttributes;)V

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 659
    :cond_3d
    :goto_3d
    iget-object p4, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    const/4 v2, 0x1

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->register(ZLandroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V

    .line 662
    monitor-exit p3

    .line 663
    return-void

    .line 662
    :catchall_4e
    move-exception v0

    move-object p1, v0

    monitor-exit p3
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_4e

    throw p1
.end method

.method public static blacklist enforceValidVolumeBehavior(I)V
    .registers 4

    .line 176
    packed-switch p0, :pswitch_data_1e

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal volume behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .registers 1

    .line 965
    sget-object v0, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_7

    .line 966
    sget-object v0, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 968
    :cond_7
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 969
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    sput-object v0, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    .line 970
    sget-object v0, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnDeviceVolumeBehaviorChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    .line 703
    new-instance v0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;Landroid/media/AudioDeviceVolumeManager-IA;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$baseSetDeviceAbsoluteMultiVolumeBehavior$0(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceVolumeManager$ListenerInfo;)Z
    .registers 2

    .line 657
    iget-object p1, p1, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1, p0}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist volumeBehaviorName(I)Ljava/lang/String;
    .registers 3

    .line 928
    packed-switch p0, :pswitch_data_2a

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid volume behavior "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 940
    :pswitch_17
    const-string p0, "DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_ADJUST_ONLY"

    return-object p0

    .line 938
    :pswitch_1a
    const-string p0, "DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_MULTI_MODE"

    return-object p0

    .line 936
    :pswitch_1d
    const-string p0, "DEVICE_VOLUME_BEHAVIOR_ABSOLUTE"

    return-object p0

    .line 934
    :pswitch_20
    const-string p0, "DEVICE_VOLUME_BEHAVIOR_FIXED"

    return-object p0

    .line 932
    :pswitch_23
    const-string p0, "DEVICE_VOLUME_BEHAVIOR_FULL"

    return-object p0

    .line 930
    :pswitch_26
    const-string p0, "DEVICE_VOLUME_BEHAVIOR_VARIABLE"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public blacklist addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    const-string v2, "addOnDeviceVolumeBehaviorChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 704
    return-void
.end method

.method public whitelist adjustVolumeForDevice(Landroid/media/VolumeInfo;ILandroid/media/AudioDeviceAttributes;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 790
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/IAudioService;->adjustVolumeForDevice(Landroid/media/VolumeInfo;ILandroid/media/AudioDeviceAttributes;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 793
    goto :goto_e

    .line 791
    :catch_a
    move-exception p1

    .line 792
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 794
    :goto_e
    return-void
.end method

.method public whitelist getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)Landroid/media/VolumeInfo;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 837
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 838
    :catch_b
    move-exception p1

    .line 839
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 841
    invoke-static {}, Landroid/media/VolumeInfo;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 397
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 401
    :try_start_7
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return p1

    .line 402
    :catch_c
    move-exception p1

    .line 403
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I
    .registers 3

    .line 869
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 870
    :catch_9
    move-exception p1

    .line 871
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getMaxInputGainIndex()I
    .registers 2

    .line 883
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMaxInputGainIndex()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 884
    :catch_9
    move-exception v0

    .line 885
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getMinInputGainIndex()I
    .registers 2

    .line 897
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMinInputGainIndex()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 898
    :catch_9
    move-exception v0

    .line 899
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isFullVolumeDevice()Z
    .registers 4

    .line 419
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 420
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 423
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 425
    :try_start_12
    invoke-interface {v2, v0}, Landroid/media/IAudioService;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_31

    .line 428
    nop

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 431
    invoke-virtual {p0, v2}, Landroid/media/AudioDeviceVolumeManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    if-ne v2, v1, :cond_2e

    .line 432
    return v1

    .line 434
    :cond_2e
    goto :goto_1b

    .line 435
    :cond_2f
    const/4 v0, 0x0

    return v0

    .line 426
    :catch_31
    move-exception v0

    .line 427
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3

    .line 915
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 916
    :catch_9
    move-exception p1

    .line 917
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist notifyAbsoluteVolumeChanged(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 812
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->notifyAbsoluteVolumeChanged(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 815
    goto :goto_e

    .line 813
    :catch_a
    move-exception p1

    .line 814
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 816
    :goto_e
    return-void
.end method

.method public blacklist removeOnDeviceVolumeBehaviorChangedListener(Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .registers 4

    .line 716
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnDeviceVolumeBehaviorChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public blacklist resetDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;)V
    .registers 10

    .line 615
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    if-nez v0, :cond_e

    .line 617
    new-instance v0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    invoke-direct {v0, p0}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    .line 620
    :cond_e
    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->register(ZLandroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_1e
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1e

    throw p1
.end method

.method public blacklist setDeviceAbsoluteMultiVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            ")V"
        }
    .end annotation

    .line 599
    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceVolumeManager;->baseSetDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;ZI)V

    .line 601
    return-void
.end method

.method public blacklist setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            ")V"
        }
    .end annotation

    .line 517
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 519
    return-void
.end method

.method public blacklist setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            ")V"
        }
    .end annotation

    .line 541
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceVolumeManager;->baseSetDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;ZI)V

    .line 543
    return-void
.end method

.method public blacklist setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 12

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteMultiVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 573
    return-void
.end method

.method public blacklist setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 462
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 464
    return-void
.end method

.method public blacklist setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .registers 12

    .line 487
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 488
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 491
    return-void
.end method

.method public whitelist setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 738
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 741
    goto :goto_e

    .line 739
    :catch_a
    move-exception p1

    .line 740
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 742
    :goto_e
    return-void
.end method

.method public whitelist setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 370
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {p2}, Landroid/media/AudioDeviceVolumeManager;->enforceValidVolumeBehavior(I)V

    .line 373
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 375
    :try_start_a
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 378
    nop

    .line 379
    return-void

    .line 376
    :catch_11
    move-exception p1

    .line 377
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)V
    .registers 4

    .line 855
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 858
    nop

    .line 859
    return-void

    .line 856
    :catch_9
    move-exception p1

    .line 857
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setVolumeForDevice(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 767
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setVolumeForDevice(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 770
    goto :goto_e

    .line 768
    :catch_a
    move-exception p1

    .line 769
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 771
    :goto_e
    return-void
.end method
