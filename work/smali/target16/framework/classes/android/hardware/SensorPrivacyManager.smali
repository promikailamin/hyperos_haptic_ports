.class public final Landroid/hardware/SensorPrivacyManager;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManager$Sources;,
        Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManager$StateTypes;,
        Landroid/hardware/SensorPrivacyManager$ToggleType;,
        Landroid/hardware/SensorPrivacyManager$Sensors;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_ALL_SENSORS:Ljava/lang/String;

.field public static final blacklist EXTRA_NOTIFICATION_ID:Ljava/lang/String;

.field public static final blacklist EXTRA_SENSOR:Ljava/lang/String;

.field public static final blacklist EXTRA_TOGGLE_TYPE:Ljava/lang/String;

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final whitelist TOGGLE_TYPE_HARDWARE:I = 0x2

.field public static final whitelist TOGGLE_TYPE_SOFTWARE:I = 0x1

.field private static blacklist sInstance:Landroid/hardware/SensorPrivacyManager;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

.field private final blacklist mLegacyToggleListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRequiresAuthentication:Ljava/lang/Boolean;

.field private final blacklist mService:Landroid/hardware/ISensorPrivacyManager;

.field private blacklist mToggleListenerRegistered:Z

.field private final blacklist mToggleListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToggleSupportCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist token:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 56
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->LOG_TAG:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.sensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.notification_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.all_sensors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".extra.toggle_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/SensorPrivacyManager;->EXTRA_TOGGLE_TYPE:Ljava/lang/String;

    .line 322
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V
    .registers 4

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->token:Landroid/os/IBinder;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    .line 335
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    .line 342
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    .line 349
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    .line 356
    new-instance v0, Landroid/hardware/SensorPrivacyManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/SensorPrivacyManager$1;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    .line 404
    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    .line 405
    iput-object p2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    .line 406
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    .line 407
    return-void
.end method

.method private blacklist addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 5

    .line 582
    iget-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z

    if-nez v0, :cond_13

    .line 584
    :try_start_4
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0, v1}, Landroid/hardware/ISensorPrivacyManager;->addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 588
    goto :goto_13

    .line 586
    :catch_f
    move-exception v0

    .line 587
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 590
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 593
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-void

    .line 591
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "listener is already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .registers 4

    .line 415
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-nez v1, :cond_21

    .line 418
    :try_start_7
    const-string/jumbo v1, "sensor_privacy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 419
    invoke-static {v1}, Landroid/hardware/ISensorPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;

    move-result-object v1

    .line 420
    new-instance v2, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {v2, p0, v1}, Landroid/hardware/SensorPrivacyManager;-><init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V

    sput-object v2, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;
    :try_end_19
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_19} :catch_1a
    .catchall {:try_start_7 .. :try_end_19} :catchall_25

    .line 423
    goto :goto_21

    .line 421
    :catch_1a
    move-exception p0

    .line 422
    :try_start_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 425
    :cond_21
    :goto_21
    sget-object p0, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    monitor-exit v0

    return-object p0

    .line 426
    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw p0
.end method

.method public static blacklist getInstance(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)Landroid/hardware/SensorPrivacyManager;
    .registers 4

    .line 435
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_3
    new-instance v1, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {v1, p0, p1}, Landroid/hardware/SensorPrivacyManager;-><init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    .line 437
    sget-object p0, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    monitor-exit v0

    return-object p0

    .line 438
    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private blacklist removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 3

    .line 640
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_1c

    .line 643
    :try_start_d
    iget-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {p1, v0}, Landroid/hardware/ISensorPrivacyManager;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 644
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    .line 647
    goto :goto_1c

    .line 645
    :catch_18
    move-exception p1

    .line 646
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 649
    :cond_1c
    :goto_1c
    return-void
.end method

