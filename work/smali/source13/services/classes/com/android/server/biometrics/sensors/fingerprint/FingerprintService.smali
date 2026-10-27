.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
    }
.end annotation


# static fields
.field private static final CODE_EXT_CMD:I = 0x1

.field private static final EXT_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.fingerprintextension@1.0::IXiaomiFingerprint"

.field private static final FOD_LOCATION_PROPERTY:Ljava/lang/String; = "ro.hardware.fp.fod.location"

.field private static final FOD_LOCATION_WH_FHD_PROPERTY:Ljava/lang/String; = "persist.vendor.sys.fp.fod.size.width_height.fhd"

.field private static final FOD_LOCATION_XY_FHD_PROPERTY:Ljava/lang/String; = "persist.vendor.sys.fp.fod.location.X_Y.fhd"

.field public static final HEARTBEAT_RATE_REGISTER:I = 0xfffffe

.field public static final HEARTBEAT_RATE_SEND_CMD:I = 0xffffff

.field public static final HEARTBEAT_RATE_UNREGISTER:I = 0xfffffd

.field private static final MIUI_DISPLAY_RESOLUTION_PROPERTY:Ljava/lang/String; = "persist.sys.miui_resolution"

.field private static final NAME_EXT_DAEMON:Ljava/lang/String; = "vendor.xiaomi.hardware.fingerprintextension@1.0::IXiaomiFingerprint"

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static final mFodLocationWhFhd:Ljava/lang/String;

.field private static final mFodLocationXyFhd:Ljava/lang/String;

.field private static final mFodSensorLocation:Ljava/lang/String;

.field private static final mIsFodSensorLocationLow:Z


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field private mExtDaemon:Landroid/os/IHwBinder;

