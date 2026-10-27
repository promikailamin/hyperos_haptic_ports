.class public Lcom/android/server/location/gnss/GnssLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;
    }
.end annotation


# static fields
.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final CLOSE_ERROR_CODE:I = 0x36c74cda

.field private static final DEBUG:Z

.field private static final DOWNLOAD_PSDS_DATA_TIMEOUT_MS:J = 0xea60L

.field private static final EMERGENCY_LOCATION_UPDATE_DURATION_MULTIPLIER:I = 0x3

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final LOCATION_OFF_DELAY_THRESHOLD_ERROR_MILLIS:J = 0x3a98L

.field private static final LOCATION_OFF_DELAY_THRESHOLD_WARN_MILLIS:J = 0x7d0L

.field private static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x2710L

.field private static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field private static final MAX_BATCH_LENGTH_MS:J = 0x5265c00L

.field private static final MAX_BATCH_TIMESTAMP_DELTA_MS:J = 0x1f4L

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MIN_BATCH_INTERVAL_MS:I = 0x3e8

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final PERSIST_MCC_MNC:Ljava/lang/String; = "persist.sys.mcc.mnc"

.field private static final PROPERTIES:Landroid/location/provider/ProviderProperties;

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SWITCH_ERROR_CODE:I = 0x36c74cd9

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final VERBOSE:Z

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field private CLOSE_ERROR_SEND_INTERVAL:I

.field private SWITCH_ERROR_SEND_INTERVAL:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAutomotiveSuspend:Z

.field private mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

.field private mBatchingEnabled:Z

.field private mBatchingStarted:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientSource:Landroid/os/WorkSource;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mFlushListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field private final mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

.field private final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field private final mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

.field private mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field private mGpsEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastCloseTime:J

.field private mLastFixTime:J

.field private mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

.field private mLastSwitchTime:J

.field private final mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

.field private final mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field private final mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

.field private final mPendingDownloadPsdsTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionMode:I

.field private mProviderRequest:Landroid/location/provider/ProviderRequest;

.field private final mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field private final mPsdsPeriodicDownloadToken:Ljava/lang/Object;

.field private mShutdown:Z

.field private mStarted:Z

.field private mStartedChangedElapsedRealtime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsPsds:Z

.field private mTimeToFirstFix:I