.method private blacklist resolveSourceFromCurrentContext()I
    .registers 3

    .line 804
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 807
    const/4 v0, 0x6

    return v0

    .line 809
    :cond_18
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public blacklist addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .registers 5

    .line 1057
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1058
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ISensorPrivacyListener;

    .line 1059
    if-nez v1, :cond_17

    .line 1060
    new-instance v1, Landroid/hardware/SensorPrivacyManager$3;

    invoke-direct {v1, p0, p1}, Landroid/hardware/SensorPrivacyManager$3;-><init>(Landroid/hardware/SensorPrivacyManager;Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V

    .line 1073
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_25

    .line 1077
    :cond_17
    :try_start_17
    iget-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {p1, v1}, Landroid/hardware/ISensorPrivacyManager;->addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1f
    .catchall {:try_start_17 .. :try_end_1c} :catchall_25

    .line 1080
    nop

    .line 1081
    :try_start_1d
    monitor-exit v0

    .line 1082
    return-void

    .line 1078
    :catch_1f
    move-exception p1

    .line 1079
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1081
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw p1
.end method

.method public blacklist addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4

    .line 505
    iget-object p2, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 506
    return-void
.end method

.method public whitelist addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 488
    return-void
.end method

.method public whitelist addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 524
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    new-instance v1, Landroid/hardware/SensorPrivacyManager$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/hardware/SensorPrivacyManager$2;-><init>(Landroid/hardware/SensorPrivacyManager;ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 537
    iget-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 538
    :try_start_11
    iget-object p3, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-direct {p0, p2, v1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 540
    monitor-exit p1

    .line 541
    return-void

    .line 540
    :catchall_1b
    move-exception p2

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p2
.end method

.method public whitelist addSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 556
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 557
    return-void
.end method

.method public whitelist addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 574
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 576
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public whitelist areAnySensorPrivacyTogglesEnabled(I)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 699
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 700
    :catch_7
    move-exception p1

    .line 701
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getCameraPrivacyAllowlist()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v1}, Landroid/hardware/ISensorPrivacyManager;->getCameraPrivacyAllowlist()Ljava/util/List;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :try_start_9
    monitor-exit v0

    return-object v1

    .line 763
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 760
    :catch_d
    move-exception v1

    .line 761
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 763
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public whitelist getSensorPrivacyState(II)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 720
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->getToggleSensorPrivacyState(II)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 721
    :catch_7
    move-exception p1

    .line 722
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isAllSensorPrivacyEnabled()Z
    .registers 2

    .line 1119
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyManager;->isSensorPrivacyEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1120
    :catch_7
    move-exception v0

    .line 1121
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isCameraPrivacyEnabled(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 739
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 740
    :catch_7
    move-exception p1

    .line 741
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isSensorPrivacyEnabled(I)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result p1

    return p1
.end method

.method public whitelist isSensorPrivacyEnabled(II)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 680
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->isToggleSensorPrivacyEnabled(II)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 681
    :catch_7
    move-exception p1

    .line 682
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .registers 4

    .line 1096
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1097
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/ISensorPrivacyListener;

    .line 1098
    if-eqz p1, :cond_1e

    .line 1099
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_20

    .line 1101
    :try_start_12
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v1, p1}, Landroid/hardware/ISensorPrivacyManager;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_20

    .line 1104
    goto :goto_1e

    .line 1102
    :catch_18
    move-exception p1

    .line 1103
    :try_start_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1106
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public whitelist removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 609
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    iget-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 611
    :try_start_c
    iget-object p2, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    .line 612
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 613
    if-eqz p2, :cond_19

    .line 614
    invoke-direct {p0, p2}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 616
    :cond_19
    monitor-exit p1

    .line 617
    return-void

    .line 616
    :catchall_1b
    move-exception p2

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1b

    throw p2
.end method

.method public whitelist removeSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 632
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 634
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public blacklist requiresAuthentication()Z
    .registers 2

    .line 984
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 986
    :try_start_4
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyManager;->requiresAuthentication()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 989
    goto :goto_17

    .line 987
    :catch_11
    move-exception v0

    .line 988
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 991
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist setAllSensorPrivacy(Z)V
    .registers 3

    .line 1039
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->setSensorPrivacy(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1042
    nop

    .line 1043
    return-void

    .line 1040
    :catch_7
    move-exception p1

    .line 1041
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setCameraPrivacyAllowlist(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v1, p1}, Landroid/hardware/ISensorPrivacyManager;->setCameraPrivacyAllowlist(Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 783
    nop

    .line 784
    :try_start_9
    monitor-exit v0

    .line 785
    return-void

    .line 784
    :catchall_b
    move-exception p1

    goto :goto_13

    .line 781
    :catch_d
    move-exception p1

    .line 782
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 784
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw p1
.end method

.method public blacklist setSensorPrivacy(IIZ)V
    .registers 5

    .line 842
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    .line 843
    return-void
.end method

.method public blacklist setSensorPrivacy(IIZI)V
    .registers 6

    .line 858
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacy(IIIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 861
    nop

    .line 862
    return-void

    .line 859
    :catch_7
    move-exception p1

    .line 860
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setSensorPrivacy(IZ)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 799
    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManager;->resolveSourceFromCurrentContext()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    .line 800
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 799
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    .line 801
    return-void
.end method

.method public blacklist setSensorPrivacyForProfileGroup(IIZ)V
    .registers 5

    .line 899
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroup(IIZI)V

    .line 900
    return-void
.end method

.method public blacklist setSensorPrivacyForProfileGroup(IIZI)V
    .registers 6

    .line 917
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyForProfileGroup(IIIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 920
    nop

    .line 921
    return-void

    .line 918
    :catch_7
    move-exception p1

    .line 919
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setSensorPrivacyState(II)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 825
    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManager;->resolveSourceFromCurrentContext()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyState(III)V

    .line 826
    return-void
.end method

.method public blacklist setSensorPrivacyState(III)V
    .registers 6

    .line 879
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyState(IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 882
    nop

    .line 884
    return-void

    .line 880
    :catch_d
    move-exception p1

    .line 881
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setSensorPrivacyStateForProfileGroup(III)V
    .registers 6

    .line 938
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyStateForProfileGroup(IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 942
    nop

    .line 943
    return-void

    .line 940
    :catch_d
    move-exception p1

    .line 941
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist showSensorUseDialog(I)V
    .registers 4

    .line 1007
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->showSensorUseDialog(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1010
    goto :goto_e

    .line 1008
    :catch_6
    move-exception p1

    .line 1009
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Received exception while trying to show sensor use dialog"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    :goto_e
    return-void
.end method

.method public whitelist supportsSensorToggle(I)Z
    .registers 3

    .line 447
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result p1

    return p1
.end method

.method public whitelist supportsSensorToggle(II)Z
    .registers 6

    .line 458
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_32

    .line 460
    :try_start_10
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 461
    if-nez v2, :cond_29

    .line 462
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v2, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 463
    iget-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v1

    return p1

    .line 466
    :catchall_2f
    move-exception p1

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_32} :catch_32

    .line 467
    :catch_32
    move-exception p1

    .line 468
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist suppressSensorPrivacyReminders(IZ)V
    .registers 4

    .line 955
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorPrivacyManager;->suppressSensorPrivacyReminders(IZI)V

    .line 956
    return-void
.end method

.method public blacklist suppressSensorPrivacyReminders(IZI)V
    .registers 6

    .line 970
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->token:Landroid/os/IBinder;

    invoke-interface {v0, p3, p1, v1, p2}, Landroid/hardware/ISensorPrivacyManager;->suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 974
    nop

    .line 975
    return-void

    .line 972
    :catch_9
    move-exception p1

    .line 973
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