.field private final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mSensorProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorPropsFhd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAuthenticatorsRegisteredCallbacks(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorProps(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorPropsFhd(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorPropsFhd:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbroadcastAllAuthenticatorsRegistered(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastAllAuthenticatorsRegistered()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastCurrentEnrollmentState(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmFodLocationWhFhd()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFodLocationWhFhd:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmFodLocationXyFhd()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFodLocationXyFhd:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsFodSensorLocationLow()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mIsFodSensorLocationLow:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 151
    const-string/jumbo v0, "ro.hardware.fp.fod.location"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFodSensorLocation:Ljava/lang/String;

    .line 152
    const-string/jumbo v2, "low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mIsFodSensorLocationLow:Z

    .line 155
    const-string/jumbo v0, "persist.vendor.sys.fp.fod.location.X_Y.fhd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFodLocationXyFhd:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "persist.vendor.sys.fp.fod.size.width_height.fhd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFodLocationWhFhd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1184
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    .line 1185
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper-IA;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .line 1186
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1187
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 1188
    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 1189
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    .line 1191
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 1192
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorPropsFhd:Ljava/util/List;

    .line 1196
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 1197
    return-void
.end method

.method private broadcastAllAuthenticatorsRegistered()V
    .registers 8

    .line 1221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1224
    :try_start_8
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 1226
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->shouldSwitchToFhdProps()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1227
    const-string v2, "FingerprintService"

    const-string v3, "broadcastAllAuthenticatorsRegistered use mSensorPropsFhd with fhd resolution"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorPropsFhd:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v2, "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    goto :goto_2c

    .line 1230
    .end local v2    # "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1237
    .restart local v2    # "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :goto_2c
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1238
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    if-ge v4, v3, :cond_49

    .line 1239
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 1240
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 1241
    .local v5, "cb":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1238
    nop

    .end local v5    # "cb":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 1244
    .end local v4    # "i":I
    :cond_49
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1245
    .end local v3    # "n":I
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_77

    .line 1246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 1248
    .local v3, "cb":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    :try_start_5f
    invoke-interface {v3, v2}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;->onAllAuthenticatorsRegistered(Ljava/util/List;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_62} :catch_63

    .line 1251
    goto :goto_6b

    .line 1249
    :catch_63
    move-exception v4

    .line 1250
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "Remote exception in onAllAuthenticatorsRegistered"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    .end local v3    # "cb":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_6b
    goto :goto_53

    .line 1253
    :cond_6c
    return-void

    .line 1234
    .end local v2    # "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :cond_6d
    :try_start_6d
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "mSensorProps is empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    monitor-exit v1

    return-void

    .line 1245
    :catchall_77
    move-exception v2

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_77

    throw v2
.end method

.method private broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 18
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricStateListener;

    .line 180
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    .line 181
    .local v8, "um":Landroid/os/UserManager;
    iget-object v9, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 183
    :try_start_d
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object v10, v1

    .line 184
    .local v10, "prop":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    iget v1, v10, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {v7, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v1

    move-object v11, v1

    .line 185
    .local v11, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-virtual {v8}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    move-object v13, v1

    .line 186
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    iget v1, v10, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v2, v13, Landroid/content/pm/UserInfo;->id:I

    .line 187
    invoke-interface {v11, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    move v6, v1

    .line 190
    .local v6, "enrolled":Z
    iget-object v14, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    nop

    .end local v6    # "enrolled":Z
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_2f

    .line 200
    .end local v10    # "prop":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .end local v11    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    :cond_61
    goto :goto_13

    .line 201
    :cond_62
    monitor-exit v9

    .line 202
    return-void

    .line 201
    :catchall_64
    move-exception v0

    monitor-exit v9
    :try_end_66
    .catchall {:try_start_d .. :try_end_66} :catchall_64

    throw v0
.end method

.method private canUseFingerprint(Ljava/lang/String;Ljava/lang/String;ZIII)Z
    .registers 12
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "requireForeground"    # Z
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "userId"    # I

    .line 1328
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1333
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1f

    .line 1334
    return v2

    .line 1336
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1337
    return v2

    .line 1339
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "Rejecting "

    const-string v4, "FingerprintService"

    if-nez v0, :cond_54

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; not a current user or profile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return v1

    .line 1343
    :cond_54
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; permission denied"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return v1

    .line 1352
    :cond_75
    return v2
.end method

.method private checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 1356
    const/4 v0, 0x0

    .line 1357
    .local v0, "appOpsOk":Z
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    .line 1359
    const/4 v0, 0x1

    goto :goto_20

    .line 1360
    :cond_11
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    .line 1363
    const/4 v0, 0x1

    .line 1365
    :cond_20
    :goto_20
    return v0
.end method

.method private checkHeartRatePermission()Z
    .registers 3

    .line 1173
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->checkUseBiometricPermission()V

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.permission.FINGERPRINT_FOD_HEARTRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 1176
    const-string v0, "FingerprintService"

    const-string v1, "check false"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v0, 0x0

    return v0

    .line 1179
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 1309
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSingleProvider()Landroid/util/Pair;

    move-result-object v0

    .line 1310
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_23

    .line 1311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for getEnrolledFingerprintsDeprecated, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1316
    :cond_23
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .registers 5
    .param p1, "sensorId"    # I

    .line 1262
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1263
    .local v1, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->containsSensor(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1264
    return-object v1

    .line 1266
    .end local v1    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    :cond_19
    goto :goto_6

    .line 1267
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSensorProperties()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1299
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->shouldSwitchToFhdProps()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1300
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorPropsFhd:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 1303
    :cond_d
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 1304
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private getSingleProvider()Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation

    .line 1276
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    .line 1277
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FingerprintService"

    if-eqz v1, :cond_13

    .line 1278
    const-string v1, "No providers found"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-object v2

    .line 1284
    :cond_13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1285
    .local v1, "sensorId":I
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1286
    .local v5, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-interface {v5, v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->containsSensor(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1287
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1289
    .end local v5    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    :cond_3e
    goto :goto_22

    .line 1291
    :cond_3f
    const-string v4, "Provider not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    return-object v2
.end method

.method private shouldSwitchToFhdProps()Z
    .registers 5

    .line 1201
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorPropsFhd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1202
    return v1

    .line 1205
    :cond_a
    const/4 v0, 0x0

    const-string/jumbo v2, "persist.sys.miui_resolution"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "screenResolution":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1207
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1208
    .local v2, "width":I
    const/16 v3, 0x438

    if-ne v2, v3, :cond_2e

    .line 1209
    const/4 v1, 0x1

    return v1

    .line 1212
    .end local v2    # "width":I
    :cond_2e
    return v1
.end method


# virtual methods
.method protected checkUseBiometricPermission()V
    .registers 3

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 1167
    const-string v0, "FingerprintService"

    const-string v1, "checkPermission in"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1170
    :cond_1c
    return-void
.end method

.method public getSensorLocation()[I
    .registers 2

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getSensorLocation(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$broadcastCurrentEnrollmentState$0$com-android-server-biometrics-sensors-fingerprint-FingerprintService(Landroid/hardware/biometrics/IBiometricStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricStateListener;
    .param p2, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p3, "prop"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .param p4, "enrolled"    # Z

    .line 191
    if-eqz p1, :cond_c

    .line 192
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    iget v2, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V

    goto :goto_15

    .line 195
    :cond_c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    iget v2, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, v1, v2, p4}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyAllEnrollmentStateChanged(IIZ)V

    .line 198
    :goto_15
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1257
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1258
    return-void
.end method

.method public registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricStateListener;

    .line 170
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 172
    return-void
.end method

.method public startExtCmd(Landroid/os/IBinder;III)I
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "cmd"    # I
    .param p4, "param"    # I

    .line 1136
    const-string v0, "FingerprintService"

    const/4 v1, -0x1

    .line 1137
    .local v1, "result":I
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 1139
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    :try_start_8
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_a} :catch_45
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_a} :catch_45
    .catchall {:try_start_8 .. :try_end_a} :catchall_43

    const-string/jumbo v4, "vendor.xiaomi.hardware.fingerprintextension@1.0::IXiaomiFingerprint"

    if-nez v3, :cond_17

    .line 1140
    :try_start_f
    const-string v3, "default"

    invoke-static {v4, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;

    .line 1142
    :cond_17
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;

    if-nez v3, :cond_22

    .line 1143
    const-string/jumbo v3, "startExtCmd: mExtDaemon service not found"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 1145
    :cond_22
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 1146
    .local v3, "hidl_request":Landroid/os/HwParcel;
    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v3, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1148
    invoke-virtual {v3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1149
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1150
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1151
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1152
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_41} :catch_45
    .catch Ljava/util/NoSuchElementException; {:try_start_f .. :try_end_41} :catch_45
    .catchall {:try_start_f .. :try_end_41} :catchall_43

    move v1, v4

    goto :goto_4e

    .line 1158
    .end local v3    # "hidl_request":Landroid/os/HwParcel;
    :catchall_43
    move-exception v0

    goto :goto_7e

    .line 1154
    :catch_45
    move-exception v3

    .line 1155
    .local v3, "e":Ljava/lang/Exception;
    :try_start_46
    const-string v4, "extCmd failed, reset mExtDaemon. "

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1156
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_43

    .line 1158
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4e
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1159
    nop

    .line 1160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startExtCmd cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return v1

    .line 1158
    :goto_7e
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1159
    throw v0
.end method
