.class public Lcom/android/server/location/gnss/GnssLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;
.implements Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;


# static fields
.field public static final DEBUG:Z

.field public static final PROPERTIES:Landroid/location/provider/ProviderProperties;

.field public static final VERBOSE:Z


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAutomotiveSuspend:Z

.field public mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

.field public mBatchingEnabled:Z

.field public mBatchingStarted:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mC2KServerHost:Ljava/lang/String;

.field public mC2KServerPort:I

.field public final mClientSource:Landroid/os/WorkSource;

.field public final mContext:Landroid/content/Context;

.field public final mDownloadInProgressPsdsTypes:Ljava/util/Set;

.field public final mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mFixInterval:I

.field public mFixRequestTime:J

.field public final mFlushListeners:Ljava/util/ArrayList;

.field public final mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field public final mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

.field public mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public mGpsEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mLastFixTime:J

.field public mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

.field public final mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

.field public final mLock:Ljava/lang/Object;

.field public final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field public final mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field public final mNetworkTimeHelper:Lcom/android/server/location/gnss/NetworkTimeHelper;

.field public mNiSuplIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mNiSuplMessageListenerRegistered:Z

.field public final mPendingDownloadPsdsTypes:Ljava/util/Set;

.field public mPositionMode:I

.field public mProviderRequest:Landroid/location/provider/ProviderRequest;

.field public final mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field public final mPsdsPeriodicDownloadToken:Ljava/lang/Object;

.field public mShutdown:Z

.field public mStarted:Z

.field public mStartedChangedElapsedRealtime:J

.field public mSuplEsEnabled:Z

.field public mSuplServerHost:Ljava/lang/String;

.field public mSuplServerPort:I

.field public mSupportsPsds:Z

.field public mTimeToFirstFix:I

