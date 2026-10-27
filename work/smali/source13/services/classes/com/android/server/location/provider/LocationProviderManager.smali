.class public Lcom/android/server/location/provider/LocationProviderManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;,
        Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender;,
        Lcom/android/server/location/provider/LocationProviderManager$LastLocation;,
        Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;,
        Lcom/android/server/location/provider/LocationProviderManager$Registration;,
        Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;,
        Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;,
        Lcom/android/server/location/provider/LocationProviderManager$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/ListenerMultiplexer<",
        "Ljava/lang/Object;",
        "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
        "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
        "Landroid/location/provider/ProviderRequest;",
        ">;",
        "Lcom/android/server/location/provider/AbstractLocationProvider$Listener;"
    }
.end annotation


# static fields
.field private static final FASTEST_INTERVAL_JITTER_PERCENTAGE:F = 0.1f

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x7530L

.field private static final MAX_FASTEST_INTERVAL_JITTER_MS:I = 0x7530

.field private static final MAX_GET_CURRENT_LOCATION_TIMEOUT_MS:J = 0x7530L

.field private static final MAX_HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final MIN_COARSE_INTERVAL_MS:J = 0x927c0L

.field private static final MIN_REQUEST_DELAY_MS:J = 0x7530L

.field private static final STATE_STARTED:I = 0x0

.field private static final STATE_STOPPED:I = 0x2

.field private static final STATE_STOPPING:I = 0x1

.field private static final TEMPORARY_APP_ALLOWLIST_DURATION_MS:J = 0x2710L

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "*location*"

.field private static final WAKELOCK_TIMEOUT_MS:J = 0x7530L


# instance fields
.field private final mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field protected final mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

.field private final mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

.field protected final mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

.field protected final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field private final mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field private final mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field protected final mContext:Landroid/content/Context;

.field private mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mEnabled:Landroid/util/SparseBooleanArray;

.field private final mEnabledListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/LocationManagerInternal$ProviderEnabledListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field private final mLastLocations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/provider/LocationProviderManager$LastLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field protected final mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

.field protected final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field private final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field protected final mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

.field private final mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

.field private final mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

.field protected final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

.field protected final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field protected final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field private final mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

.field public final mLock:Ljava/lang/Object;

.field protected final mName:Ljava/lang/String;

.field private final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field protected final mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

.field private final mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/location/provider/IProviderRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

.field protected final mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

.field protected final mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

.field private mState:I

.field private mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

.field private final mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