.field private final mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public static synthetic $r8$lambda$-PME8ZL8sG3USjmYPKRmOppFXaY(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleInitialize()V

    return-void
.end method

.method public static synthetic $r8$lambda$9sSPMK2HhcdmHWjcYHg7YWQOhr8(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->onNetworkAvailable()V

    return-void
.end method

.method public static synthetic $r8$lambda$DM2jogNw2zqn2FJTIr0Ka-JQdtY(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wg-yoEB-VMU5sJo1WeAMRYSmm_Y(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X56OQCeXikQTYclwmg2TOA-qN_k(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    return-void
.end method

.method public static synthetic $r8$lambda$iZbaMN6kmJERVk6bydXJVkR45Gs(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method public static synthetic $r8$lambda$l0jR6REe3UW3kx387qS2R_Jo3kg(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmGnssNative(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/hal/GnssNative;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuplEsEnabled(Lcom/android/server/location/gnss/GnssLocationProvider;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmShutdown(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misGpsEnabled(Lcom/android/server/location/gnss/GnssLocationProvider;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msubscriptionOrCarrierConfigChanged(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->subscriptionOrCarrierConfigChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEnabled(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 163
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    .line 164
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    .line 166
    new-instance v0, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 167
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p3, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;
    .param p4, "gnssMetrics"    # Lcom/android/server/location/gnss/GnssMetrics;

    .line 453
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    .line 454
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 453
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 277
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 296
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 298
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->SWITCH_ERROR_SEND_INTERVAL:I

    .line 299
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->CLOSE_ERROR_SEND_INTERVAL:I

    .line 300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastSwitchTime:J

    .line 301
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastCloseTime:J

    .line 309
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 315
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 319
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    .line 322
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 332
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 335
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 337
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 351
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 352
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 1562
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 456
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 457
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 458
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 461
    const-class v2, Landroid/os/PowerManager;

    .line 462
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 461
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 463
    .local v2, "powerManager":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "*location*:GnssLocationProvider"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 464
    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 467
    const-string v4, "*location*:PsdsDownload"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 469
    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 471
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 474
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 477
    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 481
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 488
    invoke-virtual {p3}, Lcom/android/server/location/gnss/hal/GnssNative;->getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 490
    new-instance v5, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v5, p1, v0, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 496
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, p1, v1, v6, v5}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 498
    new-instance v0, Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/location/gnss/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    .line 499
    new-instance v0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 501
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 503
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setAllowed(Z)V

    .line 505
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 506
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addLocationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;)V

    .line 507
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V

    .line 508
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setAGpsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;)V

    .line 509
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setPsdsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;)V

    .line 510
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setNotificationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;)V

    .line 511
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setLocationRequestCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;)V

    .line 512
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setTimeCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;)V

    .line 513
    return-void
.end method

.method private deleteAidingData(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1199
    if-nez p1, :cond_7

    .line 1200
    const v0, 0xffff

    .local v0, "flags":I
    goto/16 :goto_97

    .line 1202
    .end local v0    # "flags":I
    :cond_7
    const/4 v0, 0x0

    .line 1203
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x1

    .line 1204
    :cond_12
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    or-int/lit8 v0, v0, 0x2

    .line 1205
    :cond_1c
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    or-int/lit8 v0, v0, 0x4

    .line 1206
    :cond_27
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    or-int/lit8 v0, v0, 0x8

    .line 1207
    :cond_32
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    or-int/lit8 v0, v0, 0x10

    .line 1208
    :cond_3d
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    or-int/lit8 v0, v0, 0x20

    .line 1209
    :cond_48
    const-string/jumbo v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    or-int/lit8 v0, v0, 0x40

    .line 1210
    :cond_53
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    or-int/lit16 v0, v0, 0x80

    .line 1211
    :cond_5e
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    or-int/lit16 v0, v0, 0x100

    .line 1212
    :cond_69
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    or-int/lit16 v0, v0, 0x200

    .line 1213
    :cond_74
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    or-int/lit16 v0, v0, 0x400

    .line 1214
    :cond_7f
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1215
    :cond_8b
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    const v1, 0xffff

    or-int/2addr v0, v1

    .line 1218
    :cond_97
    :goto_97
    if-eqz v0, :cond_b9

    .line 1219
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->deleteAidingData(I)V

    .line 1222
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete aiding data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1226
    :cond_b9
    return-void
.end method

.method private static getCellType(Landroid/telephony/CellInfo;)I
    .registers 2
    .param p0, "ci"    # Landroid/telephony/CellInfo;

    .line 1666
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_6

    .line 1667
    const/4 v0, 0x1

    return v0

    .line 1668
    :cond_6
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_c

    .line 1669
    const/4 v0, 0x4

    return v0

    .line 1670
    :cond_c
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_12

    .line 1671
    const/4 v0, 0x3

    return v0

    .line 1672
    :cond_12
    instance-of v0, p0, Landroid/telephony/CellInfoNr;

    if-eqz v0, :cond_18

    .line 1673
    const/4 v0, 0x6

    return v0

    .line 1675
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private static getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J
    .registers 5
    .param p0, "id"    # Landroid/telephony/CellIdentity;

    .line 1684
    if-nez p0, :cond_5

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1685
    :cond_5
    const-wide/16 v0, -0x1

    .line 1686
    .local v0, "cid":J
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    :pswitch_e
    goto :goto_31

    .line 1690
    :pswitch_f
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v0

    goto :goto_31

    .line 1688
    :pswitch_17
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    int-to-long v0, v2

    goto :goto_31

    .line 1689
    :pswitch_20
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    int-to-long v0, v2

    goto :goto_31

    .line 1687
    :pswitch_29
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    int-to-long v0, v2

    .line 1694
    :goto_31
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3e

    .line 1695
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_41

    :cond_3e
    const-wide/32 v2, 0x7fffffff

    :goto_41
    cmp-long v2, v0, v2

    if-nez v2, :cond_47

    .line 1696
    const-wide/16 v0, -0x1

    .line 1699
    :cond_47
    return-wide v0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_29
        :pswitch_e
        :pswitch_20
        :pswitch_17
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getSuplMode(Z)I
    .registers 5
    .param p1, "agpsEnabled"    # Z

    .line 842
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 843
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result v1

    .line 844
    .local v1, "suplMode":I
    if-nez v1, :cond_c

    .line 845
    return v0

    .line 850
    :cond_c
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GnssCapabilities;->hasMsb()Z

    move-result v2

    if-eqz v2, :cond_1e

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1e

    .line 851
    const/4 v0, 0x1

    return v0

    .line 854
    .end local v1    # "suplMode":I
    :cond_1e
    return v0
.end method

.method private handleDisable()V
    .registers 4

    .line 920
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_c
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/LocationDumpLogStub;->clearData()V

    .line 925
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "disable gnss"

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 927
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->writeLocationInformation(Ljava/lang/String;)V

    .line 929
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->disableGnssSwitch()V

    .line 932
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 933
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 934
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 935
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 937
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v1, :cond_44

    .line 938
    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    .line 941
    :cond_44
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanupBatching()V

    .line 942
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanup()V

    .line 943
    return-void
.end method

.method private handleDownloadPsdsData(I)V
    .registers 6
    .param p1, "psdsType"    # I

    .line 731
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-nez v0, :cond_d

    .line 733
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDownloadPsdsData() called when PSDS not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void

    .line 736
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_26

    .line 738
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_18
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 740
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v1

    .line 743
    :cond_26
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_29
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 746
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_46

    .line 747
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 802
    return-void

    .line 746
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private handleEnable()V
    .registers 8

    .line 885
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "handleEnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_c
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "enable gnss"

    invoke-interface {v0, v2, v3}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 890
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->writeLocationInformation(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    move-result v0

    .line 895
    .local v0, "inited":Z
    const/4 v3, 0x0

    if-eqz v0, :cond_63

    .line 896
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 897
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v4}, Lcom/android/server/location/gnss/hal/GnssNative;->isPsdsSupported()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 900
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v4, :cond_3d

    .line 901
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    invoke-virtual {v5, v1, v4, v6}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsServer(ILjava/lang/String;I)V

    .line 904
    :cond_3d
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v4, :cond_48

    .line 905
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerPort:I

    invoke-virtual {v5, v2, v4, v6}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsServer(ILjava/lang/String;I)V

    .line 909
    :cond_48
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->initBatching()Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->getBatchSize()I

    move-result v2

    if-le v2, v1, :cond_59

    move v3, v1

    :cond_59
    iput-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    .line 910
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v2, :cond_6b

    .line 911
    invoke-virtual {v2, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    goto :goto_6b

    .line 914
    :cond_63
    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 915
    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_6b
    :goto_6b
    return-void
.end method

.method private handleInitialize()V
    .registers 7

    .line 547
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->init(Landroid/content/Context;)V

    .line 549
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "initialize glp"

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 551
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Lcom/android/server/location/gnss/GnssCollectDataStub;->savePoint(ILjava/lang/String;Landroid/content/Context;)V

    .line 553
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->writeLocationInformation(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->init(Landroid/content/Context;)V

    .line 557
    invoke-static {}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->getInstance()Lcom/android/server/location/gnss/GnssEventTrackingStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->init(Landroid/content/Context;)V

    .line 559
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isGnssVisibilityControlSupported()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 560
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 566
    :cond_51
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 569
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$3;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 593
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v2, Landroid/location/LocationManager;

    .line 594
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 593
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 595
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "network"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 596
    new-instance v2, Landroid/location/LocationRequest$Builder;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v2, v4, v5}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 v4, 0x0

    .line 599
    invoke-virtual {v2, v4, v5}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 600
    invoke-virtual {v2, v4}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v2

    sget-object v4, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 596
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 606
    :cond_b4
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 607
    return-void
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .registers 9
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1384
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getLowerAccLocation(Landroid/location/Location;)Landroid/location/Location;

    .line 1386
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->reportLocation2Gpo(Landroid/location/Location;)V

    .line 1388
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportLocation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_2f
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1392
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/location/Location;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 1394
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v2, :cond_82

    .line 1395
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v2, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1396
    if-eqz p1, :cond_b9

    .line 1397
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1398
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/gnss/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1400
    :cond_63
    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez v2, :cond_b9

    .line 1401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 1402
    .local v2, "timeBetweenFixes":I
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/location/gnss/GnssMetrics;->logMissedReports(II)V

    .line 1404
    const/16 v3, 0xbb8

    if-le v2, v3, :cond_81

    .line 1410
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/location/LocationDumpLogStub;->setRecordLoseLocation(Z)V

    .line 1413
    .end local v2    # "timeBetweenFixes":I
    :cond_81
    goto :goto_b9

    .line 1419
    :cond_82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v2, v4

    .line 1420
    .local v2, "locationAfterStartedFalseMillis":J
    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-lez v0, :cond_b9

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected GNSS Location report "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1422
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " after location turned off"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "logMessage":Ljava/lang/String;
    const-wide/16 v4, 0x3a98

    cmp-long v4, v2, v4

    if-lez v4, :cond_b6

    .line 1425
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 1427
    :cond_b6
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v2    # "locationAfterStartedFalseMillis":J
    :cond_b9
    :goto_b9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1434
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v0, :cond_13c

    if-eqz p1, :cond_13c

    .line 1435
    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1436
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTFF: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_e7
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTFF is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1442
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v2, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the first location is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1445
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    const-string v2, "fix location"

    invoke-interface {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->writeLocationInformation(Ljava/lang/String;)V

    .line 1447
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Lcom/android/server/location/gnss/GnssCollectDataStub;->savePoint(ILjava/lang/String;)V

    .line 1453
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_13c

    .line 1454
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v2}, Lcom/android/server/location/gnss/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1458
    :cond_13c
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_164

    .line 1463
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v0

    if-nez v0, :cond_164

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v2, 0xea60

    if-ge v0, v2, :cond_164

    .line 1464
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1467
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    const-string/jumbo v2, "recover location"

    invoke-interface {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->writeLocationInformation(Ljava/lang/String;)V

    .line 1472
    :cond_164
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v0

    if-nez v0, :cond_187

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_187

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 v2, 0x2710

    if-le v0, v2, :cond_187

    .line 1474
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_184

    const-string/jumbo v0, "got fix, hibernating"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_184
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    .line 1477
    :cond_187
    return-void
.end method

.method private handleReportSvStatus(Landroid/location/GnssStatus;)V
    .registers 14
    .param p1, "gnssStatus"    # Landroid/location/GnssStatus;

    .line 1481
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logCn0(Landroid/location/GnssStatus;)V

    .line 1483
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_25

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SV count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_25
    const/4 v0, 0x0

    .line 1488
    .local v0, "usedInFixCount":I
    const/4 v1, 0x0

    .line 1489
    .local v1, "maxCn0":I
    const/4 v2, 0x0

    .line 1490
    .local v2, "meanCn0":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 1491
    invoke-virtual {p1, v3}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1492
    add-int/lit8 v0, v0, 0x1

    .line 1493
    invoke-virtual {p1, v3}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_45

    .line 1494
    invoke-virtual {p1, v3}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v4

    float-to-int v1, v4

    .line 1496
    :cond_45
    int-to-float v4, v2

    invoke-virtual {p1, v3}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1497
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p1, v3}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/gnss/GnssMetrics;->logConstellationType(I)V

    .line 1490
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1500
    .end local v3    # "i":I
    :cond_58
    if-lez v0, :cond_5b

    .line 1501
    div-int/2addr v2, v0

    .line 1504
    :cond_5b
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1507
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v3

    .line 1508
    .local v3, "svCount":I
    new-array v4, v3, [F

    .line 1509
    .local v4, "cn0s":[F
    new-array v5, v3, [F

    .line 1510
    .local v5, "svCarrierFre":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_69
    if-ge v6, v3, :cond_7a

    .line 1511
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v7

    aput v7, v4, v6

    .line 1512
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v7

    aput v7, v5, v6

    .line 1510
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    .line 1515
    .end local v6    # "i":I
    :cond_7a
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v6

    const/16 v7, 0xa

    invoke-interface {v6, v7, v4, v3, v5}, Lcom/android/server/location/gnss/GnssCollectDataStub;->savePoint(I[FI[F)V

    .line 1517
    invoke-static {}, Lcom/android/server/location/provider/AmapCustomStub;->getInstance()Lcom/android/server/location/provider/AmapCustomStub;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/android/server/location/provider/AmapCustomStub;->setLastSvStatus(Landroid/location/GnssStatus;)V

    .line 1519
    iget-wide v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_178

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xbb8

    cmp-long v6, v6, v8

    if-lez v6, :cond_178

    .line 1520
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/location/LocationDumpLogStub;->getRecordLoseLocation()Z

    move-result v6

    if-eqz v6, :cond_178

    .line 1521
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "lose location, record the latest SV status "

    invoke-interface {v6, v7, v8}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1523
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b5
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v7

    if-ge v6, v7, :cond_15d

    .line 1524
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v7

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "svid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1525
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cn0: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1526
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " elev: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1527
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " azimuth: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1528
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " carrier frequency: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1529
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1530
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v10

    const-string v11, "  "

    if-eqz v10, :cond_117

    const-string v10, " E"

    goto :goto_118

    :cond_117
    move-object v10, v11

    :goto_118
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1531
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v10

    if-eqz v10, :cond_124

    const-string v11, " A"

    :cond_124
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1532
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v10

    const-string v11, ""

    if-eqz v10, :cond_133

    const-string v10, "U"

    goto :goto_134

    :cond_133
    move-object v10, v11

    :goto_134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1533
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v10

    if-eqz v10, :cond_141

    const-string v10, "F"

    goto :goto_142

    :cond_141
    move-object v10, v11

    :goto_142
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1534
    invoke-virtual {p1, v6}, Landroid/location/GnssStatus;->hasBasebandCn0DbHz(I)Z

    move-result v10

    if-eqz v10, :cond_14e

    const-string v11, "B"

    :cond_14e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1524
    invoke-interface {v7, v8, v9}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1523
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b5

    .line 1536
    .end local v6    # "i":I
    :cond_15d
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/server/location/LocationDumpLogStub;->setRecordLoseLocation(Z)V

    .line 1538
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v6

    const-string/jumbo v7, "lose location"

    invoke-interface {v6, v7}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->writeLocationInformation(Ljava/lang/String;)V

    .line 1540
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/android/server/location/gnss/GnssCollectDataStub;->savePoint(ILjava/lang/String;)V

    .line 1548
    :cond_178
    invoke-static {}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->getInstance()Lcom/android/server/location/GnssSmartSatelliteSwitchStub;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->smartSatelliteSwitchMonitor(Landroid/location/GnssStatus;)V

    .line 1550
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v6, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logSvStatus(Landroid/location/GnssStatus;)V

    .line 1551
    return-void
.end method

.method private handleRequestLocation(ZZ)V
    .registers 16
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z

    .line 639
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_12

    .line 640
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 641
    const-string v0, "RequestLocation is denied due to too frequent requests."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_11
    return-void

    .line 645
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 646
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-wide/16 v2, 0x2710

    const-string/jumbo v4, "gnss_hal_location_request_duration_millis"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 650
    .local v2, "durationMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2d

    .line 651
    const-string v4, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void

    .line 655
    :cond_2d
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 659
    .local v4, "locationManager":Landroid/location/LocationManager;
    new-instance v5, Landroid/location/LocationRequest$Builder;

    const-wide/16 v6, 0x3e8

    invoke-direct {v5, v6, v7}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 660
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v5

    .line 662
    .local v5, "locationRequest":Landroid/location/LocationRequest$Builder;
    if-eqz p1, :cond_54

    .line 665
    const-string/jumbo v7, "network"

    .line 666
    .local v7, "provider":Ljava/lang/String;
    new-instance v8, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda16;

    invoke-direct {v8}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda16;-><init>()V

    .line 667
    .local v8, "locationListener":Landroid/location/LocationListener;
    const/16 v9, 0x68

    invoke-virtual {v5, v9}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    goto :goto_60

    .line 670
    .end local v7    # "provider":Ljava/lang/String;
    .end local v8    # "locationListener":Landroid/location/LocationListener;
    :cond_54
    const-string v7, "fused"

    .line 671
    .restart local v7    # "provider":Ljava/lang/String;
    new-instance v8, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda17;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 672
    .restart local v8    # "locationListener":Landroid/location/LocationListener;
    const/16 v9, 0x64

    invoke-virtual {v5, v9}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 677
    :goto_60
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v9}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_7b

    .line 678
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 679
    invoke-virtual {v9}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object v9

    .line 680
    .local v9, "halVersion":Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    if-nez p2, :cond_75

    iget v11, v9, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    if-ge v11, v10, :cond_7b

    .line 681
    :cond_75
    invoke-virtual {v5, v6}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    .line 682
    const-wide/16 v11, 0x3

    mul-long/2addr v2, v11

    .line 686
    .end local v9    # "halVersion":Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    :cond_7b
    invoke-virtual {v5, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    .line 688
    new-array v9, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v9, v11

    .line 691
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v6

    .line 689
    const-string v6, "GNSS HAL Requesting location updates from %s provider for %d millis."

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 688
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "request location from HAL using provider "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v10, v6}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 698
    invoke-virtual {v4, v7}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 699
    invoke-virtual {v5}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v1

    sget-object v6, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v7, v1, v6, v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 702
    :cond_bc
    return-void
.end method

.method private hibernate()V
    .registers 10

    .line 1375
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1377
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long v4, v0, v3

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-string v6, "GnssLocationProvider"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1379
    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;

    .line 705
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "injectBestLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1d
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 710
    return-void

    .line 714
    :cond_24
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectBestLocation provider:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 715
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 716
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 717
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " accuracy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 718
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectBestLocation(Landroid/location/Location;)V

    .line 722
    return-void
.end method

.method private injectLocation(Landroid/location/Location;)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;

    .line 805
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-nez v0, :cond_55

    .line 806
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectLocation(Landroid/location/Location;)V

    .line 809
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectLocation provider:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 810
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 811
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 812
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " accuracy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 813
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 816
    :cond_55
    return-void
.end method

.method private isGpsEnabled()Z
    .registers 3

    .line 975
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return v1

    .line 977
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isRequestLocationRateLimited()Z
    .registers 2

    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$handleRequestLocation$2(Landroid/location/Location;)V
    .registers 1
    .param p0, "location"    # Landroid/location/Location;

    .line 666
    return-void
.end method

.method static synthetic lambda$requestRefLocation$9(Landroid/telephony/CellInfo;)I
    .registers 2
    .param p0, "ci"    # Landroid/telephony/CellInfo;

    .line 1760
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method private onNetworkAvailable()V
    .registers 5

    .line 621
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NtpTimeHelper;->onNetworkAvailable()V

    .line 623
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_40

    .line 624
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 626
    .local v2, "psdsType":I
    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 627
    .end local v2    # "psdsType":I
    goto :goto_12

    .line 628
    :cond_2b
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 631
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v1

    const/4 v2, 0x2

    const-string/jumbo v3, "network available, try to download PSDS/LTO"

    invoke-interface {v1, v2, v3}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 634
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    throw v1

    .line 636
    :cond_40
    :goto_40
    return-void
.end method

.method private postWithWakeLockHeld(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1802
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1803
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 1810
    .local v0, "success":Z
    if-nez v0, :cond_19

    .line 1811
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1813
    :cond_19
    return-void
.end method

.method private reloadGpsProperties()V
    .registers 7

    .line 429
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V

    .line 430
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setSuplHostPort()V

    .line 432
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerPort:I

    .line 434
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 435
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 436
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 438
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x4

    .line 439
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 440
    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 439
    const-string v4, "NMEA_LEN"

    const-string v5, "20000"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/location/LocationDumpLogStub;->getConfig(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 438
    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->setLength(II)V

    .line 442
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    .line 443
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 444
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v2

    .line 443
    const-string v3, "ENABLE_NOTIFY"

    const-string v4, "false"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getConfig(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->setSendingSwitch(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v0, :cond_79

    .line 447
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V

    .line 449
    :cond_79
    return-void
.end method

.method private reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 38
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I

    .line 1603
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    const-string v10, "GnssLocationProvider"

    const-string/jumbo v11, "reportNiNotification: entered"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v12, v13, v11}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1609
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notificationId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", niType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", notifyFlags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", timeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", defaultResponse: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestorId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", requestorIdEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", textEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    new-instance v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v10}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1622
    .local v10, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1623
    iput v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 1624
    and-int/lit8 v11, v3, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_a9

    move v11, v13

    goto :goto_aa

    :cond_a9
    move v11, v12

    :goto_aa
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 1625
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_b2

    move v11, v13

    goto :goto_b3

    :cond_b2
    move v11, v12

    :goto_b3
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 1626
    and-int/lit8 v11, v3, 0x4

    if-eqz v11, :cond_ba

    move v12, v13

    :cond_ba
    iput-boolean v12, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1628
    iput v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1629
    iput v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1630
    iput-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 1631
    iput-object v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 1632
    iput v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 1633
    iput v9, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 1635
    iget-object v11, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v11, v10}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 1636
    const/16 v12, 0x7c

    iget v14, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget v15, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    iget-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    move/from16 v17, v13

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    move/from16 v18, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    move/from16 v19, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    move/from16 v20, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    move-object/from16 v21, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    move-object/from16 v22, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    move/from16 v23, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    move/from16 v24, v13

    iget-boolean v13, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 1650
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v26

    const/16 v27, 0x0

    .line 1636
    move/from16 v25, v13

    const/4 v13, 0x1

    move/from16 v16, v11

    invoke-static/range {v12 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)V

    .line 1652
    return-void
.end method

.method private requestRefLocation()V
    .registers 19

    .line 1745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1746
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1748
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 1751
    .local v2, "phoneType":I
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "requestRefLocation"

    invoke-interface {v3, v4, v5}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1754
    const-string v3, "GnssLocationProvider"

    const/4 v5, 0x1

    .line 1775
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1754
    if-ne v2, v5, :cond_e8

    .line 1756
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v7

    .line 1757
    .local v7, "cil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v7, :cond_e2

    .line 1758
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1759
    .local v8, "cellIdentityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/CellIdentity;>;"
    new-instance v9, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda8;

    invoke-direct {v9}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v9}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v9

    .line 1760
    invoke-interface {v9}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v9

    .line 1759
    invoke-interface {v7, v9}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1762
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_44
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/CellInfo;

    .line 1763
    .local v10, "ci":Landroid/telephony/CellInfo;
    invoke-virtual {v10}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v11

    .line 1764
    .local v11, "status":I
    if-eq v11, v5, :cond_58

    if-ne v11, v4, :cond_7b

    .line 1766
    :cond_58
    invoke-virtual {v10}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v12

    .line 1767
    .local v12, "c":Landroid/telephony/CellIdentity;
    invoke-static {v10}, Lcom/android/server/location/gnss/GnssLocationProvider;->getCellType(Landroid/telephony/CellInfo;)I

    move-result v13

    .line 1768
    .local v13, "t":I
    invoke-static {v12}, Lcom/android/server/location/gnss/GnssLocationProvider;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_7b

    .line 1769
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7b

    .line 1770
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    .end local v10    # "ci":Landroid/telephony/CellInfo;
    .end local v11    # "status":I
    .end local v12    # "c":Landroid/telephony/CellIdentity;
    .end local v13    # "t":I
    :cond_7b
    goto :goto_44

    .line 1775
    :cond_7c
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 1776
    nop

    .line 1777
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentity;

    .line 1776
    invoke-direct {v0, v5, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    goto :goto_e1

    .line 1778
    :cond_8d
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 1779
    nop

    .line 1780
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentity;

    .line 1779
    invoke-direct {v0, v4, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    goto :goto_e1

    .line 1781
    :cond_a7
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 1782
    nop

    .line 1783
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentity;

    .line 1782
    invoke-direct {v0, v5, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    goto :goto_e1

    .line 1784
    :cond_c1
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 1785
    const/16 v3, 0x8

    .line 1786
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellIdentity;

    .line 1785
    invoke-direct {v0, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    goto :goto_e1

    .line 1788
    :cond_dc
    const-string v4, "No available serving cell information."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    .end local v8    # "cellIdentityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/CellIdentity;>;"
    :goto_e1
    goto :goto_f0

    .line 1791
    :cond_e2
    const-string v4, "Error getting cell location info."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    .line 1793
    .end local v7    # "cil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :cond_e8
    if-ne v2, v4, :cond_f0

    .line 1794
    const-string v4, "CDMA not supported."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    .line 1793
    :cond_f0
    :goto_f0
    nop

    .line 1796
    :goto_f1
    return-void
.end method

.method private requestUtcTime()V
    .registers 4

    .line 1655
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_c
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "engine request UTC"

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/location/gnss/NtpTimeHelper;)V

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 1662
    return-void
.end method

.method private restartLocationRequest()V
    .registers 3

    .line 1554
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1556
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 1557
    return-void
.end method

.method private setGpsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 858
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 860
    monitor-exit v0

    .line 861
    return-void

    .line 860
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setPositionMode(IIIZ)Z
    .registers 16
    .param p1, "mode"    # I
    .param p2, "recurrence"    # I
    .param p3, "minInterval"    # I
    .param p4, "lowPowerMode"    # Z

    .line 1081
    new-instance v7, Lcom/android/server/location/gnss/GnssPositionMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssPositionMode;-><init>(IIIIIZ)V

    .line 1083
    .local v0, "positionMode":Lcom/android/server/location/gnss/GnssPositionMode;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1084
    const/4 v1, 0x1

    return v1

    .line 1088
    :cond_18
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set_position_mode, mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recurrence "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minInterval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lowPowerMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1093
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p1

    move v6, p2

    move v7, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/location/gnss/hal/GnssNative;->setPositionMode(IIIIIZ)Z

    move-result v1

    .line 1095
    .local v1, "result":Z
    if-eqz v1, :cond_63

    .line 1096
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    goto :goto_66

    .line 1098
    :cond_63
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 1100
    :goto_66
    return v1
.end method

.method private setRefLocation(ILandroid/telephony/CellIdentity;)V
    .registers 21
    .param p1, "type"    # I
    .param p2, "ci"    # Landroid/telephony/CellIdentity;

    .line 1703
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, "mcc_str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    .line 1705
    .local v1, "mnc_str":Ljava/lang/String;
    const v2, 0x7fffffff

    if-eqz v0, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    goto :goto_14

    :cond_13
    move v6, v2

    .line 1706
    .local v6, "mcc":I
    :goto_14
    if-eqz v1, :cond_1a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_1a
    move v7, v2

    .line 1707
    .local v7, "mnc":I
    const v2, 0x7fffffff

    .line 1708
    .local v2, "lac":I
    const v3, 0x7fffffff

    .line 1709
    .local v3, "tac":I
    const v4, 0x7fffffff

    .line 1710
    .local v4, "pcid":I
    const v5, 0x7fffffff

    .line 1711
    .local v5, "arfcn":I
    const-wide v8, 0x7fffffffffffffffL

    .line 1713
    .local v8, "cid":J
    sparse-switch p1, :sswitch_data_96

    move v14, v4

    move v15, v5

    move-wide/from16 v16, v8

    goto :goto_86

    .line 1731
    :sswitch_34
    move-object/from16 v10, p2

    check-cast v10, Landroid/telephony/CellIdentityNr;

    .line 1732
    .local v10, "cin":Landroid/telephony/CellIdentityNr;
    invoke-virtual {v10}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v8

    .line 1733
    invoke-virtual {v10}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v3

    .line 1734
    invoke-virtual {v10}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v4

    .line 1735
    invoke-virtual {v10}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result v5

    .line 1736
    move v14, v4

    move v15, v5

    move-wide/from16 v16, v8

    goto :goto_86

    .line 1725
    .end local v10    # "cin":Landroid/telephony/CellIdentityNr;
    :sswitch_4d
    move-object/from16 v10, p2

    check-cast v10, Landroid/telephony/CellIdentityLte;

    .line 1726
    .local v10, "cil":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v11

    int-to-long v8, v11

    .line 1727
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    .line 1728
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v4

    .line 1729
    move v14, v4

    move v15, v5

    move-wide/from16 v16, v8

    goto :goto_86

    .line 1720
    .end local v10    # "cil":Landroid/telephony/CellIdentityLte;
    :sswitch_63
    move-object/from16 v10, p2

    check-cast v10, Landroid/telephony/CellIdentityWcdma;

    .line 1721
    .local v10, "ciw":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v10}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    int-to-long v8, v11

    .line 1722
    invoke-virtual {v10}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    .line 1723
    move v14, v4

    move v15, v5

    move-wide/from16 v16, v8

    goto :goto_86

    .line 1715
    .end local v10    # "ciw":Landroid/telephony/CellIdentityWcdma;
    :sswitch_75
    move-object/from16 v10, p2

    check-cast v10, Landroid/telephony/CellIdentityGsm;

    .line 1716
    .local v10, "cig":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v10}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v11

    int-to-long v8, v11

    .line 1717
    invoke-virtual {v10}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    .line 1718
    move v14, v4

    move v15, v5

    move-wide/from16 v16, v8

    .line 1740
    .end local v4    # "pcid":I
    .end local v5    # "arfcn":I
    .end local v8    # "cid":J
    .end local v10    # "cig":Landroid/telephony/CellIdentityGsm;
    .local v14, "pcid":I
    .local v15, "arfcn":I
    .local v16, "cid":J
    :goto_86
    move-object/from16 v13, p0

    iget-object v4, v13, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move/from16 v5, p1

    move v8, v2

    move-wide/from16 v9, v16

    move v11, v3

    move v12, v14

    move v13, v15

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 1742
    return-void

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_75
        0x2 -> :sswitch_63
        0x4 -> :sswitch_4d
        0x8 -> :sswitch_34
    .end sparse-switch
.end method

.method private setStarted(Z)V
    .registers 4
    .param p1, "started"    # Z

    .line 1367
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eq v0, p1, :cond_c

    .line 1368
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 1369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 1371
    :cond_c
    return-void
.end method

.method private setSuplHostPort()V
    .registers 5

    .line 819
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 820
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 821
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_4c

    if-lez v0, :cond_4c

    const v2, 0xffff

    if-gt v0, v2, :cond_4c

    .line 824
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsServer(ILjava/lang/String;I)V

    .line 828
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set supl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 832
    :cond_4c
    return-void
.end method

.method private startBatching(J)V
    .registers 13
    .param p1, "batchLengthMs"    # J

    .line 1318
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 1320
    .local v0, "batchSize":J
    sget-boolean v2, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v3, "GnssLocationProvider"

    if-eqz v2, :cond_2e

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_2e
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/location/gnss/hal/GnssNative;->startBatch(JFZ)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1324
    iput-boolean v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    .line 1326
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_6d

    .line 1329
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;J)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1344
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, p1

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1346
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 1344
    const-string v7, "GnssLocationProvider"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_6d

    .line 1349
    :cond_67
    const-string/jumbo v2, "native_start_batch failed in startBatching()"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_6d
    :goto_6d
    return-void
.end method

.method private startNavigating()V
    .registers 11

    .line 1229
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_eb

    .line 1230
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_10

    const-string/jumbo v2, "startNavigating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_10
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1232
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1233
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1234
    iput v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1242
    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->getSuplMode(Z)I

    move-result v4

    iput v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1245
    if-eqz v0, :cond_4d

    .line 1248
    packed-switch v4, :pswitch_data_ec

    .line 1259
    const-string/jumbo v0, "unknown"

    .local v0, "mode":Ljava/lang/String;
    goto :goto_36

    .line 1253
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_2c
    const-string v0, "MS_ASSISTED"

    .line 1254
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_36

    .line 1256
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_2f
    const-string v0, "MS_BASED"

    .line 1257
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_36

    .line 1250
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_32
    const-string/jumbo v0, "standalone"

    .line 1251
    .restart local v0    # "mode":Ljava/lang/String;
    nop

    .line 1262
    :goto_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting position_mode to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    .end local v0    # "mode":Ljava/lang/String;
    :cond_4d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    goto :goto_5e

    :cond_5c
    const/16 v0, 0x3e8

    .line 1266
    .local v0, "interval":I
    :goto_5e
    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1267
    invoke-virtual {v5}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v5

    .line 1266
    invoke-direct {p0, v4, v2, v0, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIZ)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 1268
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1269
    const-string/jumbo v4, "set_position_mode failed in startNavigating()"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastSwitchTime:J

    sub-long/2addr v4, v6

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->SWITCH_ERROR_SEND_INTERVAL:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-lez v1, :cond_a0

    .line 1271
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v1

    const v4, 0x36c74cd9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "SwitchError"

    aput-object v6, v5, v2

    const-string v2, "Switch error"

    aput-object v2, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v1

    .line 1273
    .local v1, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 1275
    .end local v1    # "event":Lcom/miui/misight/MiEventStub;
    :cond_a0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastSwitchTime:J

    .line 1276
    return-void

    .line 1278
    :cond_a7
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/hal/GnssNative;->start()Z

    move-result v3

    if-nez v3, :cond_b9

    .line 1279
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1280
    const-string/jumbo v2, "native_start failed in startNavigating()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return-void

    .line 1285
    :cond_b9
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 1287
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v1

    if-nez v1, :cond_eb

    .line 1290
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v2, 0xea60

    if-lt v1, v2, :cond_eb

    .line 1291
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0xea60

    add-long/2addr v5, v1

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1291
    const-string v7, "GnssLocationProvider"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1297
    .end local v0    # "interval":I
    :cond_eb
    return-void

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method private stopBatching()V
    .registers 3

    .line 1354
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopBatching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    if-eqz v0, :cond_29

    .line 1356
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_1c

    .line 1357
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1360
    :cond_1c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    .line 1361
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopBatch()V

    .line 1362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    .line 1364
    :cond_29
    return-void
.end method

.method private stopNavigating()V
    .registers 3

    .line 1300
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2c

    .line 1302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1303
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stop()Z

    .line 1304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 1308
    invoke-static {}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->getInstance()Lcom/android/server/location/GnssSmartSatelliteSwitchStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->resetBlockList()V

    .line 1311
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1313
    :cond_2c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1314
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1315
    return-void
.end method

.method private subscriptionOrCarrierConfigChanged()V
    .registers 10

    .line 378
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_c

    const-string/jumbo v2, "received SIM related action: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_c
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 380
    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 381
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 382
    const-string v4, "carrier_config"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 383
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 384
    .local v4, "ddSubId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 385
    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 387
    :cond_2f
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "mccMnc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 389
    .local v6, "isKeepLppProfile":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b8

    .line 390
    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM MCC/MNC is available: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_52
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM MCC/MNC is available/changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reload configuration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/server/location/gnss/GnssCollectDataStub;->setCnSimInserted(Ljava/lang/String;)V

    .line 398
    const-string/jumbo v0, "persist.sys.mcc.mnc"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    if-eqz v3, :cond_99

    .line 401
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 402
    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_8e

    :cond_8d
    const/4 v0, 0x0

    .line 403
    .local v0, "b":Landroid/os/PersistableBundle;
    :goto_8e
    if-eqz v0, :cond_99

    .line 404
    nop

    .line 405
    const-string/jumbo v1, "gps.persist_lpp_mode_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v6, v1

    .line 408
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_99
    const-string/jumbo v0, "persist.sys.gps.lpp"

    if-eqz v6, :cond_af

    .line 410
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 411
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getLppProfile()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "lpp_profile":Ljava/lang/String;
    if-eqz v1, :cond_ae

    .line 414
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .end local v1    # "lpp_profile":Ljava/lang/String;
    :cond_ae
    goto :goto_b4

    .line 418
    :cond_af
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_b4
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    goto :goto_c4

    .line 422
    :cond_b8
    if-eqz v0, :cond_bf

    const-string v0, "SIM MCC/MNC is still not available"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_bf
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V

    .line 426
    :goto_c4
    return-void
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"    # Landroid/os/WorkSource;

    .line 1104
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1105
    return-void

    .line 1110
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 1113
    goto :goto_19

    .line 1111
    :catch_11
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    .line 1119
    .local v0, "diffs":[Ljava/util/List;, "[Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6d

    .line 1120
    aget-object v4, v0, v1

    .line 1121
    .local v4, "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    aget-object v5, v0, v3

    .line 1123
    .local v5, "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v4, :cond_48

    .line 1124
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1125
    .local v7, "newChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1126
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1125
    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1127
    .end local v7    # "newChain":Landroid/os/WorkSource$WorkChain;
    goto :goto_2e

    .line 1130
    :cond_48
    if-eqz v5, :cond_68

    .line 1131
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1132
    .local v7, "goneChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1133
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1132
    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1134
    .end local v7    # "goneChain":Landroid/os/WorkSource$WorkChain;
    goto :goto_4e

    .line 1137
    :cond_68
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v6, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1142
    .end local v4    # "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v5    # "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    :cond_6d
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v4

    .line 1143
    .local v4, "changes":[Landroid/os/WorkSource;
    if-eqz v4, :cond_ab

    .line 1144
    aget-object v1, v4, v1

    .line 1145
    .local v1, "newWork":Landroid/os/WorkSource;
    aget-object v3, v4, v3

    .line 1148
    .local v3, "goneWork":Landroid/os/WorkSource;
    if-eqz v1, :cond_92

    .line 1149
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7c
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_92

    .line 1150
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1151
    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getUid(I)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1150
    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1149
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 1156
    .end local v5    # "i":I
    :cond_92
    if-eqz v3, :cond_ab

    .line 1157
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_95
    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_ab

    .line 1158
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->getUid(I)I

    move-result v7

    .line 1159
    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1158
    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1157
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 1163
    .end local v1    # "newWork":Landroid/os/WorkSource;
    .end local v3    # "goneWork":Landroid/os/WorkSource;
    .end local v5    # "i":I
    :cond_ab
    return-void
.end method

.method private updateEnabled()V
    .registers 6

    .line 947
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 948
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 951
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    .line 952
    invoke-virtual {v1}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 953
    invoke-virtual {v1}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v3

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    or-int/2addr v0, v1

    .line 956
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_2b
    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    if-nez v4, :cond_30

    move v2, v3

    :cond_30
    and-int/2addr v0, v2

    .line 958
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_47

    .line 961
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    xor-int/2addr v1, v3

    and-int/2addr v0, v1

    .line 963
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 964
    return-void

    .line 967
    :cond_3d
    if-eqz v0, :cond_43

    .line 968
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleEnable()V

    goto :goto_46

    .line 970
    :cond_43
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDisable()V

    .line 972
    :goto_46
    return-void

    .line 958
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method private updateRequirements()V
    .registers 14

    .line 1013
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    if-eqz v0, :cond_14f

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_14f

    .line 1017
    :cond_c
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequest "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_2b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 1020
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_59

    .line 1023
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    goto :goto_7b

    .line 1025
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interval overflow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1029
    :goto_7b
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1030
    .local v0, "batchIntervalMs":I
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1033
    .local v2, "batchLengthMs":J
    invoke-static {}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->getInstance()Lcom/android/server/location/GnssSmartSatelliteSwitchStub;

    move-result-object v4

    .line 1034
    invoke-interface {v4}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->supportConstellationBlockListFeature()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a5

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v4}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v4

    if-nez v4, :cond_a5

    const/4 v4, 0x1

    goto :goto_a6

    :cond_a5
    move v4, v5

    .line 1035
    .local v4, "smartSatelliteSwitchEnable":Z
    :goto_a6
    if-eqz v4, :cond_d5

    .line 1036
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    .local v6, "controllList":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_ae
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v8}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/WorkSource;->size()I

    move-result v8

    if-ge v7, v8, :cond_ca

    .line 1038
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v8}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    add-int/lit8 v7, v7, 0x1

    goto :goto_ae

    .line 1040
    .end local v7    # "i":I
    :cond_ca
    invoke-static {}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->getInstance()Lcom/android/server/location/GnssSmartSatelliteSwitchStub;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->isControlled(Ljava/lang/String;)V

    .line 1044
    .end local v6    # "controllList":Ljava/lang/StringBuilder;
    :cond_d5
    iget-boolean v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    if-eqz v6, :cond_eb

    const-wide/16 v6, 0x2

    div-long v6, v2, v6

    int-to-long v8, v0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_eb

    .line 1045
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1046
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1047
    invoke-direct {p0, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->startBatching(J)V

    goto :goto_13f

    .line 1049
    :cond_eb
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 1051
    iget-boolean v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v6, :cond_115

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v6}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v6

    if-eqz v6, :cond_115

    .line 1053
    iget v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    iget v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1054
    invoke-virtual {v8}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v8

    .line 1053
    invoke-direct {p0, v6, v5, v7, v8}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIZ)Z

    move-result v5

    if-nez v5, :cond_13f

    .line 1055
    const-string/jumbo v5, "set_position_mode failed in updateRequirements"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 1057
    :cond_115
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v1, :cond_11d

    .line 1059
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    goto :goto_13f

    .line 1062
    :cond_11d
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1063
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v5, 0xea60

    if-lt v1, v5, :cond_13f

    .line 1066
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    .line 1067
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    iget-object v11, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v12, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1066
    const-string v10, "GnssLocationProvider"

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1072
    .end local v0    # "batchIntervalMs":I
    .end local v2    # "batchLengthMs":J
    .end local v4    # "smartSatelliteSwitchEnable":Z
    :cond_13f
    :goto_13f
    goto :goto_14e

    .line 1073
    :cond_140
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1074
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1075
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 1077
    :goto_14e
    return-void

    .line 1014
    :cond_14f
    :goto_14f
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1817
    const/4 v0, 0x0

    .line 1819
    .local v0, "dumpAll":Z
    const/4 v1, 0x0

    .line 1820
    .local v1, "opti":I
    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_26

    .line 1821
    aget-object v2, p3, v1

    .line 1822
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_26

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_19

    .line 1823
    goto :goto_26

    .line 1825
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 1826
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1827
    const/4 v0, 0x1

    .line 1828
    goto :goto_26

    .line 1830
    .end local v2    # "opt":Ljava/lang/String;
    :cond_25
    goto :goto_2

    .line 1832
    :cond_26
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   (changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1835
    const-string v2, " ago)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBatchingEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBatchingStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBatchSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFixInterval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    if-eqz v0, :cond_11c

    .line 1842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSupportsPsds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PsdsServerConfigured="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 1844
    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssConfiguration;->isLongTermPsdsServerConfigured()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1843
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    const-string/jumbo v2, "native internal state: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/hal/GnssNative;->getInternalState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    :cond_11c
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->loadLocationInformation()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1852
    const-string v2, "GLP information:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1853
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3, p2}, Lcom/android/server/location/LocationDumpLogStub;->dump(ILjava/io/PrintWriter;)V

    .line 1855
    const-string v2, "NMEA information:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3, p2}, Lcom/android/server/location/LocationDumpLogStub;->dump(ILjava/io/PrintWriter;)V

    .line 1858
    return-void
.end method

.method public getBatchSize()I
    .registers 2

    .line 986
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getBatchSize()I

    move-result v0

    return v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .line 1596
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public injectTime(JJI)V
    .registers 12
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 614
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/gnss/hal/GnssNative;->injectTime(JJI)V

    .line 615
    return-void
.end method

.method public isAutomotiveGnssSuspended()Z
    .registers 3

    .line 879
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 881
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method synthetic lambda$handleDownloadPsdsData$3$com-android-server-location-gnss-GnssLocationProvider(I[B)V
    .registers 7
    .param p1, "psdsType"    # I
    .param p2, "data"    # [B

    .line 754
    const/16 v0, 0x1be

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 756
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "GnssLocationProvider"

    const-string v1, "calling native_inject_psds_data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_10
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inject psds/LTO data, data length is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    array-length v1, p2

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectPsdsData([BII)V

    .line 763
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    .line 765
    monitor-exit v0

    .line 766
    return-void

    .line 765
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_43

    throw v1
.end method

.method synthetic lambda$handleDownloadPsdsData$4$com-android-server-location-gnss-GnssLocationProvider(I)V
    .registers 2
    .param p1, "psdsType"    # I

    .line 773
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method synthetic lambda$handleDownloadPsdsData$5$com-android-server-location-gnss-GnssLocationProvider(I)V
    .registers 2
    .param p1, "psdsType"    # I

    .line 785
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method synthetic lambda$handleDownloadPsdsData$6$com-android-server-location-gnss-GnssLocationProvider(I)V
    .registers 10
    .param p1, "psdsType"    # I

    .line 749
    new-instance v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 750
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;-><init>(Ljava/util/Properties;)V

    .line 751
    .local v0, "psdsDownloader":Lcom/android/server/location/gnss/GnssPsdsDownloader;
    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->downloadPsdsData(I)[B

    move-result-object v1

    .line 752
    .local v1, "data":[B
    if-eqz v1, :cond_59

    .line 753
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 768
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_58

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v3, 0x1

    if-ne p1, v3, :cond_58

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 770
    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssConfiguration;->isPsdsPeriodicDownloadEnabled()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 771
    sget-boolean v3, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_42

    const-string v3, "GnssLocationProvider"

    const-string/jumbo v4, "scheduling next long term Psds download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_42
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 773
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    const-wide/32 v6, 0x5265c00

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 777
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_58
    goto :goto_6d

    .line 782
    :cond_59
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 783
    :try_start_5c
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v3

    .line 784
    .local v3, "backoffMillis":J
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_95

    .line 785
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 790
    .end local v3    # "backoffMillis":J
    :goto_6d
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 791
    :try_start_70
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 794
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 795
    sget-boolean v2, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_90

    const-string v2, "GnssLocationProvider"

    const-string v4, "WakeLock released by handleDownloadPsdsData()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 797
    :cond_89
    const-string v2, "GnssLocationProvider"

    const-string v4, "WakeLock expired before release in handleDownloadPsdsData()"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_90
    :goto_90
    monitor-exit v3

    .line 801
    return-void

    .line 800
    :catchall_92
    move-exception v2

    monitor-exit v3
    :try_end_94
    .catchall {:try_start_70 .. :try_end_94} :catchall_92

    throw v2

    .line 784
    :catchall_95
    move-exception v3

    :try_start_96
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v3
.end method

.method synthetic lambda$onCapabilitiesChanged$11$com-android-server-location-gnss-GnssLocationProvider()V
    .registers 2

    .line 1880
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasOnDemandTime()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1881
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NtpTimeHelper;->enablePeriodicTimeInjection()V

    .line 1882
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    .line 1885
    :cond_14
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    .line 1886
    return-void
.end method

.method synthetic lambda$onExtraCommand$7$com-android-server-location-gnss-GnssLocationProvider()V
    .registers 2

    .line 1186
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method synthetic lambda$onNetworkAvailable$1$com-android-server-location-gnss-GnssLocationProvider(I)V
    .registers 2
    .param p1, "psdsType"    # I

    .line 626
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method synthetic lambda$onReportLocation$12$com-android-server-location-gnss-GnssLocationProvider(ZLandroid/location/Location;)V
    .registers 3
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1891
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method synthetic lambda$onReportSvStatus$13$com-android-server-location-gnss-GnssLocationProvider(Landroid/location/GnssStatus;)V
    .registers 2
    .param p1, "gnssStatus"    # Landroid/location/GnssStatus;

    .line 1951
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatus(Landroid/location/GnssStatus;)V

    return-void
.end method

.method synthetic lambda$onRequestLocation$15$com-android-server-location-gnss-GnssLocationProvider(ZZ)V
    .registers 3
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z

    .line 2012
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleRequestLocation(ZZ)V

    return-void
.end method

.method synthetic lambda$onRequestPsdsDownload$14$com-android-server-location-gnss-GnssLocationProvider(I)V
    .registers 2
    .param p1, "psdsType"    # I

    .line 1961
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method synthetic lambda$onUpdateSatelliteBlocklist$0$com-android-server-location-gnss-GnssLocationProvider([I[I)V
    .registers 4
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 373
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->setSatelliteBlocklist([I[I)V

    return-void
.end method

.method synthetic lambda$postWithWakeLockHeld$10$com-android-server-location-gnss-GnssLocationProvider(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1805
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_a

    .line 1807
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1808
    nop

    .line 1809
    return-void

    .line 1807
    :catchall_a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1808
    throw v0
.end method

.method synthetic lambda$startBatching$8$com-android-server-location-gnss-GnssLocationProvider(J)V
    .registers 12
    .param p1, "batchLengthMs"    # J

    .line 1330
    const/4 v0, 0x0

    .line 1331
    .local v0, "flush":Z
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1332
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v2, :cond_1c

    .line 1333
    const/4 v0, 0x1

    .line 1334
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 1335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    const-string v6, "GnssLocationProvider"

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1336
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 1334
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1338
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_25

    .line 1340
    if-eqz v0, :cond_24

    .line 1341
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    .line 1343
    :cond_24
    return-void

    .line 1338
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .registers 5
    .param p1, "oldCapabilities"    # Landroid/location/GnssCapabilities;
    .param p2, "newCapabilities"    # Landroid/location/GnssCapabilities;

    .line 1879
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1887
    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1169
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extraCommand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;->getInstance()Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;->isKtGlobalSystem()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1173
    invoke-static {}, Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;->getInstance()Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 1174
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getSuplMode(Z)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 1173
    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;->onExtraCommand(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/location/gnss/GnssConfiguration;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 1175
    invoke-static {}, Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;->getInstance()Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;->isNeedSetSuplHostPort()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1176
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setSuplHostPort()V

    .line 1180
    :cond_46
    const-string v0, "delete_aiding_data"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1181
    invoke-direct {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)V

    goto :goto_9b

    .line 1182
    :cond_52
    const-string v0, "force_time_injection"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1183
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    goto :goto_9b

    .line 1184
    :cond_5e
    const-string v0, "force_psds_injection"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1185
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_9b

    .line 1186
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    goto :goto_9b

    .line 1189
    :cond_73
    const-string/jumbo v0, "request_power_stats"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1190
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStats()V

    goto :goto_9b

    .line 1192
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendExtraCommand: unknown command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_9b
    :goto_9b
    return-void
.end method

.method protected onFlush(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, "added":Z
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    if-eqz v2, :cond_f

    .line 994
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 996
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1c

    .line 997
    if-nez v0, :cond_16

    .line 998
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1b

    .line 1000
    :cond_16
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    .line 1002
    :goto_1b
    return-void

    .line 996
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public onHalRestarted()V
    .registers 6

    .line 1862
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 1863
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1864
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1865
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1866
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    .line 1867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastCloseTime:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->CLOSE_ERROR_SEND_INTERVAL:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3f

    .line 1868
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v1

    const v2, 0x36c74cda

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "AbnormalClose"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "Abnormal close"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v0

    .line 1870
    .local v0, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 1872
    .end local v0    # "event":Lcom/miui/misight/MiEventStub;
    :cond_3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastCloseTime:J

    .line 1874
    :cond_45
    return-void
.end method

.method public onReportAGpsStatus(II[B)V
    .registers 5
    .param p1, "agpsType"    # I
    .param p2, "agpsStatus"    # I
    .param p3, "suplIpAddr"    # [B

    .line 1956
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->onReportAGpsStatus(II[B)V

    .line 1957
    return-void
.end method

.method public onReportLocation(ZLandroid/location/Location;)V
    .registers 4
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1891
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 1892
    return-void
.end method

.method public onReportLocations([Landroid/location/Location;)V
    .registers 13
    .param p1, "locations"    # [Landroid/location/Location;

    .line 1896
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1897
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location batch of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_23
    array-length v0, p1

    if-lez v0, :cond_b6

    .line 1902
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_ab

    .line 1904
    const/4 v0, 0x0

    .line 1905
    .local v0, "fixRealtime":Z
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    .local v2, "i":I
    :goto_2e
    if-ltz v2, :cond_5f

    .line 1906
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    aget-object v5, p1, v2

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1907
    .local v3, "timeDeltaMs":J
    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v5

    aget-object v7, p1, v2

    .line 1908
    invoke-virtual {v7}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 1909
    .local v5, "realtimeDeltaMs":J
    sub-long v7, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    cmp-long v7, v7, v9

    if-lez v7, :cond_5c

    .line 1910
    const/4 v0, 0x1

    .line 1911
    goto :goto_5f

    .line 1905
    .end local v3    # "timeDeltaMs":J
    .end local v5    # "realtimeDeltaMs":J
    :cond_5c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 1915
    .end local v2    # "i":I
    :cond_5f
    :goto_5f
    if-eqz v0, :cond_9f

    .line 1918
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;-><init>()V

    .line 1919
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 1918
    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1921
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    .line 1922
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    array-length v4, p1

    sub-int/2addr v4, v1

    aget-object v1, p1, v4

    .line 1923
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1924
    .local v2, "expectedDeltaMs":J
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_81
    if-ltz v1, :cond_9e

    .line 1925
    aget-object v4, p1, v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    aget-object v6, p1, v1

    .line 1927
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1926
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 1925
    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1924
    add-int/lit8 v1, v1, -0x1

    goto :goto_81

    .line 1929
    .end local v1    # "i":I
    .end local v2    # "expectedDeltaMs":J
    :cond_9e
    goto :goto_ab

    .line 1931
    :cond_9f
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda5;-><init>()V

    .line 1932
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 1931
    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1936
    .end local v0    # "fixRealtime":Z
    :cond_ab
    :goto_ab
    invoke-static {p1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 1940
    :cond_b6
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1941
    :try_start_b9
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    .line 1942
    .local v1, "listeners":[Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1943
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_b9 .. :try_end_ca} :catchall_d6

    .line 1944
    array-length v0, v1

    :goto_cb
    if-ge v2, v0, :cond_d5

    aget-object v3, v1, v2

    .line 1945
    .local v3, "listener":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1944
    .end local v3    # "listener":Ljava/lang/Runnable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 1947
    :cond_d5
    return-void

    .line 1943
    .end local v1    # "listeners":[Ljava/lang/Runnable;
    :catchall_d6
    move-exception v1

    :try_start_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw v1
.end method

.method public onReportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 25
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z

    .line 2031
    move-object/from16 v9, p1

    if-eqz v9, :cond_7f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 2032
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportNfwNotification. proxyApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " protocolStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otherProtocolStackName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v12, p4

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " responseType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v14, p6

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inEmergencyMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v15, p7

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isCachedLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, p8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    goto :goto_8d

    .line 2031
    :cond_7f
    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v8, p8

    .line 2043
    :goto_8d
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-nez v0, :cond_9c

    .line 2044
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportNfwNotification: mGnssVisibilityControl uninitialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-void

    .line 2048
    :cond_9c
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/gnss/GnssVisibilityControl;->reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 2051
    return-void
.end method

.method public onReportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I

    .line 1968
    invoke-direct/range {p0 .. p9}, Lcom/android/server/location/gnss/GnssLocationProvider;->reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V

    .line 1970
    return-void
.end method

.method public onReportSvStatus(Landroid/location/GnssStatus;)V
    .registers 3
    .param p1, "gnssStatus"    # Landroid/location/GnssStatus;

    .line 1951
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssStatus;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 1952
    return-void
.end method

.method public onRequestLocation(ZZ)V
    .registers 5
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z

    .line 2007
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocation. independentFromGnss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUserEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_27
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 2013
    return-void
.end method

.method public onRequestPsdsDownload(I)V
    .registers 3
    .param p1, "psdsType"    # I

    .line 1961
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 1962
    return-void
.end method

.method public onRequestRefLocation()V
    .registers 1

    .line 2022
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestRefLocation()V

    .line 2023
    return-void
.end method

.method public onRequestSetID(I)V
    .registers 9
    .param p1, "flags"    # I

    .line 1974
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1975
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1976
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 1977
    .local v1, "type":I
    const/4 v2, 0x0

    .line 1979
    .local v2, "setId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 1980
    .local v3, "ddSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1981
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1985
    :cond_1b
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRequestSetID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6, v5}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1988
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44

    .line 1989
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1990
    if-eqz v2, :cond_4f

    .line 1992
    const/4 v1, 0x1

    goto :goto_4f

    .line 1994
    :cond_44
    and-int/lit8 v4, p1, 0x2

    if-ne v4, v6, :cond_4f

    .line 1995
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 1996
    if-eqz v2, :cond_4f

    .line 1998
    const/4 v1, 0x2

    .line 2002
    :cond_4f
    :goto_4f
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    if-nez v2, :cond_56

    const-string v5, ""

    goto :goto_57

    :cond_56
    move-object v5, v2

    :goto_57
    invoke-virtual {v4, v1, v5}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsSetId(ILjava/lang/String;)V

    .line 2003
    return-void
.end method

.method public onRequestUtcTime()V
    .registers 1

    .line 2017
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    .line 2018
    return-void
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;

    .line 1006
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1007
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1008
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 1009
    return-void
.end method

.method public declared-synchronized onSystemReady()V
    .registers 7

    monitor-enter p0

    .line 517
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 527
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_mode"

    .line 528
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Handler;)V

    const/4 v4, -0x1

    .line 527
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 537
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    invoke-static {}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->getInstance()Lcom/android/server/location/GnssSmartSatelliteSwitchStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/location/GnssSmartSatelliteSwitchStub;->addCloudControllListener(Landroid/content/Context;)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 542
    monitor-exit p0

    return-void

    .line 516
    .end local p0    # "this":Lcom/android/server/location/gnss/GnssLocationProvider;
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUpdateSatelliteBlocklist([I[I)V
    .registers 6
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 370
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "satellite blacklist changed"

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics;->resetConstellationTypes()V

    .line 375
    return-void
.end method

.method public setAutomotiveGnssSuspended(Z)V
    .registers 4
    .param p1, "suspended"    # Z

    .line 868
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    .line 870
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 871
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 872
    return-void

    .line 870
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method