.field public final mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public static synthetic $r8$lambda$3pKaQ0RBuHNqDj71WwFuuusMO2o(Lcom/android/server/location/gnss/GnssLocationProvider;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$startBatching$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$AvK5I9nU8V4PHJh3ove0xQCeK3Q(Landroid/telephony/CellInfo;)I
    .registers 1

    .line 1601
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EY8a1qeh3ZgniOkxszZv7ArYamM(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onReportLocation$13(ZLandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P4av5E7_VcXCDWc2O4WPS0B6dK8(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onUpdateSatelliteBlocklist$0([I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q1JQZl5ahtIx0Fbaz5e32hr8rfA(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleDownloadPsdsData$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QBjFeJKafgCc5986nVYh4e27hOk(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onCapabilitiesChanged$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$QpmxIfDSErMpNqzK6n45r7JR7DA(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onRequestLocation$16(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SI-a_a7cUYrR9ZOZ1L2KweRWu2U(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method public static synthetic $r8$lambda$SWsvjniE06w04QP9JgVeKN4OgX8(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onRequestPsdsDownload$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$THONdAwhixn4fmf3peUPVkvJxVo(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UCriMPE9cCf3aUZBmohJ2c88IPM(Landroid/location/Location;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$a5MvCvM35QBPzxzq6uUT9CwYXVE(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$postWithWakeLockHeld$11(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bhbO-HcVDgwXGgj22odDaBV5fiU(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c3gg2KOLPvZx2mtEXA6Nl2_8vYs(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onExtraCommand$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$cEG9-g_JtFLDSLinwbxH0FoQxTg(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    return-void
.end method

.method public static synthetic $r8$lambda$cU4NcLLLKiB1Z-LYN_VMBLlJB3Q(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onNetworkAvailable$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ex9GcuAvo3Q1U9kW7Ndg7dGgHEQ(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->onNetworkAvailable()V

    return-void
.end method

.method public static synthetic $r8$lambda$fppbpJzeT915qgBxeBn44K0Vy-Q(Lcom/android/server/location/gnss/GnssLocationProvider;I[B)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleDownloadPsdsData$3(I[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$kD9u4g7PESErb_hjv9eGI2NrlpM(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssStatus;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onReportSvStatus$14(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kqBSBJ9GE54IiDgU2gJFUO_y9qg(Lcom/android/server/location/gnss/GnssPowerStats;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$nkrBJygdb8wO-Swy2t8Lu4Qnk5s(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleDownloadPsdsData$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pvaCHGEUSphUSz5n1PWLLEnhwVM(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleInitialize()V

    return-void
.end method

.method public static synthetic $r8$lambda$xYueuUp3I00EscyFv18dWc47-NQ(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleDownloadPsdsData$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z-H4YUNse8SpWrTtpqf0yp95bA8(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGnssConfiguration(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssConfiguration;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNIHandler(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmShutdown(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$minjectSuplInit(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msubscriptionOrCarrierConfigChanged(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->subscriptionOrCarrierConfigChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtoggleXtraDaemon(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->toggleXtraDaemon()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEnabled(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 148
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const/4 v2, 0x2

    .line 149
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    .line 151
    new-instance v0, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .registers 9

    .line 414
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    .line 415
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 414
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 254
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    const/16 v0, 0x3e8

    .line 273
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const-wide/16 v0, 0x0

    .line 285
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    const/4 v0, 0x0

    .line 287
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 291
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 295
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    .line 298
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 300
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    .line 310
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 313
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 314
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplMessageListenerRegistered:Z

    .line 316
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 330
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 331
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 579
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$5;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$5;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$6;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$6;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 418
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 419
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 422
    const-class p3, Landroid/os/PowerManager;

    .line 423
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 422
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/os/PowerManager;

    .line 424
    const-string v0, "*location*:GnssLocationProvider"

    const/4 v2, 0x1

    invoke-virtual {p3, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 425
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 428
    const-string v0, "*location*:PsdsDownload"

    invoke-virtual {p3, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 430
    invoke-virtual {p3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 432
    const-string p3, "alarm"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 435
    const-class p3, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 438
    const-string p3, "batterystats"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 442
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 449
    invoke-virtual {p2}, Lcom/android/server/location/gnss/hal/GnssNative;->getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 451
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 474
    new-instance v3, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v3, p1, v0, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;Z)V

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 478
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p1, v1, v4, v3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 483
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/android/server/location/gnss/NetworkTimeHelper;->create(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;)Lcom/android/server/location/gnss/NetworkTimeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/NetworkTimeHelper;

    .line 484
    new-instance v0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 486
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v0, p1, p3, p0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 488
    invoke-virtual {p0, v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->setAllowed(Z)V

    .line 490
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 491
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addLocationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;)V

    .line 492
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V

    .line 493
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setAGpsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;)V

    .line 494
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setPsdsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;)V

    .line 495
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setNotificationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;)V

    .line 496
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setLocationRequestCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;)V

    .line 497
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setTimeCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;)V

    return-void
.end method

.method public static getCellType(Landroid/telephony/CellInfo;)I
    .registers 2

    .line 1510
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 1512
    :cond_6
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_c

    const/4 p0, 0x4

    return p0

    .line 1514
    :cond_c
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_12

    const/4 p0, 0x3

    return p0

    .line 1516
    :cond_12
    instance-of p0, p0, Landroid/telephony/CellInfoNr;

    if-eqz p0, :cond_18

    const/4 p0, 0x6

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J
    .registers 7

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 1532
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eq v2, v3, :cond_30

    if-eq v2, v4, :cond_28

    const/4 v3, 0x3

    if-eq v2, v3, :cond_20

    const/4 v3, 0x4

    if-eq v2, v3, :cond_17

    move-wide v2, v0

    goto :goto_38

    .line 1534
    :cond_17
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    :goto_1e
    int-to-long v2, v2

    goto :goto_38

    .line 1535
    :cond_20
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    goto :goto_1e

    .line 1536
    :cond_28
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v2

    goto :goto_38

    .line 1533
    :cond_30
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    goto :goto_1e

    .line 1540
    :goto_38
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result p0

    if-ne p0, v4, :cond_44

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_47

    :cond_44
    const-wide/32 v4, 0x7fffffff

    :goto_47
    cmp-long p0, v2, v4

    if-nez p0, :cond_4c

    return-wide v0

    :cond_4c
    return-wide v2
.end method


# virtual methods
.method public final deleteAidingData(Landroid/os/Bundle;)V
    .registers 5

    const v0, 0xffff

    if-nez p1, :cond_7

    goto/16 :goto_8e

    .line 1201
    :cond_7
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1202
    const-string v2, "almanac"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    or-int/lit8 v1, v1, 0x2

    .line 1203
    :cond_17
    const-string/jumbo v2, "position"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    or-int/lit8 v1, v1, 0x4

    .line 1204
    :cond_22
    const-string/jumbo v2, "time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    or-int/lit8 v1, v1, 0x8

    .line 1205
    :cond_2d
    const-string v2, "iono"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    or-int/lit8 v1, v1, 0x10

    .line 1206
    :cond_37
    const-string/jumbo v2, "utc"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    or-int/lit8 v1, v1, 0x20

    .line 1207
    :cond_42
    const-string v2, "health"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    or-int/lit8 v1, v1, 0x40

    .line 1208
    :cond_4c
    const-string/jumbo v2, "svdir"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    or-int/lit16 v1, v1, 0x80

    .line 1209
    :cond_57
    const-string/jumbo v2, "svsteer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    or-int/lit16 v1, v1, 0x100

    .line 1210
    :cond_62
    const-string/jumbo v2, "sadata"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    or-int/lit16 v1, v1, 0x200

    .line 1211
    :cond_6d
    const-string/jumbo v2, "rti"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    or-int/lit16 v1, v1, 0x400

    .line 1212
    :cond_78
    const-string v2, "celldb-info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 1213
    :cond_84
    const-string v2, "all"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8d

    goto :goto_8e

    :cond_8d
    move v0, v1

    :goto_8e
    if-eqz v0, :cond_95

    .line 1217
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->deleteAidingData(I)V

    :cond_95
    return-void
.end method

.method public final demandUtcTimeInjection()V
    .registers 3

    .line 1504
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "GnssLocationProvider"

    const-string v1, "demandUtcTimeInjection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/NetworkTimeHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/NetworkTimeHelper;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const/4 p1, 0x0

    move v0, p1

    .line 1662
    :cond_2
    array-length v1, p3

    if-ge v0, v1, :cond_23

    .line 1663
    aget-object v1, p3, v0

    if-eqz v1, :cond_23

    .line 1664
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_18

    goto :goto_23

    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 1668
    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 1674
    :cond_23
    :goto_23
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   (changed "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1677
    const-string p3, " ago)"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBatchingEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBatchingStarted="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBatchSize="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mFixInterval="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_135

    .line 1684
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/NetworkTimeHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/location/gnss/NetworkTimeHelper;->dump(Ljava/io/PrintWriter;)V

    .line 1685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSupportsPsds="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNiSuplMessageListenerRegistered="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplMessageListenerRegistered:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PsdsServerConfigured="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 1691
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssConfiguration;->isLongTermPsdsServerConfigured()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1690
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    const-string/jumbo p1, "native internal state: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/hal/GnssNative;->getInternalState()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isAssistedGpsEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isAssistedGpsEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_135
    return-void
.end method

.method public getBatchSize()I
    .registers 1

    .line 1013
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getBatchSize()I

    move-result p0

    return p0
.end method

.method public final getSuplMode(Z)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 880
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {p1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result p1

    if-nez p1, :cond_c

    return v0

    .line 887
    :cond_c
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMsb()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-eqz p1, :cond_1d

    return p0

    :cond_1d
    return v0
.end method

.method public final handleDisable()V
    .registers 3

    .line 951
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 953
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 954
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 955
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 956
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 958
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v1, :cond_24

    .line 959
    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    .line 962
    :cond_24
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanupBatching()V

    .line 963
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanup()V

    return-void
.end method

.method public final handleDownloadPsdsData(I)V
    .registers 6

    .line 772
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-nez v0, :cond_c

    .line 774
    const-string p0, "GnssLocationProvider"

    const-string p1, "handleDownloadPsdsData() called when PSDS not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 777
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isAssistedGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 779
    const-string p0, "GnssLocationProvider"

    const-string p1, "handleDownloadPsdsData() called when PSDS disabled by system setting"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 782
    :cond_1a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_33

    .line 784
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_25
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 786
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw p0

    .line 789
    :cond_33
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_36
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 791
    sget-boolean p0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz p0, :cond_64

    .line 792
    const-string p0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSDS type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " download in progress. Ignore the request."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :catchall_62
    move-exception p0

    goto :goto_8c

    .line 795
    :cond_64
    :goto_64
    monitor-exit v0

    return-void

    .line 798
    :cond_66
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 799
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_36 .. :try_end_78} :catchall_62

    .line 801
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 800
    :goto_8c
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_62

    throw p0
.end method

.method public final handleEnable()V
    .registers 7

    .line 922
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_b

    const-string v0, "handleEnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    .line 927
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 928
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->isPsdsSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 931
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 932
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsServer(ILjava/lang/String;I)V

    .line 935
    :cond_2b
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 936
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerPort:I

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsServer(ILjava/lang/String;I)V

    .line 940
    :cond_37
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->initBatching()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->getBatchSize()I

    move-result v1

    if-le v1, v0, :cond_48

    move v2, v0

    :cond_48
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    .line 941
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz p0, :cond_51

    .line 942
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    :cond_51
    return-void

    .line 945
    :cond_52
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 946
    const-string p0, "Failed to enable location provider"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleInitialize()V
    .registers 7

    .line 537
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isGnssVisibilityControlSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 538
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 544
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 547
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 548
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 557
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 560
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    .line 561
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 560
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    .line 562
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7d

    .line 563
    const-string/jumbo v1, "network"

    new-instance v3, Landroid/location/LocationRequest$Builder;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 v4, 0x0

    .line 566
    invoke-virtual {v3, v4, v5}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v3

    .line 567
    invoke-virtual {v3, v2}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object v3

    .line 568
    invoke-virtual {v3}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v3

    sget-object v4, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 563
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 573
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 574
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_83
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mInitialized:Z

    .line 576
    monitor-exit v0

    return-void

    :catchall_87
    move-exception p0

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public final handleReportLocation(ZLandroid/location/Location;)V
    .registers 9

    .line 1358
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportLocation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_1f
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 1363
    :try_start_29
    new-array v0, v0, [Landroid/location/Location;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-static {v0}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_39
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_29 .. :try_end_39} :catch_113

    .line 1369
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_67

    .line 1370
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logReceivedLocationStatus(Z)V

    if-eqz p1, :cond_9b

    .line 1372
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1373
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/location/gnss/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1375
    :cond_53
    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez p2, :cond_9b

    .line 1376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    long-to-int p2, v2

    .line 1377
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2, p2}, Lcom/android/server/location/gnss/GnssMetrics;->logMissedReports(II)V

    goto :goto_9b

    .line 1384
    :cond_67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long p2, v2, v4

    if-lez p2, :cond_9b

    .line 1386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected GNSS Location report "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after location turned off"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x3a98

    cmp-long v0, v2, v4

    if-lez v0, :cond_98

    .line 1390
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 1392
    :cond_98
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_9b
    :goto_9b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1399
    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez p2, :cond_d2

    if-eqz p1, :cond_d2

    .line 1400
    iget-wide p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v2, p1

    long-to-int p1, v2

    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1401
    sget-boolean p1, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz p1, :cond_c7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TTFF: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_c7
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_d2

    .line 1403
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {p1, p2}, Lcom/android/server/location/gnss/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1407
    :cond_d2
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_f0

    .line 1412
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result p1

    if-nez p1, :cond_f0

    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const p2, 0xea60

    if-ge p1, p2, :cond_f0

    .line 1413
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1417
    :cond_f0
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result p1

    if-nez p1, :cond_112

    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_112

    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 p2, 0x2710

    if-le p1, p2, :cond_112

    .line 1419
    sget-boolean p1, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz p1, :cond_10f

    const-string p1, "got fix, hibernating"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_10f
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    :cond_112
    return-void

    :catch_113
    move-exception p0

    .line 1365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dropping invalid location: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleReportSvStatus(Landroid/location/GnssStatus;)V
    .registers 10

    .line 1426
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logCn0(Landroid/location/GnssStatus;)V

    .line 1428
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_23

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SV count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1436
    :goto_2c
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v5

    if-ge v1, v5, :cond_73

    .line 1437
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1438
    new-instance v5, Landroid/util/Pair;

    .line 1439
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1438
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 1441
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v5

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_60

    .line 1442
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v4

    float-to-int v4, v4

    :cond_60
    int-to-float v3, v3

    .line 1444
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 1445
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/location/gnss/GnssMetrics;->logConstellationType(I)V

    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_73
    if-lez v2, :cond_76

    .line 1449
    div-int/2addr v3, v2

    .line 1452
    :cond_76
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1454
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logSvStatus(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public final handleRequestLocation(ZZ)V
    .registers 12

    .line 693
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_12

    .line 694
    sget-boolean p0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz p0, :cond_9c

    .line 695
    const-string p0, "RequestLocation is denied due to too frequent requests."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 699
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 700
    const-string v2, "gnss_hal_location_request_duration_millis"

    const-wide/16 v3, 0x2710

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2c

    .line 705
    const-string p0, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 709
    :cond_2c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 713
    new-instance v4, Landroid/location/LocationRequest$Builder;

    const-wide/16 v5, 0x3e8

    invoke-direct {v4, v5, v6}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/4 v5, 0x1

    .line 714
    invoke-virtual {v4, v5}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v4

    if-eqz p1, :cond_52

    .line 720
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;-><init>()V

    const/16 v6, 0x68

    .line 721
    invoke-virtual {v4, v6}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    const-string/jumbo v6, "network"

    goto :goto_5e

    .line 725
    :cond_52
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    const/16 v6, 0x64

    .line 726
    invoke-virtual {v4, v6}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    const-string v6, "fused"

    .line 731
    :goto_5e
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 732
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 733
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object p0

    if-nez p2, :cond_73

    .line 734
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 p2, 0x2

    if-ge p0, p2, :cond_79

    .line 735
    :cond_73
    invoke-virtual {v4, v5}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    const-wide/16 v7, 0x3

    mul-long/2addr v2, v7

    .line 740
    :cond_79
    invoke-virtual {v4, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    .line 745
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 743
    const-string p2, "GNSS HAL Requesting location updates from %s provider for %d millis."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 742
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object p0

    if-eqz p0, :cond_9c

    .line 748
    invoke-virtual {v4}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    sget-object p2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v6, p0, p2, p1}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    :cond_9c
    return-void
.end method

.method public final hibernate()V
    .registers 10

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1353
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long v4, v0, v3

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-string v6, "GnssLocationProvider"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final injectBestLocation(Landroid/location/Location;)V
    .registers 4

    .line 754
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectBestLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_1a
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 762
    :cond_21
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method public final injectLocation(Landroid/location/Location;)V
    .registers 3

    .line 855
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-nez v0, :cond_b

    .line 856
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectLocation(Landroid/location/Location;)V

    :cond_b
    return-void
.end method

.method public final injectSuplInit(Landroid/content/Intent;)V
    .registers 6

    .line 616
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isNfwLocationAccessAllowed()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-nez v0, :cond_e

    .line 617
    const-string p0, "Reject SUPL INIT as no NFW location access"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 621
    :cond_e
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 624
    const-string p0, "Invalid slot index"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 629
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 630
    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 631
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1

    if-nez p1, :cond_35

    .line 633
    const-string p0, "Message does not exist in the intent"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 636
    :cond_35
    array-length v1, p1

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v1, :cond_56

    aget-object v3, p1, v2

    .line 637
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v3

    .line 638
    invoke-virtual {p0, v3, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectSuplInit([BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 640
    :cond_45
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 641
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectSuplInit([BI)V

    :cond_56
    return-void
.end method

.method public final injectSuplInit([BI)V
    .registers 5

    if-eqz p1, :cond_2f

    .line 648
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suplInit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " slotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_29
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->injectNiSuplMessageData([BII)V

    :cond_2f
    return-void
.end method

.method public injectTime(JJI)V
    .registers 6

    .line 673
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/gnss/hal/GnssNative;->injectTime(JJI)V

    return-void
.end method

.method public final isAssistedGpsEnabled()Z
    .registers 4

    .line 1892
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1894
    const-string v1, "GnssLocationProvider"

    const-string v2, "Forcing Assisted GPS due to emergency"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_f
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "assisted_gps_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_22

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    return v2

    :cond_22
    :goto_22
    const/4 p0, 0x1

    return p0
.end method

.method public isAutomotiveGnssSuspended()Z
    .registers 3

    .line 916
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    if-eqz v1, :cond_f

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    .line 918
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public final isGpsEnabled()Z
    .registers 2

    .line 1002
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1004
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isNfwLocationAccessAllowed()Z
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isInEmergencySession()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 660
    :cond_a
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz p0, :cond_15

    .line 661
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->hasLocationPermissionEnabledProxyApps()Z

    move-result p0

    if-eqz p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final isRequestLocationRateLimited()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$handleDownloadPsdsData$3(I[B)V
    .registers 5

    const/16 v0, 0x1be

    .line 808
    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 810
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "GnssLocationProvider"

    const-string v1, "calling native_inject_psds_data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_10
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    array-length v1, p2

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectPsdsData([BII)V

    .line 812
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 813
    :try_start_19
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    .line 814
    monitor-exit p1

    return-void

    :catchall_20
    move-exception p0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final synthetic lambda$handleDownloadPsdsData$4(I)V
    .registers 2

    .line 822
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method public final synthetic lambda$handleDownloadPsdsData$5(I)V
    .registers 2

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method public final synthetic lambda$handleDownloadPsdsData$6(I)V
    .registers 7

    .line 803
    new-instance v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 804
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;-><init>(Ljava/util/Properties;)V

    .line 805
    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->downloadPsdsData(I)[B

    move-result-object v0

    if-eqz v0, :cond_59

    .line 807
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 816
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 817
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 819
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->isPsdsPeriodicDownloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 820
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_42

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "scheduling next long term Psds download"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_42
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_6d

    .line 831
    :cond_59
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_5c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v1

    .line 833
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_9f

    .line 834
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 839
    :cond_6d
    :goto_6d
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 840
    :try_start_70
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 843
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 844
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_92

    const-string v0, "GnssLocationProvider"

    const-string v2, "WakeLock released by handleDownloadPsdsData()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    :catchall_89
    move-exception p0

    goto :goto_9d

    .line 846
    :cond_8b
    const-string v0, "GnssLocationProvider"

    const-string v2, "WakeLock expired before release in handleDownloadPsdsData()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_92
    :goto_92
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 850
    monitor-exit v1

    return-void

    :goto_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_70 .. :try_end_9e} :catchall_89

    throw p0

    :catchall_9f
    move-exception p0

    .line 833
    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public final synthetic lambda$onCapabilitiesChanged$12()V
    .registers 3

    .line 1720
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "onCapabilitiesChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasOnDemandTime()Z

    move-result v0

    .line 1728
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/NetworkTimeHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/NetworkTimeHelper;->setPeriodicTimeInjectionMode(Z)V

    if-eqz v0, :cond_1c

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->demandUtcTimeInjection()V

    .line 1733
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    return-void
.end method

.method public final synthetic lambda$onExtraCommand$7()V
    .registers 2

    const/4 v0, 0x1

    .line 1184
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method public final synthetic lambda$onNetworkAvailable$1(I)V
    .registers 2

    .line 685
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method public final synthetic lambda$onReportLocation$13(ZLandroid/location/Location;)V
    .registers 3

    .line 1739
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method public final synthetic lambda$onReportSvStatus$14(Landroid/location/GnssStatus;)V
    .registers 2

    .line 1804
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatus(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public final synthetic lambda$onRequestLocation$16(ZZ)V
    .registers 3

    .line 1864
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleRequestLocation(ZZ)V

    return-void
.end method

.method public final synthetic lambda$onRequestPsdsDownload$15(I)V
    .registers 2

    .line 1814
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method public final synthetic lambda$onUpdateSatelliteBlocklist$0([I[I)V
    .registers 3

    .line 347
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->setSatelliteBlocklist([I[I)V

    return-void
.end method

.method public final synthetic lambda$postWithWakeLockHeld$11(Ljava/lang/Runnable;)V
    .registers 2

    .line 1647
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 1649
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_9
    move-exception p1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1650
    throw p1
.end method

.method public final synthetic lambda$startBatching$9(J)V
    .registers 12

    .line 1307
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1308
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_20

    .line 1310
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v4, v3, p1

    const-string v6, "GnssLocationProvider"

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1312
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v3, 0x2

    .line 1310
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 p1, 0x1

    goto :goto_21

    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto :goto_2a

    :cond_20
    const/4 p1, 0x0

    .line 1314
    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    if-eqz p1, :cond_29

    .line 1317
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    :cond_29
    return-void

    .line 1314
    :goto_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_1d

    throw p0
.end method

.method public onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .registers 3

    .line 1719
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1178
    const-string p1, "delete_aiding_data"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1179
    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)V

    return-void

    .line 1180
    :cond_c
    const-string p1, "force_time_injection"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->demandUtcTimeInjection()V

    return-void

    .line 1182
    :cond_18
    const-string p1, "force_psds_injection"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1183
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isAssistedGpsEnabled()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1184
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    :cond_32
    return-void

    .line 1187
    :cond_33
    const-string/jumbo p1, "request_power_stats"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 1188
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance p1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStats(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V

    return-void

    .line 1190
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sendExtraCommand: unknown command "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssLocationProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .registers 4

    .line 1019
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    if-eqz v1, :cond_10

    .line 1021
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_11

    :catchall_e
    move-exception p0

    goto :goto_1e

    :cond_10
    const/4 v1, 0x0

    .line 1023
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_e

    if-nez v1, :cond_18

    .line 1025
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1027
    :cond_18
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    return-void

    .line 1023
    :goto_1e
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_e

    throw p0
.end method

.method public onHalRestarted()V
    .registers 3

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 1702
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1703
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    .line 1708
    :cond_13
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    :try_start_16
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mInitialized:Z

    if-eqz v1, :cond_27

    .line 1710
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->unregisterNetworkCallbacks()V

    .line 1711
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 1713
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_25

    throw p0
.end method

.method public final onNetworkAvailable()V
    .registers 5

    .line 680
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/NetworkTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NetworkTimeHelper;->onNetworkAvailable()V

    .line 682
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isAssistedGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 683
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_12
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 685
    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    goto :goto_18

    :catchall_31
    move-exception p0

    goto :goto_3a

    .line 687
    :cond_33
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 688
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_31

    throw p0

    :cond_3c
    return-void
.end method

.method public onReportAGpsStatus(II[B)V
    .registers 4

    .line 1809
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->onReportAGpsStatus(II[B)V

    return-void
.end method

.method public onReportLocation(ZLandroid/location/Location;)V
    .registers 4

    .line 1739
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReportLocations([Landroid/location/Location;)V
    .registers 11

    .line 1744
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1745
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location batch of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_20
    array-length v0, p1

    if-lez v0, :cond_c1

    .line 1750
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_9d

    .line 1753
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    :goto_2a
    if-ltz v0, :cond_91

    add-int/lit8 v2, v0, 0x1

    .line 1754
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1755
    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v5

    aget-object v2, p1, v0

    .line 1756
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 1757
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_8e

    .line 1766
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 1767
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 1766
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1769
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    .line 1770
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    .line 1771
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 1772
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    :goto_73
    if-ltz v0, :cond_9d

    .line 1773
    aget-object v1, p1, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1775
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1774
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 1773
    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_73

    :cond_8e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 1779
    :cond_91
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;-><init>()V

    .line 1780
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 1779
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1785
    :cond_9d
    :try_start_9d
    invoke-static {p1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_a8
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_9d .. :try_end_a8} :catch_a9

    goto :goto_c1

    :catch_a9
    move-exception p0

    .line 1787
    const-string p1, "GnssLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping invalid locations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1793
    :cond_c1
    :goto_c1
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1794
    :try_start_c4
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    .line 1795
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1796
    monitor-exit p1
    :try_end_d5
    .catchall {:try_start_c4 .. :try_end_d5} :catchall_e1

    .line 1797
    array-length p0, v0

    :goto_d6
    if-ge v1, p0, :cond_e0

    aget-object p1, v0, v1

    .line 1798
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    :cond_e0
    return-void

    :catchall_e1
    move-exception p0

    .line 1796
    :try_start_e2
    monitor-exit p1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw p0
.end method

.method public onReportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 9

    .line 1881
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-nez p0, :cond_d

    .line 1882
    const-string p0, "GnssLocationProvider"

    const-string/jumbo p1, "reportNfwNotification: mGnssVisibilityControl uninitialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1886
    :cond_d
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/location/gnss/GnssVisibilityControl;->reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method public onReportSvStatus(Landroid/location/GnssStatus;)V
    .registers 3

    .line 1804
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssStatus;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestLocation(ZZ)V
    .registers 5

    .line 1859
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocation. independentFromGnss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_23
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestPsdsDownload(I)V
    .registers 3

    .line 1814
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestRefLocation()V
    .registers 1

    .line 1874
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestRefLocation()V

    return-void
.end method

.method public onRequestSetID(I)V
    .registers 8

    .line 1819
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 1820
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1823
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v1

    .line 1827
    const-string v2, ""

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    .line 1828
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsSetId(ILjava/lang/String;)V

    return-void

    .line 1832
    :cond_1c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 1833
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v5}, Lcom/android/server/location/gnss/GnssConfiguration;->isActiveSimEmergencySuplEnabled()Z

    move-result v5

    if-eqz v5, :cond_38

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 1834
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getActiveSubId()I

    move-result v1

    if-ltz v1, :cond_38

    .line 1835
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getActiveSubId()I

    move-result v4

    .line 1837
    :cond_38
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1838
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    :cond_42
    and-int/lit8 v1, p1, 0x1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4f

    .line 1841
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5c

    move v3, v4

    goto :goto_5c

    :cond_4f
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_5b

    .line 1847
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5c

    move v3, v1

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x0

    .line 1854
    :cond_5c
    :goto_5c
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    if-nez p1, :cond_61

    goto :goto_62

    :cond_61
    move-object v2, p1

    :goto_62
    invoke-virtual {p0, v3, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsSetId(ILjava/lang/String;)V

    return-void
.end method

.method public onRequestUtcTime()V
    .registers 1

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->demandUtcTimeInjection()V

    return-void
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 2

    .line 1033
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    return-void
.end method

.method public declared-synchronized onSystemReady()V
    .registers 7

    monitor-enter p0

    .line 502
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 512
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    .line 513
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$3;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider$3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Handler;)V

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 512
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 522
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    .line 523
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$4;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Handler;)V

    const/4 v4, 0x0

    .line 522
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 532
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_61

    .line 534
    monitor-exit p0

    return-void

    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method

.method public onUpdateSatelliteBlocklist([I[I)V
    .registers 5

    .line 347
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->resetConstellationTypes()V

    return-void
.end method

.method public final postWithWakeLockHeld(Ljava/lang/Runnable;)V
    .registers 5

    .line 1644
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1645
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 1653
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_19
    return-void
.end method

.method public final reloadGpsProperties()V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V

    .line 400
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setSuplHostPort()V

    .line 402
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerPort:I

    .line 404
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 405
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 406
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v0, :cond_39

    .line 407
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V

    .line 409
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->toggleXtraDaemon()V

    return-void
.end method

.method public final requestRefLocation()V
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 1626
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    .line 1623
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 1620
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1591
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    .line 1592
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1594
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x1

    .line 1617
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1595
    const-string v9, "GnssLocationProvider"

    const/4 v10, 0x2

    if-ne v6, v7, :cond_d5

    .line 1597
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_cf

    .line 1599
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1600
    new-instance v11, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;

    invoke-direct {v11}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v11}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v11

    .line 1601
    invoke-interface {v11}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v11

    .line 1600
    invoke-interface {v5, v11}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1603
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_49
    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_87

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/CellInfo;

    .line 1604
    invoke-virtual {v11}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v12

    .line 1605
    invoke-virtual {v11}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v13

    if-nez v13, :cond_63

    if-eq v12, v7, :cond_63

    if-ne v12, v10, :cond_49

    .line 1608
    :cond_63
    invoke-virtual {v11}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v12

    .line 1609
    invoke-static {v11}, Lcom/android/server/location/gnss/GnssLocationProvider;->getCellType(Landroid/telephony/CellInfo;)I

    move-result v11

    .line 1610
    invoke-static {v12}, Lcom/android/server/location/gnss/GnssLocationProvider;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_49

    .line 1611
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_49

    .line 1612
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 1617
    :cond_87
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 1619
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    .line 1618
    invoke-virtual {v0, v7, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    return-void

    .line 1620
    :cond_97
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1622
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    .line 1621
    invoke-virtual {v0, v10, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    return-void

    .line 1623
    :cond_a7
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 1625
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    .line 1624
    invoke-virtual {v0, v3, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    return-void

    .line 1626
    :cond_b7
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 1628
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    const/16 v2, 0x8

    .line 1627
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    return-void

    .line 1630
    :cond_c9
    const-string v0, "No available serving cell information."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1633
    :cond_cf
    const-string v0, "Error getting cell location info."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d5
    if-ne v6, v10, :cond_dc

    .line 1636
    const-string v0, "CDMA not supported."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    return-void
.end method

.method public final restartLocationRequest()V
    .registers 3

    .line 1498
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1500
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    return-void
.end method

.method public setAutomotiveGnssSuspended(Z)V
    .registers 3

    .line 905
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    .line 907
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 908
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_11
    move-exception p0

    .line 907
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setGpsEnabled(Z)V
    .registers 3

    .line 895
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 897
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setPositionMode(IIIZ)Z
    .registers 18

    .line 1098
    new-instance v0, Lcom/android/server/location/gnss/GnssPositionMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssPositionMode;-><init>(IIIIIZ)V

    .line 1100
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    if-eqz v1, :cond_19

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 p0, 0x1

    return p0

    .line 1104
    :cond_19
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p1

    move v8, p2

    move/from16 v9, p3

    move/from16 v12, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->setPositionMode(IIIIIZ)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1107
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    return p1

    :cond_2c
    const/4 v0, 0x0

    .line 1109
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    return p1
.end method

.method public final setRefLocation(ILandroid/telephony/CellIdentity;)V
    .registers 16

    .line 1549
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v0

    .line 1550
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7fffffff

    if-eqz v0, :cond_13

    .line 1551
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_14

    :cond_13
    move v5, v2

    :goto_14
    if-eqz v1, :cond_1c

    .line 1552
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    goto :goto_1d

    :cond_1c
    move v6, v2

    :goto_1d
    const/4 v0, 0x1

    if-eq p1, v0, :cond_71

    const/4 v0, 0x2

    if-eq p1, v0, :cond_62

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_35

    const-wide v0, 0x7fffffffffffffffL

    move-wide v8, v0

    move v7, v2

    move v10, v7

    :goto_32
    move v11, v10

    move v12, v11

    goto :goto_7d

    .line 1577
    :cond_35
    check-cast p2, Landroid/telephony/CellIdentityNr;

    .line 1578
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v0

    .line 1579
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v3

    .line 1580
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v4

    .line 1581
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p2

    move v12, p2

    move-wide v8, v0

    move v7, v2

    move v10, v3

    move v11, v4

    goto :goto_7d

    .line 1571
    :cond_4d
    check-cast p2, Landroid/telephony/CellIdentityLte;

    .line 1572
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v0

    int-to-long v0, v0

    .line 1573
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    .line 1574
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p2

    move v11, p2

    move-wide v8, v0

    move v7, v2

    move v12, v7

    move v10, v3

    goto :goto_7d

    .line 1566
    :cond_62
    check-cast p2, Landroid/telephony/CellIdentityWcdma;

    .line 1567
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    int-to-long v0, v0

    .line 1568
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p2

    :goto_6d
    move v7, p2

    move-wide v8, v0

    move v10, v2

    goto :goto_32

    .line 1561
    :cond_71
    check-cast p2, Landroid/telephony/CellIdentityGsm;

    .line 1562
    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v0

    int-to-long v0, v0

    .line 1563
    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p2

    goto :goto_6d

    .line 1586
    :goto_7d
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJIII)V

    return-void
.end method

.method public final setStarted(Z)V
    .registers 4

    .line 1343
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eq v0, p1, :cond_c

    .line 1344
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    :cond_c
    return-void
.end method

.method public final setSuplHostPort()V
    .registers 4

    .line 861
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 863
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_22

    if-lez v0, :cond_22

    const v2, 0xffff

    if-gt v0, v2, :cond_22

    .line 866
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsServer(ILjava/lang/String;I)V

    :cond_22
    return-void
.end method

.method public final startBatching(J)V
    .registers 11

    .line 1294
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 1296
    sget-boolean v2, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v3, "GnssLocationProvider"

    if-eqz v2, :cond_2a

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_2a
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

    if-eqz v2, :cond_64

    .line 1300
    iput-boolean v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_63

    .line 1305
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;J)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1320
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v3, v2, p1

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1322
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v2, 0x2

    .line 1320
    const-string v5, "GnssLocationProvider"

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_63
    return-void

    .line 1325
    :cond_64
    const-string/jumbo p0, "native_start_batch failed in startBatching()"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startNavigating()V
    .registers 10

    .line 1222
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_be

    .line 1223
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_10

    const-string/jumbo v2, "startNavigating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v2, 0x0

    .line 1224
    iput v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    const-wide/16 v3, 0x0

    .line 1225
    iput-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    const/4 v3, 0x1

    .line 1226
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1227
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isAssistedGpsEnabled()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->getSuplMode(Z)I

    move-result v4

    iput v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    if-eqz v0, :cond_50

    if-eqz v4, :cond_38

    if-eq v4, v3, :cond_35

    const/4 v0, 0x2

    if-eq v4, v0, :cond_32

    .line 1243
    const-string/jumbo v0, "unknown"

    goto :goto_3b

    .line 1238
    :cond_32
    const-string v0, "MS_ASSISTED"

    goto :goto_3b

    .line 1241
    :cond_35
    const-string v0, "MS_BASED"

    goto :goto_3b

    .line 1235
    :cond_38
    const-string/jumbo v0, "standalone"

    .line 1246
    :goto_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting position_mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_50
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    goto :goto_61

    :cond_5f
    const/16 v0, 0x3e8

    .line 1250
    :goto_61
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1251
    invoke-virtual {v4}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v4

    .line 1250
    invoke-virtual {p0, v3, v2, v0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIZ)Z

    move-result v0

    if-nez v0, :cond_79

    .line 1252
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1253
    const-string/jumbo p0, "set_position_mode failed in startNavigating()"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1256
    :cond_79
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->start()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 1257
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1258
    const-string/jumbo p0, "native_start failed in startNavigating()"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1263
    :cond_8b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 1265
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v0

    if-nez v0, :cond_be

    .line 1268
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_be

    .line 1269
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v3, 0xea60

    add-long v4, v0, v3

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 1269
    const-string v6, "GnssLocationProvider"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_be
    return-void
.end method

.method public final stopBatching()V
    .registers 3

    .line 1330
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopBatching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    if-eqz v0, :cond_29

    .line 1332
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_1c

    .line 1333
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    .line 1334
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1336
    :cond_1c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    .line 1337
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopBatch()V

    const/4 v0, 0x0

    .line 1338
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    :cond_29
    return-void
.end method

.method public final stopNavigating()V
    .registers 3

    .line 1278
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    .line 1280
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1281
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stop()Z

    const-wide/16 v0, 0x0

    .line 1282
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    const/4 v0, 0x0

    .line 1284
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 1287
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1289
    :cond_25
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public final subscriptionOrCarrierConfigChanged()V
    .registers 7

    .line 352
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_c

    const-string/jumbo v2, "received SIM related action: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_c
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    .line 354
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 355
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "carrier_config"

    .line 356
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 357
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 358
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 359
    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 361
    :cond_2f
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_88

    if-eqz v0, :cond_4f

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM MCC/MNC is available: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    const/4 v0, 0x0

    if-eqz v3, :cond_67

    .line 366
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 367
    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    if-eqz v1, :cond_67

    .line 369
    const-string v2, "gps.persist_lpp_mode_bool"

    .line 370
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_68

    :cond_67
    move v1, v0

    .line 373
    :goto_68
    const-string/jumbo v2, "persist.sys.gps.lpp"

    if-eqz v1, :cond_7f

    .line 375
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig(ZI)V

    .line 377
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getLppProfile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 380
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 384
    :cond_7f
    const-string v0, ""

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_84
    :goto_84
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    goto :goto_94

    :cond_88
    if-eqz v0, :cond_8f

    .line 388
    const-string v0, "SIM MCC/MNC is still not available"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_8f
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V

    .line 393
    :goto_94
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 394
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->isNiSuplMessageInjectionEnabled()Z

    move-result v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateNiSuplMessageListenerRegistration(Z)V

    return-void
.end method

.method public final toggleXtraDaemon()V
    .registers 3

    .line 1901
    const-string v0, "GnssLocationProvider"

    const-string v1, "Toggling xtra-daemon via property"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isAssistedGpsEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    .line 1902
    const-string/jumbo v0, "persist.sys.xtra-daemon.enabled"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateClientUids(Landroid/os/WorkSource;)V
    .registers 12

    .line 1115
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_a9

    .line 1121
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    .line 1123
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1129
    :goto_1a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6c

    .line 1131
    aget-object v4, v0, v3

    .line 1132
    aget-object v0, v0, v2

    if-eqz v4, :cond_48

    .line 1135
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_30
    if-ge v6, v5, :cond_48

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1136
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1137
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 1136
    invoke-virtual {v8, v1, v9, v7}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    goto :goto_30

    :cond_48
    if-eqz v0, :cond_67

    .line 1142
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :goto_4f
    if-ge v5, v4, :cond_67

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/os/WorkSource$WorkChain;

    .line 1143
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v8

    .line 1144
    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 1143
    invoke-virtual {v7, v1, v8, v6}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    goto :goto_4f

    .line 1148
    :cond_67
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1153
    :cond_6c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object p1

    if-eqz p1, :cond_a9

    .line 1155
    aget-object v0, p1, v3

    .line 1156
    aget-object p1, p1, v2

    if-eqz v0, :cond_91

    move v2, v3

    .line 1160
    :goto_7b
    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-ge v2, v4, :cond_91

    .line 1161
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1162
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v5

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    .line 1161
    invoke-virtual {v4, v1, v5, v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_91
    if-eqz p1, :cond_a9

    .line 1168
    :goto_93
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-ge v3, v0, :cond_a9

    .line 1169
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    .line 1170
    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 1169
    invoke-virtual {v0, v1, v2, v4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    :cond_a9
    :goto_a9
    return-void
.end method

.method public final updateEnabled()V
    .registers 6

    .line 970
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 971
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    .line 972
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getVisibleUsers()Ljava/util/Set;

    move-result-object v1

    .line 973
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 974
    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1e

    .line 978
    :cond_30
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    .line 979
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 980
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    if-eqz v0, :cond_44

    move v2, v1

    :cond_44
    or-int v0, v3, v2

    .line 983
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 984
    :try_start_49
    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    xor-int/2addr v3, v1

    and-int/2addr v0, v3

    .line 985
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_63

    .line 988
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 990
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_59

    return-void

    :cond_59
    if-eqz v0, :cond_5f

    .line 995
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleEnable()V

    return-void

    .line 997
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDisable()V

    return-void

    :catchall_63
    move-exception p0

    .line 985
    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public final updateNiSuplMessageListenerRegistration(Z)V
    .registers 7

    .line 1458
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isNativeAgpsRilSupported()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5f

    .line 1461
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplMessageListenerRegistered:Z

    if-ne v0, p1, :cond_e

    goto :goto_5f

    .line 1468
    :cond_e
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1469
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1471
    :try_start_18
    const-string v1, "application/vnd.omaloc-supl-init"

    .line 1472
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_25

    .line 1474
    :catch_1e
    const-string v1, "GnssLocationProvider"

    const-string v2, "Malformed SUPL init mime type"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :goto_25
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1481
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    const-string/jumbo v2, "sms"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1483
    const-string v2, "localhost"

    const-string v3, "7275"

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_55

    .line 1486
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1488
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1490
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplMessageListenerRegistered:Z

    goto :goto_5f

    .line 1492
    :cond_55
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 1493
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNiSuplMessageListenerRegistered:Z

    :goto_5f
    return-void
.end method

.method public final updateRequirements()V
    .registers 10

    .line 1040
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    if-eqz v0, :cond_106

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_106

    .line 1044
    :cond_c
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequest "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_29
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1047
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_57

    .line 1050
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    goto :goto_76

    .line 1052
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval overflow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    .line 1053
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1056
    :goto_76
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1057
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1061
    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    if-eqz v4, :cond_a1

    const-wide/16 v4, 0x2

    div-long v4, v2, v4

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_a1

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1063
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1064
    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->startBatching(J)V

    return-void

    .line 1066
    :cond_a1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 1068
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1070
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1071
    invoke-virtual {v3}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v3

    const/4 v4, 0x0

    .line 1070
    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIZ)Z

    move-result p0

    if-nez p0, :cond_106

    .line 1072
    const-string/jumbo p0, "set_position_mode failed in updateRequirements"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1074
    :cond_cc
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_d4

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    return-void

    .line 1079
    :cond_d4
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1080
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_106

    .line 1083
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1084
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v3, 0xea60

    add-long v4, v0, v3

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 1083
    const-string v6, "GnssLocationProvider"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    .line 1090
    :cond_f8
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    :cond_106
    :goto_106
    return-void
.end method