.field protected final mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method public static synthetic $r8$lambda$7vYP1LE5Krt1P5aJHlhzdbr3rWw(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onBackgroundThrottleIntervalChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$93NUqXTfUSE5tZtsl_LWgfbHlOc(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onIgnoreSettingsWhitelistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$F6B3GDX_9_-C_GEaZvMsTrj69Ig(Lcom/android/server/location/provider/LocationProviderManager;ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYed_vtaZnnYqxlvwQkjiVZutKw(Lcom/android/server/location/provider/LocationProviderManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onUserChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$W7lFZ20cmhWN84apIwWNMvRAwMo(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onAdasAllowlistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$fIoNTobs61StXMNZ0ubcdArVE2A(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPackageBlacklistChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gx0iV2d4Hs92jTtc8DG3AG6vEC4(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPowerSaveModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4yxqFMnHPWXkTr04uDEnkKXNeQ(Lcom/android/server/location/provider/LocationProviderManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iYYtJ5cq7fJsNaZmXOLCavDa8i4(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationEnabledChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ocnId8aeOUg5JILeBpsY-M1UGAA(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onBackgroundThrottlePackageWhitelistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$tOu2N67zuUYfUXiymWsHUx8mz2o(Lcom/android/server/location/provider/LocationProviderManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onScreenInteractiveChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;)Landroid/app/AlarmManager$OnAlarmListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPermissionsChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "passiveManager"    # Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 1527
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 1449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    .line 1483
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 1484
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    .line 1486
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 1488
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1490
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 1492
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 1504
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    .line 1506
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1508
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1510
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1512
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    .line 1514
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    .line 1528
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 1529
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 1530
    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 1531
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1532
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 1533
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 1535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 1536
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1538
    const-class v1, Landroid/location/LocationManagerInternal;

    .line 1539
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManagerInternal;

    .line 1538
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManagerInternal;

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 1540
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 1541
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 1542
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    .line 1543
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAlarmHelper()Lcom/android/server/location/injector/AlarmHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    .line 1544
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 1545
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 1546
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    .line 1547
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPowerSaveModeHelper()Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    .line 1548
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getScreenInteractiveHelper()Lcom/android/server/location/injector/ScreenInteractiveHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    .line 1549
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 1550
    new-instance v2, Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {v1}, Lcom/android/server/location/injector/SettingsHelper;->getCoarseLocationAccuracyM()F

    move-result v1

    invoke-direct {v2, v1}, Lcom/android/server/location/fudger/LocationFudger;-><init>(F)V

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    .line 1552
    new-instance v1, Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-direct {v1, v0}, Lcom/android/server/location/provider/MockableLocationProvider;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 1555
    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 1558
    invoke-static {}, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;->getInstance()Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;->registerRestoreCallback(Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub$IRestoreRequest;)V

    .line 1564
    invoke-static {}, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;->getInstance()Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$3;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;->registerRequestCallback(Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub$IRemoveRequest;)V

    .line 1571
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/provider/LocationProviderManager;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->updateService()V

    return-void
.end method

.method private calculateLastLocationRequest(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;
    .registers 9
    .param p1, "baseRequest"    # Landroid/location/LastLocationRequest;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 1822
    new-instance v0, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v0, p1}, Landroid/location/LastLocationRequest$Builder;-><init>(Landroid/location/LastLocationRequest;)V

    .line 1824
    .local v0, "builder":Landroid/location/LastLocationRequest$Builder;
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isLocationSettingsIgnored()Z

    move-result v1

    .line 1825
    .local v1, "locationSettingsIgnored":Z
    if-eqz v1, :cond_2c

    .line 1827
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v2

    .line 1828
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1827
    invoke-virtual {v2, v3, v4}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v3, 0x0

    .line 1829
    invoke-virtual {v2, v3, p2}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1830
    const/4 v1, 0x0

    .line 1833
    :cond_29
    invoke-virtual {v0, v1}, Landroid/location/LastLocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;

    .line 1836
    :cond_2c
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isAdasGnssBypass()Z

    move-result v2

    .line 1837
    .local v2, "adasGnssBypass":Z
    if-eqz v2, :cond_70

    .line 1839
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v4, "gps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1840
    const-string v3, "LocationManagerService"

    const-string v4, "adas gnss bypass request received in non-gps provider"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v2, 0x0

    goto :goto_6d

    .line 1842
    :cond_46
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 1843
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v4

    .line 1842
    invoke-virtual {v3, v4}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v3

    .line 1843
    invoke-virtual {v3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v3

    if-nez v3, :cond_58

    .line 1844
    const/4 v2, 0x0

    goto :goto_6d

    .line 1845
    :cond_58
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    .line 1846
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1845
    invoke-virtual {v3, v4, v5}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 1847
    const/4 v2, 0x0

    .line 1850
    :cond_6d
    :goto_6d
    invoke-virtual {v0, v2}, Landroid/location/LastLocationRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/LastLocationRequest$Builder;

    .line 1853
    :cond_70
    invoke-virtual {v0}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object v3

    return-object v3
.end method

.method private isActive(ZLandroid/location/util/identity/CallerIdentity;)Z
    .registers 7
    .param p1, "isBypass"    # Z
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 2370
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 2371
    if-nez p1, :cond_41

    .line 2372
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2373
    return v1

    .line 2377
    :cond_16
    if-nez p1, :cond_30

    .line 2378
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2379
    return v1

    .line 2381
    :cond_23
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/location/injector/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2382
    return v1

    .line 2385
    :cond_30
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v2

    .line 2386
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2385
    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/injector/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2387
    return v1

    .line 2391
    :cond_41
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$flush$3(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .param p0, "requestCode"    # I
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2078
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->flush(I)V

    .line 2079
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$flush$4(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .param p0, "requestCode"    # I
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2095
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->flush(I)V

    .line 2096
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getCurrentLocation$1(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 1987
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic lambda$mayNotifyGpsBlurListener$20(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 4
    .param p0, "locationResult"    # Landroid/location/LocationResult;
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3147
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->isBlurLocationMode(Landroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3148
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    return-object v0

    .line 3150
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$onAppForegroundChanged$10(IZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 4
    .param p0, "uid"    # I
    .param p1, "foreground"    # Z
    .param p2, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2607
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onForegroundChanged(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onEnabledChanged$18(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2840
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$onLocationPackageBlacklistChanged$11(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2625
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$onLocationPermissionsChanged$12(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2632
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onLocationPermissionsChanged$13(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2638
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onLocationPowerSaveModeChanged$9(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2
    .param p0, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2591
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onLocationUserSettingsChanged$7(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2542
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onAdasGnssLocationEnabledChanged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onReportBlurLocation$19(Landroid/location/util/identity/CallerIdentity;[ZLandroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 6
    .param p0, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p1, "hasBlurApp"    # [Z
    .param p2, "locationResult"    # Landroid/location/LocationResult;
    .param p3, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3127
    invoke-virtual {p3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3128
    invoke-virtual {p3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 3129
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 3130
    invoke-virtual {p3, p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    return-object v0

    .line 3132
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$onReportLocation$16(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 3
    .param p0, "filtered"    # Landroid/location/LocationResult;
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2712
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onScreenInteractiveChanged$8(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2
    .param p0, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2568
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onUserChanged$6(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2525
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$stopManager$0(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 1606
    const/4 v0, 0x1

    return v0
.end method

.method private onAdasAllowlistChanged()V
    .registers 3

    .line 2612
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2613
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2614
    monitor-exit v0

    .line 2615
    return-void

    .line 2614
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private onAppForegroundChanged(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 2602
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2605
    :try_start_3
    invoke-static {}, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;->getInstance()Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;->onAppForegroundChanged(IZ)V

    .line 2607
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;-><init>(IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2608
    monitor-exit v0

    .line 2609
    return-void

    .line 2608
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private onBackgroundThrottleIntervalChanged()V
    .registers 3

    .line 2583
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2584
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2585
    monitor-exit v0

    .line 2586
    return-void

    .line 2585
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private onBackgroundThrottlePackageWhitelistChanged()V
    .registers 3

    .line 2577
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2578
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2579
    monitor-exit v0

    .line 2580
    return-void

    .line 2579
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private onEnabledChanged(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 2768
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2769
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2772
    :cond_d
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_12

    .line 2775
    return-void

    .line 2776
    :cond_12
    const/4 v0, -0x1

    if-ne p1, v0, :cond_28

    .line 2777
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v0

    .line 2778
    .local v0, "runningUserIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    array-length v2, v0

    if-ge v1, v2, :cond_27

    .line 2779
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 2778
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2781
    .end local v1    # "i":I
    :cond_27
    return-void

    .line 2784
    .end local v0    # "runningUserIds":[I
    :cond_28
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2e

    move v2, v0

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2786
    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 2787
    invoke-virtual {v2}, Lcom/android/server/location/provider/MockableLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 2788
    invoke-virtual {v2, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    .line 2790
    .local v0, "enabled":Z
    :goto_4a
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    .line 2791
    .local v2, "index":I
    if-gez v2, :cond_54

    const/4 v3, 0x0

    goto :goto_5e

    :cond_54
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2792
    .local v3, "wasEnabled":Ljava/lang/Boolean;
    :goto_5e
    if-eqz v3, :cond_67

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v0, :cond_67

    .line 2793
    return-void

    .line 2796
    :cond_67
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2799
    if-nez v3, :cond_70

    if-eqz v0, :cond_a9

    .line 2800
    :cond_70
    sget-boolean v4, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v4, :cond_a2

    .line 2801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " provider enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LocationManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :cond_a2
    sget-object v4, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderEnabled(Ljava/lang/String;IZ)V

    .line 2807
    :cond_a9
    if-nez v0, :cond_b8

    .line 2808
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    .line 2809
    .local v4, "lastLocation":Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
    if-eqz v4, :cond_b8

    .line 2810
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->clearLocations()V

    .line 2815
    .end local v4    # "lastLocation":Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
    :cond_b8
    if-eqz v3, :cond_10d

    .line 2817
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v5, "passive"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ef

    .line 2818
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2819
    const-string v6, "android.location.extra.PROVIDER_NAME"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2820
    const-string v5, "android.location.extra.PROVIDER_ENABLED"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    .line 2821
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 2822
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 2823
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2828
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_ef
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10d

    .line 2829
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    new-array v1, v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 2831
    .local v1, "listeners":[Landroid/location/LocationManagerInternal$ProviderEnabledListener;
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0, v1, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2840
    .end local v1    # "listeners":[Landroid/location/LocationManagerInternal$ProviderEnabledListener;
    :cond_10d
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2841
    return-void
.end method

.method private onIgnoreSettingsWhitelistChanged()V
    .registers 3

    .line 2618
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2619
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2620
    monitor-exit v0

    .line 2621
    return-void

    .line 2620
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private onLocationEnabledChanged(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2548
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2549
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 2550
    monitor-exit v0

    return-void

    .line 2553
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 2554
    monitor-exit v0

    .line 2555
    return-void

    .line 2554
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private onLocationPackageBlacklistChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2624
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2625
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2626
    monitor-exit v0

    .line 2627
    return-void

    .line 2626
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private onLocationPermissionsChanged(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 2637
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2638
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2639
    monitor-exit v0

    .line 2640
    return-void

    .line 2639
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private onLocationPermissionsChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2630
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2631
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2633
    monitor-exit v0

    .line 2634
    return-void

    .line 2633
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private onLocationPowerSaveModeChanged(I)V
    .registers 7
    .param p1, "locationPowerSaveMode"    # I

    .line 2589
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2591
    :try_start_3
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2594
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location Power Save mode changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2596
    invoke-static {p1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2594
    invoke-interface {v1, v2, v3}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 2598
    monitor-exit v0

    .line 2599
    return-void

    .line 2598
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "oldSettings"    # Lcom/android/server/location/settings/LocationUserSettings;
    .param p3, "newSettings"    # Lcom/android/server/location/settings/LocationUserSettings;

    .line 2539
    invoke-virtual {p2}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 2540
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2541
    :try_start_d
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2543
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v1

    .line 2545
    :cond_1a
    :goto_1a
    return-void
.end method

.method private onScreenInteractiveChanged(Z)V
    .registers 5
    .param p1, "screenInteractive"    # Z

    .line 2558
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2559
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    invoke-virtual {v1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->getLocationPowerSaveMode()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    :pswitch_c
    goto :goto_22

    .line 2561
    :pswitch_d
    const-string/jumbo v1, "gps"

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2562
    goto :goto_22

    .line 2568
    :cond_19
    :pswitch_19
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2569
    nop

    .line 2573
    :goto_22
    monitor-exit v0

    .line 2574
    return-void

    .line 2573
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_d
        :pswitch_19
        :pswitch_c
        :pswitch_19
    .end packed-switch
.end method

.method private onUserChanged(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "change"    # I

    .line 2517
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2518
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 2519
    monitor-exit v0

    return-void

    .line 2522
    :cond_a
    packed-switch p2, :pswitch_data_24

    goto :goto_1f

    .line 2531
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStopped(I)V

    goto :goto_1f

    .line 2528
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStarted(I)V

    .line 2529
    goto :goto_1f

    .line 2524
    :pswitch_16
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2526
    nop

    .line 2534
    :goto_1f
    monitor-exit v0

    .line 2535
    return-void

    .line 2534
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_16
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method private onUserStarted(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2725
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2726
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2729
    :cond_d
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_12

    .line 2730
    return-void

    .line 2733
    :cond_12
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1e

    .line 2735
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2736
    invoke-direct {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    goto :goto_2e

    .line 2738
    :cond_1e
    if-ltz p1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2741
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2742
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 2744
    :goto_2e
    return-void
.end method

.method private onUserStopped(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2748
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2749
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2752
    :cond_d
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_12

    .line 2753
    return-void

    .line 2756
    :cond_12
    const/4 v0, -0x1

    if-ne p1, v0, :cond_20

    .line 2757
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2758
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_32

    .line 2760
    :cond_20
    if-ltz p1, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2761
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2762
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2764
    :goto_32
    return-void
.end method

.method private setLastLocation(Landroid/location/Location;I)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "userId"    # I

    .line 1917
    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 1918
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v0

    .line 1919
    .local v0, "runningUserIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 1920
    aget v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 1919
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1922
    .end local v1    # "i":I
    :cond_15
    return-void

    .line 1923
    .end local v0    # "runningUserIds":[I
    :cond_16
    const/4 v0, -0x2

    if-ne p2, v0, :cond_23

    .line 1924
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 1925
    return-void

    .line 1928
    :cond_23
    if-ltz p2, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1930
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1931
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    .line 1932
    .local v1, "lastLocation":Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
    if-nez v1, :cond_43

    .line 1933
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    invoke-direct {v2}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;-><init>()V

    move-object v1, v2

    .line 1934
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1937
    :cond_43
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1938
    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->set(Landroid/location/Location;)V

    .line 1940
    :cond_4c
    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->setBypass(Landroid/location/Location;)V

    .line 1941
    .end local v1    # "lastLocation":Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
    monitor-exit v0

    .line 1942
    return-void

    .line 1941
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_51

    throw v1
.end method


# virtual methods
.method public addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 1672
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1673
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1674
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    monitor-exit v0

    .line 1676
    return-void

    .line 1675
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/provider/IProviderRequestListener;

    .line 1687
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    return-void
.end method

.method protected calculateRequestDelayMillis(JLjava/util/Collection;)J
    .registers 19
    .param p1, "newIntervalMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)J"
        }
    .end annotation

    .line 2480
    .local p3, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/location/provider/LocationProviderManager$Registration;>;"
    move-wide/from16 v0, p1

    .line 2481
    .local v0, "delayMs":J
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2482
    .local v3, "registration":Lcom/android/server/location/provider/LocationProviderManager$Registration;
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_19

    .line 2483
    goto :goto_58

    .line 2486
    :cond_19
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v6

    .line 2487
    .local v6, "locationRequest":Landroid/location/LocationRequest;
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v7

    .line 2489
    .local v7, "last":Landroid/location/Location;
    if-nez v7, :cond_40

    invoke-virtual {v6}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v8

    if-nez v8, :cond_40

    .line 2493
    nop

    .line 2494
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v10

    .line 2495
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v11

    const/4 v12, 0x0

    .line 2497
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v13

    .line 2493
    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v7

    .line 2501
    :cond_40
    if-nez v7, :cond_45

    .line 2503
    const-wide/16 v4, 0x0

    .local v4, "registrationDelayMs":J
    goto :goto_53

    .line 2506
    .end local v4    # "registrationDelayMs":J
    :cond_45
    nop

    .line 2507
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 2506
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2510
    .restart local v4    # "registrationDelayMs":J
    :goto_53
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2511
    .end local v3    # "registration":Lcom/android/server/location/provider/LocationProviderManager$Registration;
    .end local v4    # "registrationDelayMs":J
    .end local v6    # "locationRequest":Landroid/location/LocationRequest;
    .end local v7    # "last":Landroid/location/Location;
    goto :goto_6

    .line 2513
    :cond_58
    :goto_58
    return-wide v0
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2871
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2872
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2873
    const-string v1, " provider"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2874
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2875
    const-string v1, " [mock]"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2877
    :cond_1a
    const-string v1, ":"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2880
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2882
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v1

    .line 2883
    .local v1, "userIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_71

    aget v4, v1, v3

    .line 2884
    .local v4, "userId":I
    array-length v5, v1

    const/4 v11, 0x1

    if-eq v5, v11, :cond_46

    .line 2885
    const-string/jumbo v5, "user "

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2886
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2887
    const-string v5, ":"

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2890
    :cond_46
    const-string/jumbo v5, "last location="

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2891
    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    move-object v5, p0

    move v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2892
    const-string v5, "enabled="

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {p0, v4}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v5

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2894
    array-length v5, v1

    if-eq v5, v11, :cond_6e

    .line 2895
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2883
    .end local v4    # "userId":I
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 2898
    .end local v1    # "userIds":[I
    :cond_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_7b

    .line 2900
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/provider/MockableLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2902
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2903
    return-void

    .line 2898
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public flush(Landroid/app/PendingIntent;I)V
    .registers 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "requestCode"    # I

    .line 2091
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_27

    .line 2094
    .local v1, "identity":J
    :try_start_7
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v3
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_21

    .line 2098
    .local v3, "flushed":Z
    if-eqz v3, :cond_18

    .line 2103
    .end local v3    # "flushed":Z
    :try_start_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2104
    nop

    .line 2105
    .end local v1    # "identity":J
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_27

    .line 2106
    return-void

    .line 2099
    .restart local v1    # "identity":J
    .restart local v3    # "flushed":Z
    :cond_18
    :try_start_18
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unregistered pending intent cannot be flushed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p2    # "requestCode":I
    throw v4
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_21

    .line 2103
    .end local v3    # "flushed":Z
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p2    # "requestCode":I
    :catchall_21
    move-exception v3

    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2104
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p2    # "requestCode":I
    throw v3

    .line 2105
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p2    # "requestCode":I
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public flush(Landroid/location/ILocationListener;I)V
    .registers 9
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "requestCode"    # I

    .line 2074
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2075
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2b

    .line 2077
    .local v1, "identity":J
    :try_start_7
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;

    invoke-direct {v4, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v3
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_25

    .line 2081
    .local v3, "flushed":Z
    if-eqz v3, :cond_1c

    .line 2085
    .end local v3    # "flushed":Z
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    nop

    .line 2087
    .end local v1    # "identity":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_2b

    .line 2088
    return-void

    .line 2082
    .restart local v1    # "identity":J
    .restart local v3    # "flushed":Z
    :cond_1c
    :try_start_1c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unregistered listener cannot be flushed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "listener":Landroid/location/ILocationListener;
    .end local p2    # "requestCode":I
    throw v4
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_25

    .line 2085
    .end local v3    # "flushed":Z
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "listener":Landroid/location/ILocationListener;
    .restart local p2    # "requestCode":I
    :catchall_25
    move-exception v3

    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "listener":Landroid/location/ILocationListener;
    .end local p2    # "requestCode":I
    throw v3

    .line 2087
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "listener":Landroid/location/ILocationListener;
    .restart local p2    # "requestCode":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public getCurrentLocation(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationCallback;)Landroid/os/ICancellationSignal;
    .registers 12
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "permissionLevel"    # I
    .param p4, "callback"    # Landroid/location/ILocationCallback;

    .line 1946
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 1947
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 1948
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1949
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p1

    .line 1952
    :cond_17
    new-instance v6, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;

    invoke-direct {v4, p4}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;-><init>(Landroid/location/ILocationCallback;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    .line 1959
    .local v0, "registration":Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1960
    :try_start_29
    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_30

    const/4 v2, 0x1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_64

    .line 1963
    .local v2, "ident":J
    :try_start_38
    invoke-interface {p4}, Landroid/location/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/location/provider/LocationProviderManager;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 1964
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->isActive()Z

    move-result v4

    if-nez v4, :cond_48

    .line 1966
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->deliverNull()V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_5e

    .line 1969
    :cond_48
    :try_start_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1970
    nop

    .line 1971
    .end local v2    # "ident":J
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_64

    .line 1973
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 1974
    .local v1, "cancelTransport":Landroid/os/ICancellationSignal;
    invoke-static {v1}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, p4, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V

    .line 1975
    invoke-virtual {v2, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1995
    return-object v1

    .line 1969
    .end local v1    # "cancelTransport":Landroid/os/ICancellationSignal;
    .restart local v2    # "ident":J
    :catchall_5e
    move-exception v4

    :try_start_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1970
    nop

    .end local v0    # "registration":Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "request":Landroid/location/LocationRequest;
    .end local p2    # "identity":Landroid/location/util/identity/CallerIdentity;
    .end local p3    # "permissionLevel":I
    .end local p4    # "callback":Landroid/location/ILocationCallback;
    throw v4

    .line 1971
    .end local v2    # "ident":J
    .restart local v0    # "registration":Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    .restart local p2    # "identity":Landroid/location/util/identity/CallerIdentity;
    .restart local p3    # "permissionLevel":I
    .restart local p4    # "callback":Landroid/location/ILocationCallback;
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_64

    throw v2
.end method

.method public getLastLocation(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;I)Landroid/location/Location;
    .registers 12
    .param p1, "request"    # Landroid/location/LastLocationRequest;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "permissionLevel"    # I

    .line 1785
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->calculateLastLocationRequest(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;

    move-result-object p1

    .line 1787
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isBypass()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1788
    return-object v1

    .line 1792
    :cond_10
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-static {p3}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1794
    return-object v1

    .line 1797
    :cond_1d
    nop

    .line 1799
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    .line 1801
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isBypass()Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    .line 1798
    move-object v2, p0

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v0

    .line 1797
    invoke-virtual {p0, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocation(Landroid/location/Location;I)Landroid/location/Location;

    move-result-object v0

    .line 1805
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_47

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_47

    .line 1808
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v0, v1

    .line 1811
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    if-nez v0, :cond_5e

    .line 1812
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v1

    .line 1813
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getLocationIfBlurMode(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;I)Landroid/location/Location;

    move-result-object v0

    .line 1817
    :cond_5e
    return-object v0
.end method

.method public getLastLocationUnsafe(IIZJ)Landroid/location/Location;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "permissionLevel"    # I
    .param p3, "isBypass"    # Z
    .param p4, "maximumAgeMs"    # J

    .line 1865
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2d

    .line 1867
    const/4 v0, 0x0

    .line 1868
    .local v0, "lastLocation":Landroid/location/Location;
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v1

    .line 1869
    .local v1, "runningUserIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_2c

    .line 1870
    aget v5, v1, v2

    move-object v4, p0

    move v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v3

    .line 1872
    .local v3, "next":Landroid/location/Location;
    if-eqz v0, :cond_28

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 1873
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_29

    .line 1874
    :cond_28
    move-object v0, v3

    .line 1869
    .end local v3    # "next":Landroid/location/Location;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1877
    .end local v2    # "i":I
    :cond_2c
    return-object v0

    .line 1878
    .end local v0    # "lastLocation":Landroid/location/Location;
    .end local v1    # "runningUserIds":[I
    :cond_2d
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3f

    .line 1879
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 1883
    :cond_3f
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_45

    move v2, v1

    goto :goto_46

    :cond_45
    move v2, v0

    :goto_46
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1886
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1887
    :try_start_4c
    iget v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_52

    move v0, v1

    :cond_52
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1888
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    .line 1889
    .local v0, "lastLocation":Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
    if-nez v0, :cond_61

    .line 1890
    const/4 v1, 0x0

    .local v1, "location":Landroid/location/Location;
    goto :goto_65

    .line 1892
    .end local v1    # "location":Landroid/location/Location;
    :cond_61
    invoke-virtual {v0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->get(IZ)Landroid/location/Location;

    move-result-object v1

    .line 1894
    .end local v0    # "lastLocation":Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
    .restart local v1    # "location":Landroid/location/Location;
    :goto_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_74

    .line 1896
    const/4 v0, 0x0

    if-nez v1, :cond_6a

    .line 1897
    return-object v0

    .line 1900
    :cond_6a
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-lez v2, :cond_73

    .line 1901
    return-object v0

    .line 1904
    :cond_73
    return-object v1

    .line 1894
    .end local v1    # "location":Landroid/location/Location;
    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1629
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPermittedLocation(Landroid/location/Location;I)Landroid/location/Location;
    .registers 4
    .param p1, "fineLocation"    # Landroid/location/Location;
    .param p2, "permissionLevel"    # I

    .line 2845
    packed-switch p2, :pswitch_data_16

    .line 2852
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2847
    :pswitch_9
    return-object p1

    .line 2849
    :pswitch_a
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {v0, p1}, Lcom/android/server/location/fudger/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;
    .registers 4
    .param p1, "fineLocationResult"    # Landroid/location/LocationResult;
    .param p2, "permissionLevel"    # I

    .line 2858
    packed-switch p2, :pswitch_data_16

    .line 2866
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2860
    :pswitch_9
    return-object p1

    .line 2862
    :pswitch_a
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {v0, p1}, Lcom/android/server/location/fudger/LocationFudger;->createCoarse(Landroid/location/LocationResult;)Landroid/location/LocationResult;

    move-result-object v0

    goto :goto_14

    .line 2863
    :cond_13
    const/4 v0, 0x0

    .line 2862
    :goto_14
    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public getProperties()Landroid/location/provider/ProviderProperties;
    .registers 2

    .line 1641
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    return-object v0
.end method

.method public getProviderIdentity()Landroid/location/util/identity/CallerIdentity;
    .registers 2

    .line 1637
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    return-object v0
.end method

.method protected getServiceState()Ljava/lang/String;
    .registers 2

    .line 2907
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->getCurrentRequest()Landroid/location/provider/ProviderRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    .line 1633
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1575
    const-string v0, "LocationManagerService"

    return-object v0
.end method

.method public hasProvider()Z
    .registers 2

    .line 1645
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->getProvider()Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public injectLastLocation(Landroid/location/Location;I)V
    .registers 11
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "userId"    # I

    .line 1908
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1909
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1910
    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, p0

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1911
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 1913
    :cond_20
    monitor-exit v0

    .line 1914
    return-void

    .line 1913
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method protected bridge synthetic isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .registers 2

    .line 149
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p1

    return p1
.end method

.method protected isActive(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 6
    .param p1, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2327
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2328
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2331
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 2332
    return v1

    .line 2335
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v0

    .line 2336
    .local v0, "isBypass":Z
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2337
    return v1

    .line 2340
    :cond_28
    if-nez v0, :cond_50

    .line 2341
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    invoke-virtual {v2}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->getLocationPowerSaveMode()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    goto :goto_50

    .line 2343
    :pswitch_34
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v2

    if-nez v2, :cond_50

    .line 2344
    return v1

    .line 2348
    :pswitch_3b
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 2349
    goto :goto_50

    .line 2355
    :cond_47
    :pswitch_47
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    invoke-virtual {v2}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_50

    .line 2356
    return v1

    .line 2366
    :cond_50
    :goto_50
    const/4 v1, 0x1

    return v1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_47
        :pswitch_34
        :pswitch_47
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 1649
    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_6

    .line 1650
    return v0

    .line 1651
    :cond_6
    const/4 v1, -0x2

    if-ne p1, v1, :cond_14

    .line 1652
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v0

    return v0

    .line 1655
    :cond_14
    if-ltz p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1657
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1658
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    .line 1659
    .local v1, "index":I
    if-gez v1, :cond_53

    .line 1662
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " provider saw user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unexpectedly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 1664
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    move v1, v2

    .line 1667
    :cond_53
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1668
    .end local v1    # "index":I
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method synthetic lambda$getCurrentLocation$2$com-android-server-location-provider-LocationProviderManager(Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V
    .registers 8
    .param p1, "callback"    # Landroid/location/ILocationCallback;
    .param p2, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    .line 1977
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1979
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7} :catch_19
    .catchall {:try_start_4 .. :try_end_7} :catchall_17

    .line 1980
    :try_start_7
    invoke-interface {p1}, Landroid/location/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/location/provider/LocationProviderManager;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 1981
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_14

    .line 1991
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1992
    nop

    .line 1994
    return-void

    .line 1981
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "callback":Landroid/location/ILocationCallback;
    .end local p2    # "registration":Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
    :try_start_16
    throw v3
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_17} :catch_19
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 1991
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "callback":Landroid/location/ILocationCallback;
    .restart local p2    # "registration":Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
    :catchall_17
    move-exception v2

    goto :goto_28

    .line 1982
    :catch_19
    move-exception v2

    .line 1986
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1a
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    invoke-direct {v4, v2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1989
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "callback":Landroid/location/ILocationCallback;
    .end local p2    # "registration":Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
    throw v2
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_17

    .line 1991
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "callback":Landroid/location/ILocationCallback;
    .restart local p2    # "registration":Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1992
    throw v2
.end method

.method synthetic lambda$onEnabledChanged$17$com-android-server-location-provider-LocationProviderManager([Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V
    .registers 7
    .param p1, "listeners"    # [Landroid/location/LocationManagerInternal$ProviderEnabledListener;
    .param p2, "userId"    # I
    .param p3, "enabled"    # Z

    .line 2832
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 2833
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p3}, Landroid/location/LocationManagerInternal$ProviderEnabledListener;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    .line 2832
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2835
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method synthetic lambda$onReportLocation$15$com-android-server-location-provider-LocationProviderManager(Landroid/location/Location;)Z
    .registers 10
    .param p1, "location"    # Landroid/location/Location;

    .line 2675
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, " provider"

    const-string v3, "LocationManagerService"

    if-nez v0, :cond_3a

    .line 2676
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_3a

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v0, v4, v6

    if-nez v0, :cond_3a

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blocking 0,0 location from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    return v1

    .line 2682
    :cond_3a
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blocking incomplete location from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    return v1

    .line 2687
    :cond_5d
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onStateChanged$14$com-android-server-location-provider-LocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;
    .param p2, "oldState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .param p3, "newState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 2661
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;->onStateChanged(Ljava/lang/String;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-void
.end method

.method synthetic lambda$setProviderRequest$5$com-android-server-location-provider-LocationProviderManager(Landroid/location/provider/ProviderRequest;)V
    .registers 6
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;

    .line 2314
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/IProviderRequestListener;

    .line 2316
    .local v1, "listener":Landroid/location/provider/IProviderRequestListener;
    :try_start_12
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/location/provider/IProviderRequestListener;->onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    .line 2319
    goto :goto_1e

    .line 2317
    :catch_18
    move-exception v2

    .line 2318
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2320
    .end local v1    # "listener":Landroid/location/provider/IProviderRequestListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    goto :goto_6

    .line 2321
    :cond_1f
    return-void
.end method

.method public mayNotifyGpsBlurListener(Landroid/location/LocationResult;)V
    .registers 4
    .param p1, "locationResult"    # Landroid/location/LocationResult;

    .line 3140
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3141
    return-void

    .line 3143
    :cond_e
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1b

    .line 3144
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 3146
    :cond_1b
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;-><init>(Landroid/location/LocationResult;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->deliverToListeners(Ljava/util/function/Function;)V

    .line 3153
    return-void
.end method

.method protected mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)",
            "Landroid/location/provider/ProviderRequest;"
        }
    .end annotation

    .line 2397
    .local p1, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/location/provider/LocationProviderManager$Registration;>;"
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_10

    .line 2398
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_12

    .line 2397
    :cond_10
    move-object/from16 v1, p0

    .line 2401
    :goto_12
    const-wide v2, 0x7fffffffffffffffL

    .line 2402
    .local v2, "intervalMs":J
    const/16 v0, 0x68

    .line 2403
    .local v0, "quality":I
    const-wide v4, 0x7fffffffffffffffL

    .line 2404
    .local v4, "maxUpdateDelayMs":J
    const/4 v6, 0x0

    .line 2405
    .local v6, "adasGnssBypass":Z
    const/4 v7, 0x0

    .line 2406
    .local v7, "locationSettingsIgnored":Z
    const/4 v8, 0x1

    .line 2408
    .local v8, "lowPower":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v8

    move v8, v7

    move v7, v6

    move-wide v5, v4

    move-wide v3, v2

    move v2, v0

    .end local v0    # "quality":I
    .end local v4    # "maxUpdateDelayMs":J
    .end local v6    # "adasGnssBypass":Z
    .local v2, "quality":I
    .local v3, "intervalMs":J
    .local v5, "maxUpdateDelayMs":J
    .local v7, "adasGnssBypass":Z
    .local v8, "locationSettingsIgnored":Z
    .local v10, "lowPower":Z
    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide v11, 0x7fffffffffffffffL

    if-eqz v0, :cond_71

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2409
    .local v0, "registration":Lcom/android/server/location/provider/LocationProviderManager$Registration;
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v13

    .line 2413
    .local v13, "request":Landroid/location/LocationRequest;
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v14

    cmp-long v11, v14, v11

    if-nez v11, :cond_49

    .line 2414
    goto :goto_2b

    .line 2417
    :cond_49
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2418
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getQuality()I

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2419
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v11

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2420
    invoke-virtual {v13}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result v11

    or-int/2addr v7, v11

    .line 2421
    invoke-virtual {v13}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v11

    or-int/2addr v8, v11

    .line 2422
    invoke-virtual {v13}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v11

    and-int/2addr v10, v11

    .line 2423
    .end local v0    # "registration":Lcom/android/server/location/provider/LocationProviderManager$Registration;
    .end local v13    # "request":Landroid/location/LocationRequest;
    goto :goto_2b

    .line 2425
    :cond_71
    cmp-long v0, v3, v11

    if-nez v0, :cond_78

    .line 2426
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object v0

    .line 2429
    :cond_78
    const-wide/16 v11, 0x2

    div-long v13, v5, v11

    cmp-long v0, v13, v3

    if-gez v0, :cond_82

    .line 2431
    const-wide/16 v5, 0x0

    .line 2440
    :cond_82
    const-wide/16 v13, 0x3e8

    :try_start_84
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v13

    div-long/2addr v13, v11

    const/4 v0, 0x3

    invoke-static {v13, v14, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v11
    :try_end_8e
    .catch Ljava/lang/ArithmeticException; {:try_start_84 .. :try_end_8e} :catch_8f

    .line 2445
    .local v11, "thresholdIntervalMs":J
    goto :goto_95

    .line 2441
    .end local v11    # "thresholdIntervalMs":J
    :catch_8f
    move-exception v0

    .line 2444
    .local v0, "e":Ljava/lang/ArithmeticException;
    const-wide v11, 0x7ffffffffffffffeL

    .line 2447
    .end local v0    # "e":Ljava/lang/ArithmeticException;
    .restart local v11    # "thresholdIntervalMs":J
    :goto_95
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 2448
    .local v0, "workSource":Landroid/os/WorkSource;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_102

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2449
    .local v13, "registration":Lcom/android/server/location/provider/LocationProviderManager$Registration;
    invoke-virtual {v13}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v14

    cmp-long v14, v14, v11

    if-gtz v14, :cond_fb

    .line 2451
    invoke-virtual {v0}, Landroid/os/WorkSource;->getName0()Ljava/lang/String;

    move-result-object v14

    .line 2452
    .local v14, "sstr":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getName0()Ljava/lang/String;

    move-result-object v15

    .line 2453
    .local v15, "sstr2":Ljava/lang/String;
    if-nez v14, :cond_c6

    .line 2454
    if-eqz v15, :cond_c3

    move-object v14, v15

    :cond_c3
    move-object/from16 v16, v9

    goto :goto_ec

    .line 2456
    :cond_c6
    if-eqz v15, :cond_ea

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v16, v9

    const/16 v9, 0x40

    if-ge v1, v9, :cond_ec

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "##"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_ec

    :cond_ea
    move-object/from16 v16, v9

    .line 2458
    :cond_ec
    :goto_ec
    invoke-virtual {v0, v14}, Landroid/os/WorkSource;->setName0(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v13}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_fd

    .line 2449
    .end local v14    # "sstr":Ljava/lang/String;
    .end local v15    # "sstr2":Ljava/lang/String;
    :cond_fb
    move-object/from16 v16, v9

    .line 2462
    .end local v13    # "registration":Lcom/android/server/location/provider/LocationProviderManager$Registration;
    :goto_fd
    move-object/from16 v1, p0

    move-object/from16 v9, v16

    goto :goto_9e

    .line 2464
    :cond_102
    new-instance v1, Landroid/location/provider/ProviderRequest$Builder;

    invoke-direct {v1}, Landroid/location/provider/ProviderRequest$Builder;-><init>()V

    .line 2465
    invoke-virtual {v1, v3, v4}, Landroid/location/provider/ProviderRequest$Builder;->setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v1

    .line 2466
    invoke-virtual {v1, v2}, Landroid/location/provider/ProviderRequest$Builder;->setQuality(I)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v1

    .line 2467
    invoke-virtual {v1, v5, v6}, Landroid/location/provider/ProviderRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v1

    .line 2468
    invoke-virtual {v1, v7}, Landroid/location/provider/ProviderRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v1

    .line 2469
    invoke-virtual {v1, v8}, Landroid/location/provider/ProviderRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v1

    .line 2470
    invoke-virtual {v1, v10}, Landroid/location/provider/ProviderRequest$Builder;->setLowPower(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v1

    .line 2471
    invoke-virtual {v1, v0}, Landroid/location/provider/ProviderRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v1

    .line 2472
    invoke-virtual {v1}, Landroid/location/provider/ProviderRequest$Builder;->build()Landroid/location/provider/ProviderRequest;

    move-result-object v1

    .line 2464
    return-object v1
.end method

.method protected bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;

    move-result-object p1

    return-object p1
.end method

.method protected onRegister()V
    .registers 3

    .line 2135
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2136
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2139
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2141
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2143
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 2145
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2147
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2149
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    .line 2150
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->addListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    .line 2151
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->addListener(Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;)V

    .line 2152
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->addListener(Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;)V

    .line 2153
    return-void
.end method

.method protected bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 149
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method protected onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 15
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2180
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2181
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2184
    :cond_d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2187
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2188
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2190
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v7

    instance-of v8, p1, Landroid/app/PendingIntent;

    instance-of v9, p1, Landroid/os/IBinder;

    const/4 v10, 0x0

    .line 2193
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v11

    .line 2184
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 2194
    return-void
.end method

.method protected bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 149
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method protected onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 15
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "registration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2209
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2210
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2213
    :cond_d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 2216
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2217
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2219
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v7

    instance-of v8, p1, Landroid/app/PendingIntent;

    instance-of v9, p1, Landroid/os/IBinder;

    const/4 v10, 0x0

    .line 2222
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v11

    .line 2213
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 2223
    return-void
.end method

.method protected bridge synthetic onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 4

    .line 149
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    check-cast p3, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method protected onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldRegistration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;
    .param p3, "newRegistration"    # Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2202
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->setLastDeliveredLocation(Landroid/location/Location;)V

    .line 2203
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 2204
    return-void
.end method

.method public onReportBlurLocation(Landroid/location/LocationResult;Landroid/location/util/identity/CallerIdentity;)Z
    .registers 6
    .param p1, "locationResult"    # Landroid/location/LocationResult;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 3118
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 3119
    return v1

    .line 3121
    :cond_f
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1c

    .line 3122
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 3125
    :cond_1c
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    .line 3126
    .local v0, "hasBlurApp":[Z
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;-><init>(Landroid/location/util/identity/CallerIdentity;[ZLandroid/location/LocationResult;)V

    invoke-virtual {p0, v2}, Lcom/android/server/location/provider/LocationProviderManager;->deliverToListeners(Ljava/util/function/Function;)V

    .line 3135
    aget-boolean v1, v0, v1

    return v1
.end method

.method public onReportLocation(Landroid/location/LocationResult;)V
    .registers 9
    .param p1, "locationResult"    # Landroid/location/LocationResult;

    .line 2668
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2669
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2673
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eqz v0, :cond_29

    .line 2674
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->filter(Ljava/util/function/Predicate;)Landroid/location/LocationResult;

    move-result-object v0

    .line 2690
    .local v0, "filtered":Landroid/location/LocationResult;
    if-nez v0, :cond_1d

    .line 2691
    return-void

    .line 2695
    :cond_1d
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/LocationResult;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderReceivedLocations(Ljava/lang/String;I)V

    goto :goto_2a

    .line 2698
    .end local v0    # "filtered":Landroid/location/LocationResult;
    :cond_29
    move-object v0, p1

    .line 2701
    .restart local v0    # "filtered":Landroid/location/LocationResult;
    :goto_2a
    const/4 v2, -0x2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v1

    .line 2702
    .local v1, "last":Landroid/location/Location;
    if-eqz v1, :cond_6b

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/location/LocationResult;->get(I)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    .line 2703
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6b

    .line 2704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "non-monotonic location received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :cond_6b
    invoke-virtual {v0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 2711
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;-><init>(Landroid/location/LocationResult;)V

    invoke-virtual {p0, v2}, Lcom/android/server/location/provider/LocationProviderManager;->deliverToListeners(Ljava/util/function/Function;)V

    .line 2716
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eqz v2, :cond_82

    .line 2717
    invoke-virtual {v2, v0}, Lcom/android/server/location/provider/PassiveLocationProviderManager;->updateLocation(Landroid/location/LocationResult;)V

    .line 2720
    :cond_82
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->mayNotifyGpsListener(Ljava/lang/String;Landroid/location/LocationResult;)V

    .line 2721
    return-void
.end method

.method public onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 6
    .param p1, "oldState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .param p2, "newState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 2646
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2647
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2650
    :cond_d
    iget-boolean v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    iget-boolean v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-eq v0, v1, :cond_17

    .line 2651
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 2654
    :cond_17
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2655
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2658
    :cond_29
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    if-eqz v0, :cond_3b

    .line 2659
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 2660
    .local v0, "listener":Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2663
    .end local v0    # "listener":Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;
    :cond_3b
    return-void
.end method

.method protected onUnregister()V
    .registers 3

    .line 2158
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2159
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2162
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2164
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2166
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 2168
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2169
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2171
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    .line 2172
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->removeListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    .line 2173
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->removeListener(Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;)V

    .line 2174
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->removeListener(Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;)V

    .line 2175
    return-void
.end method

.method public registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/app/PendingIntent;)V
    .registers 19
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "callerIdentity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "permissionLevel"    # I
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 2045
    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;

    new-instance v5, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;

    iget-object v1, v7, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v1, v9}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;I)V

    move-object v10, v0

    .line 2051
    .local v10, "registration":Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;
    iget-object v11, v7, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2052
    :try_start_1c
    iget v0, v7, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_80

    move-wide v12, v2

    .line 2058
    .local v12, "identity":J
    :try_start_2c
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getQuality()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_71

    iget-object v0, v7, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 2059
    invoke-static {v1}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lcom/android/server/location/injector/AppOpsHelper;->checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, v7, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v1, 0x2734

    .line 2060
    invoke-virtual {v0, v1, v8}, Lcom/android/server/location/injector/AppOpsHelper;->checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2061
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v1

    .line 2062
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2063
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 2061
    move-object/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->saveLocationRequestId(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2066
    :cond_71
    invoke-virtual {p0, v9, v10}, Lcom/android/server/location/provider/LocationProviderManager;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_74
    .catchall {:try_start_2c .. :try_end_74} :catchall_7a

    .line 2068
    :try_start_74
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2069
    nop

    .line 2070
    .end local v12    # "identity":J
    monitor-exit v11

    .line 2071
    return-void

    .line 2068
    .restart local v12    # "identity":J
    :catchall_7a
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2069
    nop

    .end local v10    # "registration":Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;
    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "request":Landroid/location/LocationRequest;
    .end local p2    # "callerIdentity":Landroid/location/util/identity/CallerIdentity;
    .end local p3    # "permissionLevel":I
    .end local p4    # "pendingIntent":Landroid/app/PendingIntent;
    throw v0

    .line 2070
    .end local v12    # "identity":J
    .restart local v10    # "registration":Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    .restart local p2    # "callerIdentity":Landroid/location/util/identity/CallerIdentity;
    .restart local p3    # "permissionLevel":I
    .restart local p4    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_80
    move-exception v0

    monitor-exit v11
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_80

    throw v0
.end method

.method public registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationListener;)V
    .registers 23
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "permissionLevel"    # I
    .param p4, "listener"    # Landroid/location/ILocationListener;

    .line 2009
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;

    new-instance v5, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;

    move-object/from16 v15, p4

    invoke-direct {v5, v15}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;-><init>(Landroid/location/ILocationListener;)V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;I)V

    .line 2015
    .local v1, "registration":Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;
    iget-object v2, v7, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2016
    :try_start_1c
    iget v0, v7, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2017
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_c1

    .line 2021
    .local v4, "ident":J
    :try_start_2b
    invoke-static {}, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;->getInstance()Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    iget-object v11, v7, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v13

    iget-object v0, v7, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    .line 2022
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/location/injector/AppForegroundHelper;->isAppForeground(I)Z

    move-result v14

    iget-object v0, v7, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 2023
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v6
    :try_end_4f
    .catchall {:try_start_2b .. :try_end_4f} :catchall_b9

    move/from16 v3, p3

    :try_start_51
    invoke-virtual {v0, v3, v6}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v16

    .line 2021
    move/from16 v15, p3

    move-object/from16 v17, p4

    invoke-interface/range {v9 .. v17}, Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub;->request(Landroid/content/Context;Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;ZIZLandroid/location/ILocationListener;)Z

    move-result v0
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_b7

    if-eqz v0, :cond_64

    .line 2038
    :try_start_5f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_c6

    .line 2024
    return-void

    .line 2028
    :cond_64
    :try_start_64
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getQuality()I

    move-result v0

    const/16 v6, 0x64

    if-ne v0, v6, :cond_aa

    iget-object v0, v7, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 2029
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v6

    invoke-virtual {v0, v6, v8}, Lcom/android/server/location/injector/AppOpsHelper;->checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, v7, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v6, 0x2734

    .line 2030
    invoke-virtual {v0, v6, v8}, Lcom/android/server/location/injector/AppOpsHelper;->checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2031
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v9

    .line 2032
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v10

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v7, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2033
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    .line 2031
    move-object/from16 v14, p4

    invoke-interface/range {v9 .. v14}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->saveLocationRequestId(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2036
    :cond_aa
    invoke-interface/range {p4 .. p4}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_b1
    .catchall {:try_start_64 .. :try_end_b1} :catchall_b7

    .line 2038
    :try_start_b1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2039
    nop

    .line 2040
    .end local v4    # "ident":J
    monitor-exit v2

    .line 2041
    return-void

    .line 2038
    .restart local v4    # "ident":J
    :catchall_b7
    move-exception v0

    goto :goto_bc

    :catchall_b9
    move-exception v0

    move/from16 v3, p3

    :goto_bc
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2039
    nop

    .end local v1    # "registration":Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;
    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "request":Landroid/location/LocationRequest;
    .end local p2    # "identity":Landroid/location/util/identity/CallerIdentity;
    .end local p3    # "permissionLevel":I
    .end local p4    # "listener":Landroid/location/ILocationListener;
    throw v0

    .line 2040
    .end local v4    # "ident":J
    .restart local v1    # "registration":Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    .restart local p2    # "identity":Landroid/location/util/identity/CallerIdentity;
    .restart local p3    # "permissionLevel":I
    .restart local p4    # "listener":Landroid/location/ILocationListener;
    :catchall_c1
    move-exception v0

    move/from16 v3, p3

    :goto_c4
    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_b1 .. :try_end_c5} :catchall_c6

    throw v0

    :catchall_c6
    move-exception v0

    goto :goto_c4
.end method

.method protected registerWithService(Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z
    .registers 4
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/provider/ProviderRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)Z"
        }
    .end annotation

    .line 2229
    .local p2, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/location/provider/LocationProviderManager$Registration;>;"
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 149
    check-cast p1, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->registerWithService(Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 1679
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1680
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1681
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1682
    monitor-exit v0

    .line 1683
    return-void

    .line 1682
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/provider/IProviderRequestListener;

    .line 1692
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1693
    return-void
.end method

.method protected reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z
    .registers 10
    .param p1, "oldRequest"    # Landroid/location/provider/ProviderRequest;
    .param p2, "newRequest"    # Landroid/location/provider/ProviderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/provider/ProviderRequest;",
            "Landroid/location/provider/ProviderRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)Z"
        }
    .end annotation

    .line 2236
    .local p3, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/location/provider/LocationProviderManager$Registration;>;"
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2237
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2244
    :cond_d
    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2245
    const-wide/16 v0, 0x0

    .local v0, "delayMs":J
    goto :goto_33

    .line 2246
    .end local v0    # "delayMs":J
    :cond_1c
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 2251
    const-wide/16 v0, 0x0

    .restart local v0    # "delayMs":J
    goto :goto_33

    .line 2253
    .end local v0    # "delayMs":J
    :cond_2b
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/location/provider/LocationProviderManager;->calculateRequestDelayMillis(JLjava/util/Collection;)J

    move-result-wide v0

    .line 2257
    .restart local v0    # "delayMs":J
    :goto_33
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_44

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-gtz v2, :cond_44

    move v2, v3

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2259
    const-wide/16 v4, 0x7530

    cmp-long v2, v0, v4

    if-gez v2, :cond_52

    .line 2260
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_9a

    .line 2262
    :cond_52
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_82

    .line 2263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " provider delaying request update "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2264
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2263
    const-string v4, "LocationManagerService"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_82
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v4, 0x0

    if-eqz v2, :cond_8e

    .line 2268
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v5, v2}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2269
    iput-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2272
    :cond_8e
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$4;

    invoke-direct {v2, p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$4;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    iput-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2287
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v5, v0, v1, v2, v4}, Lcom/android/server/location/injector/AlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V

    .line 2290
    :goto_9a
    return v3
.end method

.method protected bridge synthetic reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4

    .line 149
    check-cast p1, Landroid/location/provider/ProviderRequest;

    check-cast p2, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2001
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/provider/MockableLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderController;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2003
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2004
    nop

    .line 2005
    return-void

    .line 2003
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2004
    throw v2
.end method

.method public setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .registers 8
    .param p1, "provider"    # Lcom/android/server/location/provider/MockLocationProvider;

    .line 1709
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1710
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v4

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1712
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    move v3, v4

    :goto_18
    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderMocked(Ljava/lang/String;Z)V

    .line 1714
    invoke-static {}, Lcom/android/server/location/GnssMockLocationOptStub;->getInstance()Lcom/android/server/location/GnssMockLocationOptStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-interface {v1, v4, v2, v3, p1}, Lcom/android/server/location/GnssMockLocationOptStub;->recordOrderSchedule(ZLjava/lang/String;Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/MockLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1715
    monitor-exit v0

    return-void

    .line 1718
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_5e

    .line 1720
    .local v1, "identity":J
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_58

    .line 1722
    :try_start_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1723
    nop

    .line 1728
    if-nez p1, :cond_56

    .line 1729
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1730
    .local v3, "lastLocationSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_41
    if-ge v4, v3, :cond_51

    .line 1731
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    invoke-virtual {v5}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->clearMock()V

    .line 1730
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 1734
    .end local v4    # "i":I
    :cond_51
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {v4}, Lcom/android/server/location/fudger/LocationFudger;->resetOffsets()V

    .line 1736
    .end local v1    # "identity":J
    .end local v3    # "lastLocationSize":I
    :cond_56
    monitor-exit v0

    .line 1737
    return-void

    .line 1722
    .restart local v1    # "identity":J
    :catchall_58
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1723
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "provider":Lcom/android/server/location/provider/MockLocationProvider;
    throw v3

    .line 1736
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "provider":Lcom/android/server/location/provider/MockLocationProvider;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_34 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public setMockProviderAllowed(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 1740
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1745
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3b

    .line 1747
    .local v1, "identity":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProviderAllowed(Z)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1a

    .line 1749
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1750
    nop

    .line 1751
    .end local v1    # "identity":J
    monitor-exit v0

    .line 1752
    return-void

    .line 1749
    .restart local v1    # "identity":J
    :catchall_1a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1750
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "enabled":Z
    throw v3

    .line 1742
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "enabled":Z
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider is not a test provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "enabled":Z
    throw v1

    .line 1751
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "enabled":Z
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .line 1755
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1758
    :try_start_3
    invoke-static {}, Lcom/android/server/location/GnssMockLocationOptStub;->getInstance()Lcom/android/server/location/GnssMockLocationOptStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v5, v2, v3, v4}, Lcom/android/server/location/GnssMockLocationOptStub;->recordOrderSchedule(ZLjava/lang/String;Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/MockLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1759
    monitor-exit v0

    return-void

    .line 1761
    :cond_15
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1765
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 1766
    .local v1, "locationProvider":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 1769
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "33091107"

    aput-object v6, v3, v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1773
    :cond_63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_93

    .line 1775
    .local v2, "identity":J
    :try_start_67
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProviderLocation(Landroid/location/Location;)V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_72

    .line 1778
    :try_start_6c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1779
    nop

    .line 1780
    .end local v1    # "locationProvider":Ljava/lang/String;
    .end local v2    # "identity":J
    monitor-exit v0

    .line 1781
    return-void

    .line 1778
    .restart local v1    # "locationProvider":Ljava/lang/String;
    .restart local v2    # "identity":J
    :catchall_72
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1779
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "location":Landroid/location/Location;
    throw v4

    .line 1762
    .end local v1    # "locationProvider":Ljava/lang/String;
    .end local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "location":Landroid/location/Location;
    :cond_78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider is not a test provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "location":Landroid/location/Location;
    throw v1

    .line 1780
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "location":Landroid/location/Location;
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_6c .. :try_end_95} :catchall_93

    throw v1
.end method

.method setProviderRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;

    .line 2305
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_c

    .line 2306
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2310
    :cond_c
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderUpdateRequest(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    .line 2311
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 2313
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2322
    return-void
.end method

.method public setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 6
    .param p1, "provider"    # Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 1696
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1697
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    .line 1701
    .local v1, "identity":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1d

    .line 1703
    :try_start_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    nop

    .line 1705
    .end local v1    # "identity":J
    monitor-exit v0

    .line 1706
    return-void

    .line 1703
    .restart local v1    # "identity":J
    :catchall_1d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "provider":Lcom/android/server/location/provider/AbstractLocationProvider;
    throw v3

    .line 1705
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "provider":Lcom/android/server/location/provider/AbstractLocationProvider;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public startManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 1579
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1580
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1581
    iput v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1582
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 1584
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 1585
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/settings/LocationSettings;->registerLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    .line 1586
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 1588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_45

    .line 1590
    .local v1, "identity":J
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v3}, Lcom/android/server/location/provider/MockableLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    .line 1591
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStarted(I)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3f

    .line 1593
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1594
    nop

    .line 1595
    .end local v1    # "identity":J
    monitor-exit v0

    .line 1596
    return-void

    .line 1593
    .restart local v1    # "identity":J
    :catchall_3f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1594
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "listener":Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;
    throw v3

    .line 1595
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "listener":Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public stopManager()V
    .registers 6

    .line 1599
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1600
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x1

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1601
    iput v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_68

    .line 1605
    .local v1, "identity":J
    const/4 v3, -0x1

    :try_start_15
    invoke-direct {p0, v3}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 1606
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda29;

    invoke-direct {v3}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/server/location/provider/LocationProviderManager;->removeRegistrationIf(Ljava/util/function/Predicate;)V

    .line 1607
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v3}, Lcom/android/server/location/provider/MockableLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/location/provider/LocationProviderController;->stop()V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_62

    .line 1609
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    nop

    .line 1612
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v3, v4}, Lcom/android/server/location/injector/UserInfoHelper;->removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 1613
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    invoke-virtual {v3, v4}, Lcom/android/server/location/settings/LocationSettings;->unregisterLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    .line 1614
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v3, v4}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 1618
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1619
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1621
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1622
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1623
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 1624
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1625
    .end local v1    # "identity":J
    monitor-exit v0

    .line 1626
    return-void

    .line 1609
    .restart local v1    # "identity":J
    :catchall_62
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    throw v3

    .line 1625
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_29 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method public unregisterLocationRequest(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 2121
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2122
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    .line 2125
    .local v1, "identity":J
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->removeRegistration(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 2127
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2128
    nop

    .line 2129
    .end local v1    # "identity":J
    monitor-exit v0

    .line 2130
    return-void

    .line 2127
    .restart local v1    # "identity":J
    :catchall_1b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2128
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    throw v3

    .line 2129
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public unregisterLocationRequest(Landroid/location/ILocationListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 2109
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2110
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_25

    .line 2113
    .local v1, "identity":J
    :try_start_12
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/location/provider/LocationProviderManager;->removeRegistration(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1f

    .line 2115
    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2116
    nop

    .line 2117
    .end local v1    # "identity":J
    monitor-exit v0

    .line 2118
    return-void

    .line 2115
    .restart local v1    # "identity":J
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2116
    nop

    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .end local p1    # "listener":Landroid/location/ILocationListener;
    throw v3

    .line 2117
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager;
    .restart local p1    # "listener":Landroid/location/ILocationListener;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    throw v1
.end method

.method protected unregisterWithService()V
    .registers 2

    .line 2296
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 2297
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2300
    :cond_d
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    .line 2301
    return-void
.end method
