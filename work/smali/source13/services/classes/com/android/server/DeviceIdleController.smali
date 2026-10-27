.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$Shell;,
        Lcom/android/server/DeviceIdleController$Injector;,
        Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$MotionListener;
    }
.end annotation


# static fields
.field private static final ACTIVE_REASON_ALARM:I = 0x7

.field private static final ACTIVE_REASON_CHARGING:I = 0x3

.field private static final ACTIVE_REASON_FORCED:I = 0x6

.field private static final ACTIVE_REASON_FROM_BINDER_CALL:I = 0x5

.field private static final ACTIVE_REASON_MOTION:I = 0x1

.field private static final ACTIVE_REASON_SCREEN:I = 0x2

.field private static final ACTIVE_REASON_UNKNOWN:I = 0x0

.field private static final ACTIVE_REASON_UNLOCKED:I = 0x4

.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field static final LIGHT_STATE_ACTIVE:I = 0x0

.field static final LIGHT_STATE_IDLE:I = 0x4

.field static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field static final LIGHT_STATE_INACTIVE:I = 0x1

.field static final LIGHT_STATE_OVERRIDE:I = 0x7

.field static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field static final MIN_PRE_IDLE_FACTOR_CHANGE:F = 0.05f

.field static final MIN_STATE_STEP_ALARM_CHANGE:J = 0xea60L

.field private static final MSG_FINISH_IDLE_OP:I = 0x8

.field private static final MSG_REPORT_ACTIVE:I = 0x5

.field private static final MSG_REPORT_IDLE_OFF:I = 0x4

.field private static final MSG_REPORT_IDLE_ON:I = 0x2

.field private static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field static final MSG_REPORT_STATIONARY_STATUS:I = 0x7

.field private static final MSG_REPORT_TEMP_APP_WHITELIST_ADDED_TO_NPMS:I = 0xe

.field private static final MSG_REPORT_TEMP_APP_WHITELIST_CHANGED:I = 0xd

.field private static final MSG_REPORT_TEMP_APP_WHITELIST_REMOVED_TO_NPMS:I = 0xf

.field static final MSG_RESET_PRE_IDLE_TIMEOUT_FACTOR:I = 0xc

.field private static final MSG_SEND_CONSTRAINT_MONITORING:I = 0xa

.field private static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field static final MSG_UPDATE_PRE_IDLE_TIMEOUT_FACTOR:I = 0xb

.field private static final MSG_WRITE_CONFIG:I = 0x1

.field static final SET_IDLE_FACTOR_RESULT_IGNORED:I = 0x0

.field static final SET_IDLE_FACTOR_RESULT_INVALID:I = 0x3

.field static final SET_IDLE_FACTOR_RESULT_NOT_SUPPORT:I = 0x2

.field static final SET_IDLE_FACTOR_RESULT_OK:I = 0x1

.field static final SET_IDLE_FACTOR_RESULT_UNINIT:I = -0x1

.field static final STATE_ACTIVE:I = 0x0

.field static final STATE_IDLE:I = 0x5

.field static final STATE_IDLE_MAINTENANCE:I = 0x6

.field static final STATE_IDLE_PENDING:I = 0x2

.field static final STATE_INACTIVE:I = 0x1

.field static final STATE_LOCATING:I = 0x4

.field static final STATE_QUICK_DOZE_DELAY:I = 0x7

.field static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mActiveReason:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private final mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Landroid/util/AtomicFile;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

.field private final mConstraints:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/deviceidle/IDeviceIdleConstraint;",
            "Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mCurLightIdleBudget:J

.field final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mDeepEnabled:Z

.field private final mEventCmds:[I

.field private final mEventReasons:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private mIdleStartTime:J

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private final mInjector:Lcom/android/server/DeviceIdleController$Injector;

.field private final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private mLastMotionEventElapsed:J

.field private mLastPreIdleFactor:F

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private final mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightState:I

.field private mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field private mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocalService:Lcom/android/server/DeviceIdleInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private mMaintenanceStartTime:J

.field final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field private final mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private final mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNetworkConnected:Z

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextLightMaintenanceAlarmTime:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mNumBlockingConstraints:I

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreIdleFactor:F

.field private mQuickDozeActivated:Z

.field private mQuickDozeActivatedWhileIdling:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenLocked:Z

.field private mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private final mStationaryListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/DeviceIdleInternal$StationaryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempAllowlistChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUseMotionSensor:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoingIdleWakeLock(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdleStartedDoneReceiver(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMotionSensor(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkPolicyManagerInternal(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/DeviceIdleController;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerSaveWhitelistAppsExceptIdle(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/DeviceIdleController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStationaryListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempAllowlistChangeListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddPowerSaveWhitelistAppsInternal(Lcom/android/server/DeviceIdleController;Ljava/util/List;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetFullPowerWhitelistExceptIdleInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistExceptIdleInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFullPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRemovedSystemPowerWhitelistAppsInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getRemovedSystemPowerWhitelistAppsInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSystemPowerWhitelistExceptIdleInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistExceptIdleInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSystemPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTempAllowListType(Lcom/android/server/DeviceIdleController;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getTempAllowListType(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetUserPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getUserPowerWhitelistInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misStationaryLocked(Lcom/android/server/DeviceIdleController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeDoImmediateMaintenance(Lcom/android/server/DeviceIdleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monConstraintStateChangedLocked(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterDeviceIdleConstraintInternal(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterTempAllowlistChangeListener(Lcom/android/server/DeviceIdleController;Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterDeviceIdleConstraintInternal(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterStationaryListener(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterTempAllowlistChangeListener(Lcom/android/server/DeviceIdleController;Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreIdleFactor(Lcom/android/server/DeviceIdleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2264
    new-instance v0, Lcom/android/server/DeviceIdleController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceIdleController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;-><init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V

    .line 2265
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/DeviceIdleController$Injector;

    .line 2253
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 364
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 534
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 540
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 546
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 551
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 556
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 562
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 568
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 575
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 580
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 586
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 591
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 597
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 603
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 611
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 617
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 619
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 622
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    .line 632
    const/16 v0, 0x64

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 633
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 634
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 647
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 673
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 682
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 692
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 701
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 716
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 730
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 741
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 756
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 898
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 900
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 921
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 2239
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 2254
    iput-object p2, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 2255
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 2256
    invoke-virtual {p2, p0}, Lcom/android/server/DeviceIdleController$Injector;->getHandler(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2257
    nop

    .line 2258
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->get()Lcom/android/server/JobSchedulerBackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/JobSchedulerBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2257
    invoke-virtual {p2, p1, v0}, Lcom/android/server/DeviceIdleController$Injector;->getAppStateTracker(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2259
    const-class v1, Lcom/android/server/AppStateTracker;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2260
    invoke-virtual {p2}, Lcom/android/server/DeviceIdleController$Injector;->useMotionSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 2261
    return-void
.end method

.method private addEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "cmd"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 637
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eq v2, p1, :cond_27

    .line 638
    const/4 v2, 0x1

    const/16 v3, 0x63

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v1

    .line 642
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 643
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 645
    :cond_27
    return-void
.end method

.method private addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2536
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2537
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .line 2538
    .local v1, "numErrors":I
    monitor-enter p0

    .line 2539
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_57

    .line 2540
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_69

    .line 2541
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_16

    .line 2542
    add-int/lit8 v1, v1, 0x1

    .line 2543
    goto :goto_54

    .line 2546
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2548
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_34} :catch_39
    .catchall {:try_start_16 .. :try_end_34} :catchall_69

    if-nez v5, :cond_38

    .line 2550
    add-int/lit8 v0, v0, 0x1

    .line 2555
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_38
    goto :goto_54

    .line 2552
    :catch_39
    move-exception v4

    .line 2553
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3a
    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to add unknown package to power save whitelist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    add-int/lit8 v1, v1, 0x1

    .line 2539
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_54
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 2557
    .end local v2    # "i":I
    :cond_57
    if-lez v0, :cond_62

    .line 2558
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2559
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2560
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2562
    :cond_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_3a .. :try_end_63} :catchall_69

    .line 2563
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    return v2

    .line 2562
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method private becomeActiveLocked(Ljava/lang/String;IJZ)V
    .registers 9
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I
    .param p3, "newInactiveTimeout"    # J
    .param p5, "changeLightIdle"    # Z

    .line 3175
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_2d

    .line 3176
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3177
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3178
    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 3179
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3182
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1c

    .line 3183
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3186
    :cond_1c
    if-eqz p5, :cond_2d

    .line 3187
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3188
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3189
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 3191
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 3192
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3195
    :cond_2d
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 7
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .line 4137
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4138
    const/4 v0, 0x1

    if-eqz p0, :cond_1d

    .line 4139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 4140
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4139
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4143
    .end local v1    # "i":I
    :cond_1d
    if-eqz p1, :cond_36

    .line 4144
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_20
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 4145
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4144
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 4148
    .end local v1    # "i":I
    :cond_36
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 4149
    .local v0, "size":I
    new-array v1, v0, [I

    .line 4150
    .local v1, "appids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v0, :cond_48

    .line 4151
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 4150
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 4153
    .end local v2    # "i":I
    :cond_48
    return-object v1
.end method

.method private cancelAllLightAlarmsLocked()V
    .registers 1

    .line 3957
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3958
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelLightMaintenanceAlarmLocked()V

    .line 3959
    return-void
.end method

.method private cancelLightAlarmLocked()V
    .registers 5

    .line 3963
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3964
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3965
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3967
    :cond_11
    return-void
.end method

.method private cancelLightMaintenanceAlarmLocked()V
    .registers 5

    .line 3971
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3972
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    .line 3973
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3975
    :cond_11
    return-void
.end method

.method private cancelMotionRegistrationAlarmLocked()V
    .registers 3

    .line 3992
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3993
    return-void
.end method

.method private cancelMotionTimeoutAlarmLocked()V
    .registers 3

    .line 3988
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3989
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 4377
    const-string v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4378
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4379
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4380
    const-string v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4381
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4382
    const-string v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4383
    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4384
    const-string v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4385
    const-string v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4386
    const-string v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4387
    const-string v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4388
    const-string v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4389
    const-string v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4390
    const-string v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4391
    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4392
    const-string v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4393
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4394
    const-string v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4395
    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4396
    const-string v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4397
    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4398
    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4399
    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4400
    const-string v0, "  sys-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4401
    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4403
    const-string v0, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4405
    const-string v0, "    reset will reset the whitelist to the original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4406
    const-string v0, "    Prints the system whitelist if no arguments are specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4407
    const-string v0, "  except-idle-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4408
    const-string v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4410
    const-string v0, "    [reset] will reset the whitelist to it\'s original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4411
    const-string v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4413
    const-string v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4414
    const-string v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4415
    const-string v0, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4416
    const-string v0, "    Temporarily place package in whitelist for DURATION milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4417
    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4418
    const-string v0, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4420
    const-string v0, "  motion"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4421
    const-string v0, "    Simulate a motion event to bring the device out of deep doze"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4422
    const-string v0, "  pre-idle-factor [0|1|2]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4423
    const-string v0, "    Set a new factor to idle time before step to idle(inactive_to and idle_after_inactive_to)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4425
    const-string v0, "  reset-pre-idle-factor"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4426
    const-string v0, "    Reset factor to idle time to default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4427
    return-void
.end method

.method private getFullPowerWhitelistExceptIdleInternal(II)[Ljava/lang/String;
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I

    .line 2721
    monitor-enter p0

    .line 2722
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 2723
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2724
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2725
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2726
    .local v2, "cur":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 2727
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2728
    add-int/lit8 v2, v2, 0x1

    .line 2726
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2730
    .end local v3    # "i":I
    :cond_29
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2a
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 2731
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2732
    add-int/lit8 v2, v2, 0x1

    .line 2730
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 2734
    .end local v0    # "size":I
    .end local v2    # "cur":I
    .end local v3    # "i":I
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_53

    .line 2735
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2734
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method private getFullPowerWhitelistInternal(II)[Ljava/lang/String;
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I

    .line 2741
    monitor-enter p0

    .line 2742
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2743
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2744
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2745
    .local v2, "cur":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 2746
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2747
    add-int/lit8 v2, v2, 0x1

    .line 2745
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2749
    .end local v3    # "i":I
    :cond_29
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2a
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 2750
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2751
    add-int/lit8 v2, v2, 0x1

    .line 2749
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 2753
    .end local v0    # "size":I
    .end local v2    # "cur":I
    .end local v3    # "i":I
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_53

    .line 2754
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2753
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method private getRemovedSystemPowerWhitelistAppsInternal(II)[Ljava/lang/String;
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I

    .line 2694
    monitor-enter p0

    .line 2695
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2696
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2697
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2698
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2697
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2700
    .end local v0    # "size":I
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 2701
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda10;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2700
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .line 2280
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSystemPowerWhitelistExceptIdleInternal(II)[Ljava/lang/String;
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I

    .line 2666
    monitor-enter p0

    .line 2667
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2668
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2669
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2670
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2669
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2672
    .end local v0    # "size":I
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 2673
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2672
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private getSystemPowerWhitelistInternal(II)[Ljava/lang/String;
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I

    .line 2680
    monitor-enter p0

    .line 2681
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2682
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2683
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2684
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2683
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2686
    .end local v0    # "size":I
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 2687
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2686
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private getTempAllowListType(II)I
    .registers 4
    .param p1, "reasonCode"    # I
    .param p2, "defaultType"    # I

    .line 2798
    sparse-switch p1, :sswitch_data_e

    .line 2804
    return p2

    .line 2800
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getPushMessagingOverQuotaBehavior()I

    move-result v0

    return v0

    .line 2802
    :sswitch_b
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        -0x1 -> :sswitch_b
        0x66 -> :sswitch_4
    .end sparse-switch
.end method

.method private getUserPowerWhitelistInternal(II)[Ljava/lang/String;
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I

    .line 2707
    monitor-enter p0

    .line 2708
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2709
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2710
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 2711
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2710
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2713
    .end local v0    # "size":I
    .end local v2    # "i":I
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_31

    .line 2714
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2713
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private isStationaryLocked()Z
    .registers 7

    .line 777
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 778
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 780
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 778
    :goto_23
    return v2
.end method

.method private isUpcomingAlarmClock()Z
    .registers 5

    .line 3493
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3494
    invoke-virtual {v2}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 3493
    :goto_18
    return v0
.end method

.method static synthetic lambda$getFullPowerWhitelistExceptIdleInternal$13(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"    # I

    .line 2735
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getFullPowerWhitelistInternal$15(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"    # I

    .line 2754
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getRemovedSystemPowerWhitelistAppsInternal$9(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"    # I

    .line 2701
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getSystemPowerWhitelistExceptIdleInternal$5(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"    # I

    .line 2673
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getSystemPowerWhitelistInternal$7(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"    # I

    .line 2687
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getUserPowerWhitelistInternal$11(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"    # I

    .line 2714
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic lambda$stepIdleStateLocked$17(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Z
    .registers 2
    .param p0, "x"    # Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 3518
    iget-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    return v0
.end method

.method private static synthetic lambda$stepIdleStateLocked$18(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Ljava/lang/String;
    .registers 2
    .param p0, "x"    # Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 3519
    iget-object v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    return-object v0
.end method

.method static lightStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 456
    packed-switch p0, :pswitch_data_1a

    .line 463
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 462
    :pswitch_8
    const-string v0, "OVERRIDE"

    return-object v0

    .line 461
    :pswitch_b
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 460
    :pswitch_e
    const-string v0, "WAITING_FOR_NETWORK"

    return-object v0

    .line 459
    :pswitch_11
    const-string v0, "IDLE"

    return-object v0

    .line 458
    :pswitch_14
    const-string v0, "INACTIVE"

    return-object v0

    .line 457
    :pswitch_17
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private maybeDoImmediateMaintenance()V
    .registers 6

    .line 3790
    monitor-enter p0

    .line 3791
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 3792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    sub-long/2addr v0, v2

    .line 3795
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1b

    .line 3796
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3799
    .end local v0    # "duration":J
    :cond_1b
    monitor-exit p0

    .line 3800
    return-void

    .line 3799
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private maybeStopMonitoringMotionLocked()V
    .registers 2

    .line 3938
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1d

    .line 3939
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_1a

    .line 3940
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 3941
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionTimeoutAlarmLocked()V

    .line 3943
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionRegistrationAlarmLocked()V

    .line 3945
    :cond_1d
    return-void
.end method

.method private moveToStateLocked(ILjava/lang/String;)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 3643
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3644
    .local v0, "oldState":I
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3649
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3650
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3651
    return-void
.end method

.method private onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2994
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2995
    .local v0, "appId":I
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    move-object v1, p0

    move v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZJIILjava/lang/String;I)V

    .line 2997
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2998
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2999
    invoke-direct {p0, p1, v3}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked(IZ)V

    .line 3001
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v2, 0x4011

    invoke-interface {v1, v2, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 3004
    goto :goto_27

    .line 3003
    :catch_26
    move-exception v1

    .line 3005
    :goto_27
    return-void
.end method

.method private onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 8
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "active"    # Z

    .line 2485
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2486
    .local v0, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    if-nez v0, :cond_29

    .line 2487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device-idle constraint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not been registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    return-void

    .line 2490
    :cond_29
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eq p2, v1, :cond_72

    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz v1, :cond_72

    .line 2491
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2492
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    iget-boolean v2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v2, -0x1

    :goto_3c
    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2493
    if-nez v1, :cond_72

    .line 2494
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v1, :cond_49

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_72

    .line 2496
    :cond_49
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_59

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_72

    .line 2497
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2501
    :cond_72
    :goto_72
    return-void
.end method

.method private passWhiteListsToForceAppStandbyTrackerLocked()V
    .registers 5

    .line 4233
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppStateTrackerImpl;->setPowerSaveExemptionListAppIds([I[I[I)V

    .line 4237
    return-void
.end method

.method private postResetPreIdleTimeoutFactor()V
    .registers 3

    .line 3764
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3765
    return-void
.end method

.method private postStationaryStatus(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 767
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 768
    return-void
.end method

.method private postStationaryStatusUpdated()V
    .registers 3

    .line 772
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 773
    return-void
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .line 2959
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2960
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2959
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2961
    return-void
.end method

.method private postUpdatePreIdleFactor()V
    .registers 3

    .line 3760
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3761
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 4264
    const-string v0, "Failed parsing config "

    const-string v1, "DeviceIdleController"

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4268
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :goto_c
    :try_start_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v5, :cond_18

    if-eq v4, v6, :cond_18

    goto :goto_c

    .line 4273
    :cond_18
    if-ne v4, v5, :cond_b7

    .line 4277
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4278
    .local v3, "outerDepth":I
    :cond_1e
    :goto_1e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    if-eq v5, v6, :cond_143

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2e

    .line 4279
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_143

    .line 4280
    :cond_2e
    if-eq v4, v5, :cond_1e

    const/4 v5, 0x4

    if-ne v4, v5, :cond_34

    .line 4281
    goto :goto_1e

    .line 4284
    :cond_34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4285
    .local v5, "tagName":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_146

    :cond_40
    goto :goto_56

    :sswitch_41
    const-string/jumbo v8, "un-wl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    move v7, v6

    goto :goto_56

    :sswitch_4c
    const-string/jumbo v8, "wl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_53
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_53} :catch_12e
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_53} :catch_118
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_53} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_53} :catch_ec
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_53} :catch_d6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_53} :catch_c0

    if-eqz v8, :cond_40

    const/4 v7, 0x0

    :goto_56
    const-string/jumbo v8, "n"

    const/4 v9, 0x0

    packed-switch v7, :pswitch_data_150

    .line 4306
    goto :goto_98

    .line 4299
    :pswitch_5e
    :try_start_5e
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4300
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 4301
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 4302
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 4301
    invoke-virtual {v8, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5

    .line 4287
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_78
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_7c
    .catch Ljava/lang/IllegalStateException; {:try_start_5e .. :try_end_7c} :catch_12e
    .catch Ljava/lang/NullPointerException; {:try_start_5e .. :try_end_7c} :catch_118
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_7c} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_7c} :catch_ec
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_7c} :catch_d6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5e .. :try_end_7c} :catch_c0

    .line 4288
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_b5

    .line 4290
    const/high16 v8, 0x400000

    :try_start_80
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 4292
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4293
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 4292
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_95} :catch_96
    .catch Ljava/lang/IllegalStateException; {:try_start_80 .. :try_end_95} :catch_12e
    .catch Ljava/lang/NullPointerException; {:try_start_80 .. :try_end_95} :catch_118
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_95} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_95} :catch_ec
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_95} :catch_d6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_80 .. :try_end_95} :catch_c0

    goto :goto_97

    .line 4294
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_96
    move-exception v8

    .line 4295
    :goto_97
    goto :goto_b5

    .line 4306
    .end local v7    # "name":Ljava/lang/String;
    :goto_98
    :try_start_98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <config>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4307
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4306
    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    invoke-static {p1}, Lcom/android/internal/util/jobs/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4311
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_b5
    :goto_b5
    goto/16 :goto_1e

    .line 4274
    .end local v3    # "outerDepth":I
    :cond_b7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "no start tag found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3
    :try_end_c0
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_c0} :catch_12e
    .catch Ljava/lang/NullPointerException; {:try_start_98 .. :try_end_c0} :catch_118
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_c0} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_c0} :catch_ec
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_c0} :catch_d6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_98 .. :try_end_c0} :catch_c0

    .line 4323
    .end local v4    # "type":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_c0
    move-exception v3

    .line 4324
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144

    .line 4321
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_d6
    move-exception v3

    .line 4322
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_143

    .line 4319
    :catch_ec
    move-exception v3

    .line 4320
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_143

    .line 4317
    :catch_102
    move-exception v3

    .line 4318
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    goto :goto_143

    .line 4315
    :catch_118
    move-exception v3

    .line 4316
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NullPointerException;
    goto :goto_143

    .line 4313
    :catch_12e
    move-exception v3

    .line 4314
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_143
    :goto_143
    nop

    .line 4326
    :goto_144
    return-void

    nop

    :sswitch_data_146
    .sparse-switch
        0xed5 -> :sswitch_4c
        0x6a37689 -> :sswitch_41
    .end sparse-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_78
        :pswitch_5e
    .end packed-switch
.end method

.method private registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 8
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 2450
    packed-switch p3, :pswitch_data_5c

    .line 2458
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering device-idle constraint with invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    return-void

    .line 2455
    :pswitch_1c
    const/4 v0, 0x3

    .line 2456
    .local v0, "minState":I
    goto :goto_20

    .line 2452
    .end local v0    # "minState":I
    :pswitch_1e
    const/4 v0, 0x0

    .line 2453
    .restart local v0    # "minState":I
    nop

    .line 2461
    :goto_20
    monitor-enter p0

    .line 2462
    :try_start_21
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2463
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-registering device-idle constraint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    monitor-exit p0

    return-void

    .line 2466
    :cond_49
    new-instance v1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    invoke-direct {v1, p2, v0}, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;-><init>(Ljava/lang/String;I)V

    .line 2467
    .local v1, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2469
    .end local v1    # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    monitor-exit p0

    .line 2470
    return-void

    .line 2469
    :catchall_58
    move-exception v1

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_21 .. :try_end_5a} :catchall_58

    throw v1

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method private registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 820
    monitor-enter p0

    .line 821
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 822
    monitor-exit p0

    .line 823
    return-void

    .line 822
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private removePowerSaveTempAllowlistAppInternal(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2934
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 2936
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 2938
    .end local v0    # "uid":I
    goto :goto_11

    .line 2937
    :catch_10
    move-exception v0

    .line 2939
    :goto_11
    return-void
.end method

.method private removePowerSaveTempWhitelistAppDirectInternal(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 2942
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2943
    .local v0, "appId":I
    monitor-enter p0

    .line 2944
    :try_start_5
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 2945
    .local v1, "idx":I
    if-gez v1, :cond_f

    .line 2947
    monitor-exit p0

    return-void

    .line 2949
    :cond_f
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2950
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2951
    invoke-direct {p0, p1, v2}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 2952
    .end local v1    # "idx":I
    .end local v2    # "reason":Ljava/lang/String;
    monitor-exit p0

    .line 2953
    return-void

    .line 2952
    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .registers 4

    .line 4219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4220
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4221
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4222
    return-void
.end method

.method private reportTempWhitelistChangedLocked(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "added"    # Z

    .line 4225
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4226
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4228
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4229
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4230
    return-void
.end method

.method private resetIdleManagementLocked()V
    .registers 3

    .line 3318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3319
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3320
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 3322
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3323
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3324
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3325
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 3326
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3327
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3328
    return-void
.end method

.method private resetLightIdleManagementLocked()V
    .registers 3

    .line 3332
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3333
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3334
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3335
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelAllLightAlarmsLocked()V

    .line 3336
    return-void
.end method

.method private scheduleMotionRegistrationAlarmLocked()V
    .registers 14

    .line 4091
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 4092
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 4093
    .local v0, "nextMotionRegistrationAlarmTime":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v2, v2, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz v2, :cond_26

    .line 4094
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v12, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v10, "DeviceIdleController.motion_registration"

    move-wide v6, v0

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_33

    .line 4099
    :cond_26
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.motion_registration"

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 4103
    :goto_33
    return-void
.end method

.method private scheduleMotionTimeoutAlarmLocked()V
    .registers 14

    .line 4107
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 4108
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    add-long/2addr v0, v2

    .line 4109
    .local v0, "nextMotionTimeoutAlarmTime":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v2, v2, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz v2, :cond_23

    .line 4110
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v12, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v10, "DeviceIdleController.motion"

    move-wide v6, v0

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_30

    .line 4115
    :cond_23
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.motion"

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 4118
    :goto_30
    return-void
.end method

.method private setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 7
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "monitor"    # Z

    .line 2505
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2506
    .local v0, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v1, p2, :cond_1d

    .line 2507
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 2508
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2511
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0xa

    .line 2512
    const/4 v3, -0x1

    .line 2511
    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2514
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2516
    :cond_1d
    return-void
.end method

.method private shouldUseIdleTimeoutFactorLocked()Z
    .registers 3

    .line 3805
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 3806
    const/4 v0, 0x0

    return v0

    .line 3808
    :cond_7
    return v1
.end method

.method static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 421
    packed-switch p0, :pswitch_data_20

    .line 430
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 429
    :pswitch_8
    const-string v0, "QUICK_DOZE_DELAY"

    return-object v0

    .line 428
    :pswitch_b
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 427
    :pswitch_e
    const-string v0, "IDLE"

    return-object v0

    .line 426
    :pswitch_11
    const-string v0, "LOCATING"

    return-object v0

    .line 425
    :pswitch_14
    const-string v0, "SENSING"

    return-object v0

    .line 424
    :pswitch_17
    const-string v0, "IDLE_PENDING"

    return-object v0

    .line 423
    :pswitch_1a
    const-string v0, "INACTIVE"

    return-object v0

    .line 422
    :pswitch_1d
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private stepLightIdleStateLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    .line 3371
    return-void
.end method

.method private unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 3
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2473
    monitor-enter p0

    .line 2475
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2478
    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2479
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    monitor-exit p0

    .line 2481
    return-void

    .line 2480
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 806
    monitor-enter p0

    .line 807
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_1f

    .line 813
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 815
    :cond_1f
    monitor-exit p0

    .line 816
    return-void

    .line 815
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 827
    monitor-enter p0

    .line 828
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 829
    monitor-exit p0

    .line 830
    return-void

    .line 829
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private updateActiveConstraintsLocked()V
    .registers 8

    .line 2520
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 2522
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2523
    .local v2, "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2524
    .local v3, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_25

    move v4, v6

    goto :goto_26

    :cond_25
    move v4, v0

    .line 2525
    .local v4, "monitoring":Z
    :goto_26
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v4, v5, :cond_2f

    .line 2526
    invoke-direct {p0, v2, v4}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2527
    iput-boolean v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2529
    :cond_2f
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz v5, :cond_3c

    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz v5, :cond_3c

    .line 2530
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2521
    .end local v2    # "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .end local v3    # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    .end local v4    # "monitoring":Z
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2533
    .end local v1    # "i":I
    :cond_3f
    return-void
.end method

.method private updatePreIdleFactor()V
    .registers 9

    .line 3768
    monitor-enter p0

    .line 3769
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3770
    monitor-exit p0

    return-void

    .line 3772
    :cond_9
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 3773
    :cond_11
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    .line 3774
    monitor-exit p0

    return-void

    .line 3776
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3777
    .local v0, "delay":J
    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_29

    .line 3778
    monitor-exit p0

    return-void

    .line 3780
    :cond_29
    long-to-float v4, v0

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    mul-float/2addr v4, v5

    float-to-long v4, v4

    .line 3781
    .local v4, "newDelay":J
    sub-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-gez v2, :cond_3d

    .line 3782
    monitor-exit p0

    return-void

    .line 3784
    :cond_3d
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3786
    .end local v0    # "delay":J
    .end local v4    # "newDelay":J
    :cond_41
    monitor-exit p0

    .line 3787
    return-void

    .line 3786
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    throw v0
.end method

.method private updateTempWhitelistAppIdsLocked(IZJIILjava/lang/String;I)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "adding"    # Z
    .param p3, "durationMs"    # J
    .param p5, "type"    # I
    .param p6, "reasonCode"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "callingUid"    # I

    .line 4193
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4194
    .local v1, "size":I
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v2, v2

    if-eq v2, v1, :cond_10

    .line 4195
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 4197
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_20

    .line 4198
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v2

    .line 4197
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4200
    .end local v2    # "i":I
    :cond_20
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v3, :cond_35

    .line 4205
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    move v5, p1

    move v6, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V

    .line 4208
    :cond_35
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_3e

    .line 4213
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 4215
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 4216
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .registers 4

    .line 4157
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 4159
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 4161
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 4163
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_2e

    .line 4164
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleAllowlist([I[I)V

    .line 4167
    :cond_2e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_37

    .line 4172
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 4174
    :cond_37
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 4175
    return-void
.end method

.method private verifyAlarmStateLocked()V
    .registers 7

    .line 3216
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-wide/16 v1, 0x0

    const-string v3, "DeviceIdleController"

    if-nez v0, :cond_27

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_27

    .line 3217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mState=ACTIVE but mNextAlarmTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    :cond_27
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_57

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 3220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mState="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " but AlarmManager is idling"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_57
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v4, :cond_69

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-nez v0, :cond_69

    .line 3223
    const-string/jumbo v0, "mState=IDLE but AlarmManager is not idling"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_69
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_9b

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_9b

    .line 3226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLightState=ACTIVE but mNextLightAlarmTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3226
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :cond_9b
    return-void
.end method


# virtual methods
.method addPowerSaveTempAllowlistAppChecked(Ljava/lang/String;JIILjava/lang/String;)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reasonCode"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2811
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2815
    .local v1, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2816
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2815
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "addPowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v5, v1

    move/from16 v6, p4

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2822
    .end local p4    # "userId":I
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2824
    .local v13, "token":J
    const/4 v0, 0x0

    move-object/from16 v15, p0

    move/from16 v12, p5

    :try_start_2c
    invoke-direct {v15, v12, v0}, Lcom/android/server/DeviceIdleController;->getTempAllowListType(II)I

    move-result v0

    .line 2826
    .local v0, "type":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_44

    .line 2827
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move v4, v1

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move v8, v0

    move v9, v2

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_49

    .line 2831
    .end local v0    # "type":I
    :cond_44
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2832
    nop

    .line 2833
    return-void

    .line 2831
    :catchall_49
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2832
    throw v0
.end method

.method addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V
    .registers 22
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "durationMs"    # J
    .param p5, "tempAllowListType"    # I
    .param p6, "userId"    # I
    .param p7, "sync"    # Z
    .param p8, "reasonCode"    # I
    .param p9, "reason"    # Ljava/lang/String;

    .line 2864
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_20

    move-object v1, p2

    move/from16 v2, p6

    :try_start_b
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    .line 2865
    .local v5, "uid":I
    move-object v3, p0

    move v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJIZILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1d} :catch_1e

    .line 2868
    .end local v5    # "uid":I
    goto :goto_24

    .line 2867
    :catch_1e
    move-exception v0

    goto :goto_24

    :catch_20
    move-exception v0

    move-object v1, p2

    move/from16 v2, p6

    .line 2869
    :goto_24
    return-void
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJIZILjava/lang/String;)V
    .registers 37
    .param p1, "callingUid"    # I
    .param p2, "uid"    # I
    .param p3, "duration"    # J
    .param p5, "tempAllowListType"    # I
    .param p6, "sync"    # Z
    .param p7, "reasonCode"    # I
    .param p8, "reason"    # Ljava/lang/String;

    .line 2878
    move-object/from16 v10, p0

    move/from16 v15, p2

    move/from16 v14, p7

    move-object/from16 v13, p8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 2879
    .local v21, "timeNow":J
    const/16 v23, 0x0

    .line 2880
    .local v23, "informWhitelistChanged":Z
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 2881
    .local v12, "appId":I
    monitor-enter p0

    .line 2882
    :try_start_13
    iget-object v0, v10, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_e1

    move-wide/from16 v2, p3

    :try_start_19
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_da

    move-wide v8, v0

    .line 2883
    .end local p3    # "duration":J
    .local v8, "duration":J
    :try_start_1e
    iget-object v0, v10, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_d3

    .line 2884
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    const/4 v11, 0x1

    if-nez v0, :cond_2b

    move v1, v11

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    move/from16 v24, v1

    .line 2886
    .local v24, "newEntry":Z
    if-eqz v24, :cond_4c

    .line 2887
    :try_start_30
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/MutableLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/MutableLong;-><init>(J)V

    invoke-direct {v1, v2, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2888
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_44

    move-object v7, v0

    goto :goto_4d

    .line 2922
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v24    # "newEntry":Z
    :catchall_44
    move-exception v0

    move-wide/from16 v26, v8

    move v4, v12

    move-object v1, v13

    move v5, v14

    goto/16 :goto_e9

    .line 2886
    .restart local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .restart local v24    # "newEntry":Z
    :cond_4c
    move-object v7, v0

    .line 2890
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .local v7, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_4d
    :try_start_4d
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    add-long v1, v21, v8

    iput-wide v1, v0, Landroid/util/MutableLong;->value:J
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_d3

    .line 2894
    if-eqz v24, :cond_a0

    .line 2897
    :try_start_57
    iget-object v0, v10, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v1, 0x8011

    invoke-interface {v0, v1, v13, v15}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5f} :catch_60
    .catchall {:try_start_57 .. :try_end_5f} :catchall_44

    .line 2900
    goto :goto_61

    .line 2899
    :catch_60
    move-exception v0

    .line 2901
    :goto_61
    :try_start_61
    invoke-direct {v10, v15, v8, v9}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_98

    .line 2902
    const/4 v3, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-wide v4, v8

    move/from16 v6, p5

    move-object/from16 v25, v7

    .end local v7    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .local v25, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    move/from16 v7, p7

    move-wide/from16 v26, v8

    .end local v8    # "duration":J
    .local v26, "duration":J
    move-object/from16 v8, p8

    move/from16 v9, p1

    :try_start_76
    invoke-direct/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZJIILjava/lang/String;I)V

    .line 2904
    if-eqz p6, :cond_7f

    .line 2905
    const/4 v0, 0x1

    move/from16 v23, v0

    .end local v23    # "informWhitelistChanged":Z
    .local v0, "informWhitelistChanged":Z
    goto :goto_8a

    .line 2910
    .end local v0    # "informWhitelistChanged":Z
    .restart local v23    # "informWhitelistChanged":Z
    :cond_7f
    iget-object v0, v10, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v12, v14, v13}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2911
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2913
    :goto_8a
    invoke-direct {v10, v15, v11}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked(IZ)V
    :try_end_8d
    .catchall {:try_start_76 .. :try_end_8d} :catchall_92

    move v3, v11

    move v4, v12

    move-object v1, v13

    move v5, v14

    goto :goto_c5

    .line 2922
    .end local v24    # "newEntry":Z
    .end local v25    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catchall_92
    move-exception v0

    move v4, v12

    move-object v1, v13

    move v5, v14

    goto/16 :goto_e9

    .end local v26    # "duration":J
    .restart local v8    # "duration":J
    :catchall_98
    move-exception v0

    move-wide/from16 v26, v8

    move v4, v12

    move-object v1, v13

    move v5, v14

    .end local v8    # "duration":J
    .restart local v26    # "duration":J
    goto/16 :goto_e9

    .line 2917
    .end local v26    # "duration":J
    .restart local v7    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .restart local v8    # "duration":J
    .restart local v24    # "newEntry":Z
    :cond_a0
    move-object/from16 v25, v7

    move-wide/from16 v26, v8

    .end local v7    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v8    # "duration":J
    .restart local v25    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .restart local v26    # "duration":J
    :try_start_a4
    iget-object v0, v10, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;
    :try_end_a6
    .catchall {:try_start_a4 .. :try_end_a6} :catchall_ce

    if-eqz v0, :cond_c1

    .line 2918
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v11

    move-object v11, v0

    move v4, v12

    .end local v12    # "appId":I
    .local v4, "appId":I
    move-object v12, v1

    move-object v1, v13

    move/from16 v13, p2

    move v5, v14

    move v14, v2

    move-wide/from16 v15, v26

    move/from16 v17, p5

    move/from16 v18, p7

    move-object/from16 v19, p8

    move/from16 v20, p1

    :try_start_bd
    invoke-virtual/range {v11 .. v20}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V

    goto :goto_c5

    .line 2917
    .end local v4    # "appId":I
    .restart local v12    # "appId":I
    :cond_c1
    move v3, v11

    move v4, v12

    move-object v1, v13

    move v5, v14

    .line 2922
    .end local v12    # "appId":I
    .end local v24    # "newEntry":Z
    .end local v25    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .restart local v4    # "appId":I
    :goto_c5
    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_eb

    .line 2923
    if-eqz v23, :cond_cd

    .line 2924
    iget-object v0, v10, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v0, v4, v3, v5, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V

    .line 2927
    :cond_cd
    return-void

    .line 2922
    .end local v4    # "appId":I
    .restart local v12    # "appId":I
    :catchall_ce
    move-exception v0

    move v4, v12

    move-object v1, v13

    move v5, v14

    .end local v12    # "appId":I
    .restart local v4    # "appId":I
    goto :goto_e9

    .end local v4    # "appId":I
    .end local v26    # "duration":J
    .restart local v8    # "duration":J
    .restart local v12    # "appId":I
    :catchall_d3
    move-exception v0

    move-wide/from16 v26, v8

    move v4, v12

    move-object v1, v13

    move v5, v14

    .end local v8    # "duration":J
    .end local v12    # "appId":I
    .restart local v4    # "appId":I
    .restart local v26    # "duration":J
    goto :goto_e9

    .end local v4    # "appId":I
    .end local v26    # "duration":J
    .restart local v12    # "appId":I
    .restart local p3    # "duration":J
    :catchall_da
    move-exception v0

    move v4, v12

    move-object v1, v13

    move v5, v14

    move-wide/from16 v26, v2

    .end local v12    # "appId":I
    .restart local v4    # "appId":I
    goto :goto_e9

    .end local v4    # "appId":I
    .restart local v12    # "appId":I
    :catchall_e1
    move-exception v0

    move-wide/from16 v2, p3

    move v4, v12

    move-object v1, v13

    move v5, v14

    move-wide/from16 v26, v2

    .end local v12    # "appId":I
    .end local p3    # "duration":J
    .restart local v4    # "appId":I
    .restart local v26    # "duration":J
    :goto_e9
    :try_start_e9
    monitor-exit p0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_eb

    throw v0

    :catchall_eb
    move-exception v0

    goto :goto_e9
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 2621
    monitor-enter p0

    .line 2623
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2625
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    .line 2627
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2628
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2629
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2633
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_38} :catch_3d
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    .line 2635
    :cond_38
    const/4 v1, 0x1

    :try_start_39
    monitor-exit p0

    return v1

    .line 2639
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_3b
    move-exception v0

    goto :goto_41

    .line 2636
    :catch_3d
    move-exception v0

    .line 2637
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2639
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_3b

    throw v0
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .registers 10
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .line 3165
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 3166
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .registers 12

    .line 3234
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->verifyAlarmStateLocked()V

    .line 3236
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez v0, :cond_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 3248
    .local v0, "isScreenBlockingInactive":Z
    :goto_16
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-nez v3, :cond_20

    if-eqz v0, :cond_21

    .line 3249
    :cond_20
    return-void

    .line 3252
    :cond_21
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const-string/jumbo v4, "no activity"

    if-eqz v3, :cond_9d

    .line 3253
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v3, :cond_67

    .line 3254
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v5, 0x7

    if-eq v3, v5, :cond_66

    const/4 v6, 0x5

    if-eq v3, v6, :cond_66

    const/4 v6, 0x6

    if-ne v3, v6, :cond_38

    goto :goto_66

    .line 3265
    :cond_38
    iput v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3267
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3268
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 3272
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3273
    invoke-virtual {v3}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v5

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v3, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    add-long/2addr v5, v7

    .line 3272
    invoke-virtual {p0, v5, v6, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_60

    .line 3278
    :cond_59
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v5, v3, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-virtual {p0, v5, v6, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3280
    :goto_60
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2, v4}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_9d

    .line 3259
    :cond_66
    :goto_66
    return-void

    .line 3281
    :cond_67
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v3, :cond_9d

    .line 3282
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3284
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3285
    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 3286
    .local v5, "delay":J
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 3287
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v7, v5

    mul-float/2addr v3, v7

    float-to-long v5, v3

    .line 3289
    :cond_7d
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 3293
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3294
    invoke-virtual {v3}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v7

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    add-long/2addr v7, v5

    .line 3293
    invoke-virtual {p0, v7, v8, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_98

    .line 3297
    :cond_95
    invoke-virtual {p0, v5, v6, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3299
    :goto_98
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2, v4}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3302
    .end local v5    # "delay":J
    :cond_9d
    :goto_9d
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v2, :cond_c6

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_c6

    .line 3303
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3305
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 3306
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v5, v3, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJ)V

    .line 3310
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v5, v3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    add-long/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleLightMaintenanceAlarmLocked(J)V

    .line 3312
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v1, v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3314
    :cond_c6
    return-void
.end method

.method cancelAlarmLocked()V
    .registers 5

    .line 3949
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3950
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3951
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3953
    :cond_11
    return-void
.end method

.method cancelLocatingLocked()V
    .registers 3

    .line 3979
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_17

    .line 3980
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 3981
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3982
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3983
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 3985
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    :cond_17
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .registers 5

    .line 3997
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3998
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3999
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 4001
    :cond_11
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .registers 8
    .param p1, "uid"    # I

    .line 2964
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2965
    .local v0, "timeNow":J
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 2969
    .local v2, "appId":I
    monitor-enter p0

    .line 2970
    :try_start_9
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 2971
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2972
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v3, :cond_15

    .line 2974
    monitor-exit p0

    return-void

    .line 2976
    :cond_15
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/MutableLong;

    iget-wide v4, v4, Landroid/util/MutableLong;->value:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2c

    .line 2977
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 2978
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_36

    .line 2984
    :cond_2c
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/MutableLong;

    iget-wide v4, v4, Landroid/util/MutableLong;->value:J

    sub-long/2addr v4, v0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2986
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_36
    monitor-exit p0

    .line 2987
    return-void

    .line 2986
    :catchall_38
    move-exception v3

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method decActiveIdleOps()V
    .registers 2

    .line 3660
    monitor-enter p0

    .line 3661
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3662
    if-gtz v0, :cond_11

    .line 3663
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3664
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3666
    :cond_11
    monitor-exit p0

    .line 3667
    return-void

    .line 3666
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4902
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DeviceIdleController"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 4904
    :cond_13
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_93

    .line 4905
    const/4 v5, 0x0

    .line 4906
    .local v5, "userId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_19
    array-length v7, v3

    if-ge v6, v7, :cond_93

    .line 4907
    aget-object v7, v3, v6

    .line 4908
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "-h"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 4909
    invoke-static/range {p2 .. p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 4910
    return-void

    .line 4911
    :cond_2a
    const-string v8, "-u"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 4912
    add-int/lit8 v6, v6, 0x1

    .line 4913
    array-length v8, v3

    if-ge v6, v8, :cond_46

    .line 4914
    aget-object v7, v3, v6

    .line 4915
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_46

    .line 4917
    :cond_3e
    const-string v8, "-a"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 4906
    .end local v7    # "arg":Ljava/lang/String;
    :cond_46
    :goto_46
    add-int/2addr v6, v4

    goto :goto_19

    .line 4919
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_48
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6d

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x2d

    if-ne v4, v8, :cond_6d

    .line 4920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4921
    return-void

    .line 4923
    :cond_6d
    new-instance v4, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v4, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 4924
    .local v4, "shell":Lcom/android/server/DeviceIdleController$Shell;
    iput v5, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 4925
    array-length v8, v3

    sub-int/2addr v8, v6

    new-array v15, v8, [Ljava/lang/String;

    .line 4926
    .local v15, "newArgs":[Ljava/lang/String;
    array-length v8, v3

    sub-int/2addr v8, v6

    invoke-static {v3, v6, v15, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4927
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    new-instance v0, Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v8, v4

    move-object/from16 v11, p1

    move-object v13, v15

    move-object/from16 v16, v15

    .end local v15    # "newArgs":[Ljava/lang/String;
    .local v16, "newArgs":[Ljava/lang/String;
    move-object v15, v0

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4929
    return-void

    .line 4934
    .end local v4    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local v5    # "userId":I
    .end local v6    # "i":I
    .end local v7    # "arg":Ljava/lang/String;
    .end local v16    # "newArgs":[Ljava/lang/String;
    :cond_93
    monitor-enter p0

    .line 4935
    :try_start_94
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v5, v2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4937
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v5, v5, v0

    if-eqz v5, :cond_fb

    .line 4938
    const-string v5, "  Idling history:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4939
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4940
    .local v5, "now":J
    const/16 v7, 0x63

    .local v7, "i":I
    :goto_aa
    if-ltz v7, :cond_fb

    .line 4941
    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v8, v8, v7

    move v9, v8

    .line 4942
    .local v9, "cmd":I
    if-nez v9, :cond_b4

    .line 4943
    goto :goto_f8

    .line 4946
    :cond_b4
    packed-switch v8, :pswitch_data_480

    .line 4952
    const-string v8, "         ??"

    goto :goto_ca

    .line 4951
    :pswitch_ba
    const-string v8, " deep-maint"

    .local v8, "label":Ljava/lang/String;
    goto :goto_ca

    .line 4950
    .end local v8    # "label":Ljava/lang/String;
    :pswitch_bd
    const-string v8, "  deep-idle"

    .restart local v8    # "label":Ljava/lang/String;
    goto :goto_ca

    .line 4949
    .end local v8    # "label":Ljava/lang/String;
    :pswitch_c0
    const-string/jumbo v8, "light-maint"

    .restart local v8    # "label":Ljava/lang/String;
    goto :goto_ca

    .line 4948
    .end local v8    # "label":Ljava/lang/String;
    :pswitch_c4
    const-string v8, " light-idle"

    .restart local v8    # "label":Ljava/lang/String;
    goto :goto_ca

    .line 4947
    .end local v8    # "label":Ljava/lang/String;
    :pswitch_c7
    const-string v8, "     normal"

    .restart local v8    # "label":Ljava/lang/String;
    nop

    .line 4954
    :goto_ca
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4955
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4956
    const-string v10, ": "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4957
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4958
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    if-eqz v10, :cond_f5

    .line 4959
    const-string v10, " ("

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4960
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4961
    const-string v10, ")"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4963
    :cond_f5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4940
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "cmd":I
    :goto_f8
    add-int/lit8 v7, v7, -0x1

    goto :goto_aa

    .line 4968
    .end local v5    # "now":J
    .end local v7    # "i":I
    :cond_fb
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 4969
    .local v5, "size":I
    if-lez v5, :cond_11e

    .line 4970
    const-string v6, "  Whitelist (except idle) system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4971
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_109
    if-ge v6, v5, :cond_11e

    .line 4972
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4973
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4971
    add-int/lit8 v6, v6, 0x1

    goto :goto_109

    .line 4976
    .end local v6    # "i":I
    :cond_11e
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4977
    if-lez v5, :cond_142

    .line 4978
    const-string v6, "  Whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_12d
    if-ge v6, v5, :cond_142

    .line 4980
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4981
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    add-int/lit8 v6, v6, 0x1

    goto :goto_12d

    .line 4984
    .end local v6    # "i":I
    :cond_142
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4985
    if-lez v5, :cond_166

    .line 4986
    const-string v6, "  Removed from whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_151
    if-ge v6, v5, :cond_166

    .line 4988
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4989
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    add-int/lit8 v6, v6, 0x1

    goto :goto_151

    .line 4992
    .end local v6    # "i":I
    :cond_166
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4993
    if-lez v5, :cond_18a

    .line 4994
    const-string v6, "  Whitelist user apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4995
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_175
    if-ge v6, v5, :cond_18a

    .line 4996
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4997
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4995
    add-int/lit8 v6, v6, 0x1

    goto :goto_175

    .line 5000
    .end local v6    # "i":I
    :cond_18a
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 5001
    if-lez v5, :cond_1af

    .line 5002
    const-string v6, "  Whitelist (except idle) all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5003
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_199
    if-ge v6, v5, :cond_1af

    .line 5004
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5005
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 5006
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5003
    add-int/lit8 v6, v6, 0x1

    goto :goto_199

    .line 5009
    .end local v6    # "i":I
    :cond_1af
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 5010
    if-lez v5, :cond_1d4

    .line 5011
    const-string v6, "  Whitelist user app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5012
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1be
    if-ge v6, v5, :cond_1d4

    .line 5013
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5014
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 5015
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5012
    add-int/lit8 v6, v6, 0x1

    goto :goto_1be

    .line 5018
    .end local v6    # "i":I
    :cond_1d4
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 5019
    if-lez v5, :cond_1f9

    .line 5020
    const-string v6, "  Whitelist all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5021
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1e3
    if-ge v6, v5, :cond_1f9

    .line 5022
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5023
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 5024
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5021
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e3

    .line 5027
    .end local v6    # "i":I
    :cond_1f9
    invoke-virtual {v1, v2, v4}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 5029
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v4, :cond_201

    array-length v0, v4

    .line 5030
    .end local v5    # "size":I
    .local v0, "size":I
    :cond_201
    if-lez v0, :cond_21d

    .line 5031
    const-string v4, "  Temp whitelist app ids:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5032
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_209
    if-ge v4, v0, :cond_21d

    .line 5033
    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5034
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 5035
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5032
    add-int/lit8 v4, v4, 0x1

    goto :goto_209

    .line 5039
    .end local v4    # "i":I
    :cond_21d
    const-string v4, "  mLightEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 5040
    const-string v4, "  mDeepEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5041
    const-string v4, "  mForceIdle="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5042
    const-string v4, "  mUseMotionSensor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 5043
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v4, :cond_254

    .line 5044
    const-string v4, " mMotionSensor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_257

    .line 5046
    :cond_254
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5048
    :goto_257
    const-string v4, "  mScreenOn="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5049
    const-string v4, "  mScreenLocked="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5050
    const-string v4, "  mNetworkConnected="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5051
    const-string v4, "  mCharging="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5052
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eqz v4, :cond_2d4

    .line 5053
    const-string v4, "  mConstraints={"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5054
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_28d
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2cf

    .line 5055
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 5056
    .local v5, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    const-string v6, "    \""

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "\"="

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5057
    iget v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v7, v1, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v6, v7, :cond_2b8

    .line 5058
    iget-boolean v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2cc

    .line 5060
    :cond_2b8
    const-string/jumbo v6, "ignored <mMinState="

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5061
    const-string v6, ">"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5054
    .end local v5    # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    :goto_2cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_28d

    .line 5064
    .end local v4    # "i":I
    :cond_2cf
    const-string v4, "  }"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    :cond_2d4
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-nez v4, :cond_2e0

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_31f

    .line 5067
    :cond_2e0
    const-string v4, "  mMotionActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v4, v4, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5068
    const-string v4, "  mNotMoving="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5069
    const-string v4, "  mMotionListener.activatedTimeElapsed="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5070
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 5071
    const-string v4, "  mLastMotionEventElapsed="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 5072
    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5073
    const-string v4, " stationary listeners registered"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5075
    :cond_31f
    const-string v4, "  mLocating="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasGps="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5076
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasNetwork="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5077
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mLocated="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5078
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v4, :cond_355

    .line 5079
    const-string v4, "  mLastGenericLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5081
    :cond_355
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v4, :cond_363

    .line 5082
    const-string v4, "  mLastGpsLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5084
    :cond_363
    const-string v4, "  mState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5085
    const-string v4, " mLightState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5086
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5087
    const-string v4, "  mInactiveTimeout="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5088
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5089
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz v4, :cond_39a

    .line 5090
    const-string v4, "  mActiveIdleOpCount="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 5092
    :cond_39a
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3b3

    .line 5093
    const-string v4, "  mNextAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5094
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5095
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5097
    :cond_3b3
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3c6

    .line 5098
    const-string v4, "  mNextIdlePendingDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5099
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5100
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5102
    :cond_3c6
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3d9

    .line 5103
    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5104
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5105
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5107
    :cond_3d9
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3ec

    .line 5108
    const-string v4, "  mNextLightIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5109
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5110
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5112
    :cond_3ec
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_403

    .line 5113
    const-string v4, "  mNextLightAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5114
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5115
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5117
    :cond_403
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_41a

    .line 5118
    const-string v4, "  mNextLightMaintenanceAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5119
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    .line 5120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 5119
    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5121
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5123
    :cond_41a
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_42d

    .line 5124
    const-string v4, "  mCurLightIdleBudget="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5125
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5126
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5128
    :cond_42d
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_444

    .line 5129
    const-string v4, "  mMaintenanceStartTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5130
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5131
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5133
    :cond_444
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v4, :cond_452

    .line 5134
    const-string v4, "  mJobsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5136
    :cond_452
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz v4, :cond_460

    .line 5137
    const-string v4, "  mAlarmsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5139
    :cond_460
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3d4ccccd    # 0.05f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_47a

    .line 5140
    const-string v4, "  mPreIdleFactor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 5142
    .end local v0    # "size":I
    :cond_47a
    monitor-exit p0

    .line 5143
    return-void

    .line 5142
    :catchall_47c
    move-exception v0

    monitor-exit p0
    :try_end_47e
    .catchall {:try_start_94 .. :try_end_47e} :catchall_47c

    throw v0

    nop

    :pswitch_data_480
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_c4
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
    .end packed-switch
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "printTitle"    # Z

    .line 5146
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5147
    .local v0, "size":I
    if-lez v0, :cond_50

    .line 5148
    const-string v1, ""

    .line 5149
    .local v1, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_13

    .line 5150
    const-string v2, "  Temp whitelist schedule:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5151
    const-string v1, "    "

    .line 5153
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5154
    .local v2, "timeNow":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_50

    .line 5155
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5156
    const-string v5, "UID="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5157
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 5158
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5159
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 5160
    .local v5, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/MutableLong;

    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5161
    const-string v6, " - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5162
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5154
    .end local v5    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 5165
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "timeNow":J
    .end local v4    # "i":I
    :cond_50
    return-void
.end method

.method exitForceIdleLocked()V
    .registers 3

    .line 3340
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_1b

    .line 3341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3342
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1b

    .line 3343
    :cond_f
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3344
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "exit-force"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3347
    :cond_1b
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3008
    monitor-enter p0

    .line 3009
    const/4 v0, 0x5

    :try_start_2
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3011
    monitor-exit p0

    .line 3012
    return-void

    .line 3011
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .registers 6

    .line 3834
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_22

    .line 3835
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3845
    .local v2, "now":J
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v4, "s:early"

    if-ne v0, v1, :cond_1e

    .line 3846
    invoke-virtual {p0, v4}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_22

    .line 3848
    :cond_1e
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    .line 3852
    .end local v2    # "now":J
    :cond_22
    :goto_22
    return-void
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .line 2791
    monitor-enter p0

    .line 2792
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2793
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .registers 2

    .line 2785
    monitor-enter p0

    .line 2786
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2787
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .line 2773
    monitor-enter p0

    .line 2774
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2775
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .line 2779
    monitor-enter p0

    .line 2780
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2781
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getLightState()I
    .registers 2

    .line 3363
    monitor-enter p0

    .line 3364
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    monitor-exit p0

    return v0

    .line 3365
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getNextAlarmTime()J
    .registers 3

    .line 3822
    monitor-enter p0

    .line 3823
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    monitor-exit p0

    return-wide v0

    .line 3824
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getNextLightAlarmTimeForTesting()J
    .registers 3

    .line 4077
    monitor-enter p0

    .line 4078
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    monitor-exit p0

    return-wide v0

    .line 4079
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getNextLightMaintenanceAlarmTimeForTesting()J
    .registers 3

    .line 4084
    monitor-enter p0

    .line 4085
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    monitor-exit p0

    return-wide v0

    .line 4086
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2579
    monitor-enter p0

    .line 2580
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2581
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2658
    monitor-enter p0

    .line 2659
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2660
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 2274
    monitor-enter p0

    .line 2275
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2276
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getPreIdleTimeoutByMode(I)F
    .registers 5
    .param p1, "mode"    # I

    .line 3702
    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_2a

    .line 3713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time out factor mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    return v0

    .line 3707
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    return v0

    .line 3704
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    return v0

    .line 3710
    :pswitch_28
    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method getPreIdleTimeoutFactor()F
    .registers 2

    .line 3721
    monitor-enter p0

    .line 3722
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    monitor-exit p0

    return v0

    .line 3723
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getState()I
    .registers 2

    .line 3483
    monitor-enter p0

    .line 3484
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    monitor-exit p0

    return v0

    .line 3485
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 14
    .param p1, "timeout"    # J
    .param p3, "type"    # Ljava/lang/String;

    .line 3863
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 3864
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postStationaryStatusUpdated()V

    .line 3865
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionTimeoutAlarmLocked()V

    .line 3869
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionRegistrationAlarmLocked()V

    .line 3871
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    if-nez v0, :cond_1a

    .line 3876
    return-void

    .line 3878
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 3882
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_29

    goto :goto_2b

    :cond_29
    move v0, v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v0, v3

    .line 3885
    .local v0, "becomeInactive":Z
    :goto_2c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v4, v2, :cond_36

    move v9, v3

    goto :goto_37

    :cond_36
    move v9, v1

    :goto_37
    move-object v4, p0

    move-object v5, p3

    move-wide v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 3886
    if-eqz v0, :cond_42

    .line 3887
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3889
    :cond_42
    return-void
.end method

.method handleWriteConfigFile()V
    .registers 7

    .line 4334
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4337
    .local v0, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_1c

    .line 4338
    :try_start_6
    new-instance v1, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 4339
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4340
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4341
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    monitor-exit p0

    .line 4343
    goto :goto_1d

    .line 4341
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    .end local v0    # "memStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 4342
    .restart local v0    # "memStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    :catch_1c
    move-exception v1

    .line 4345
    :goto_1d
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 4346
    const/4 v2, 0x0

    .line 4348
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_21
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 4349
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 4350
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_30} :catch_33
    .catchall {:try_start_21 .. :try_end_30} :catchall_31

    .line 4354
    goto :goto_40

    .line 4355
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_31
    move-exception v2

    goto :goto_42

    .line 4351
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_33
    move-exception v3

    .line 4352
    .local v3, "e":Ljava/io/IOException;
    :try_start_34
    const-string v4, "DeviceIdleController"

    const-string v5, "Error writing config file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4353
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4355
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_40
    monitor-exit v1

    .line 4356
    return-void

    .line 4355
    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_31

    throw v2
.end method

.method hasMotionSensor()Z
    .registers 2

    .line 2444
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method incActiveIdleOps()V
    .registers 2

    .line 3654
    monitor-enter p0

    .line 3655
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3656
    monitor-exit p0

    .line 3657
    return-void

    .line 3656
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method isAppOnWhitelistInternal(I)Z
    .registers 3
    .param p1, "appid"    # I

    .line 2268
    monitor-enter p0

    .line 2269
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 2270
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method isCharging()Z
    .registers 2

    .line 3088
    monitor-enter p0

    .line 3089
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    monitor-exit p0

    return v0

    .line 3090
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isKeyguardShowing()Z
    .registers 2

    .line 3138
    monitor-enter p0

    .line 3139
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    monitor-exit p0

    return v0

    .line 3140
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isNetworkConnected()Z
    .registers 2

    .line 3016
    monitor-enter p0

    .line 3017
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    monitor-exit p0

    return v0

    .line 3018
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .registers 2

    .line 3829
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2766
    monitor-enter p0

    .line 2767
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2768
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    .line 2767
    return v0

    .line 2769
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2759
    monitor-enter p0

    .line 2760
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2761
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    .line 2760
    return v0

    .line 2762
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method isQuickDozeEnabled()Z
    .registers 2

    .line 3112
    monitor-enter p0

    .line 3113
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    monitor-exit p0

    return v0

    .line 3114
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isScreenOn()Z
    .registers 2

    .line 3060
    monitor-enter p0

    .line 3061
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    monitor-exit p0

    return v0

    .line 3062
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method keyguardShowingLocked(Z)V
    .registers 4
    .param p1, "showing"    # Z

    .line 3147
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eq v0, p1, :cond_1d

    .line 3148
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 3149
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_1d

    if-nez p1, :cond_1d

    .line 3150
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3151
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string/jumbo v1, "unlocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3154
    :cond_1d
    return-void
.end method

.method synthetic lambda$getFullPowerWhitelistExceptIdleInternal$14$com-android-server-DeviceIdleController(IILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 2736
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$getFullPowerWhitelistInternal$16$com-android-server-DeviceIdleController(IILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 2755
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$getRemovedSystemPowerWhitelistAppsInternal$10$com-android-server-DeviceIdleController(IILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 2702
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$getSystemPowerWhitelistExceptIdleInternal$6$com-android-server-DeviceIdleController(IILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 2674
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$getSystemPowerWhitelistInternal$8$com-android-server-DeviceIdleController(IILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 2688
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$getUserPowerWhitelistInternal$12$com-android-server-DeviceIdleController(IILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 2715
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$new$0$com-android-server-DeviceIdleController()V
    .registers 2

    .line 677
    monitor-enter p0

    .line 678
    :try_start_1
    const-string/jumbo v0, "s:alarm"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 679
    monitor-exit p0

    .line 680
    return-void

    .line 679
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method synthetic lambda$new$1$com-android-server-DeviceIdleController()V
    .registers 2

    .line 686
    monitor-enter p0

    .line 687
    :try_start_1
    const-string/jumbo v0, "s:alarm"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 688
    monitor-exit p0

    .line 689
    return-void

    .line 688
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method synthetic lambda$new$2$com-android-server-DeviceIdleController()V
    .registers 2

    .line 693
    monitor-enter p0

    .line 694
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 695
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 696
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 698
    :cond_f
    monitor-exit p0

    .line 699
    return-void

    .line 698
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method synthetic lambda$new$3$com-android-server-DeviceIdleController()V
    .registers 3

    .line 702
    monitor-enter p0

    .line 703
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result v0

    if-nez v0, :cond_11

    .line 709
    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "motion timeout went off and device isn\'t stationary"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    monitor-exit p0

    return-void

    .line 712
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 713
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postStationaryStatusUpdated()V

    .line 714
    return-void

    .line 712
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method synthetic lambda$onBootPhase$4$com-android-server-DeviceIdleController(Landroid/os/PowerSaveState;)V
    .registers 3
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 2425
    monitor-enter p0

    .line 2426
    :try_start_1
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 2427
    monitor-exit p0

    .line 2428
    return-void

    .line 2427
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method motionLocked()V
    .registers 4

    .line 3857
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 3858
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 3859
    return-void
.end method

.method public onAnyMotionResult(I)V
    .registers 5
    .param p1, "result"    # I

    .line 1594
    monitor-enter p0

    .line 1595
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 1596
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    goto :goto_a

    .line 1615
    :catchall_8
    move-exception v0

    goto :goto_3c

    .line 1598
    :cond_a
    :goto_a
    const/4 v1, 0x1

    if-eq p1, v1, :cond_30

    if-ne p1, v0, :cond_10

    goto :goto_30

    .line 1601
    :cond_10
    if-nez p1, :cond_3a

    .line 1602
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_20

    .line 1604
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1605
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_3a

    .line 1606
    :cond_20
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3a

    .line 1609
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1610
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_3a

    .line 1611
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_3a

    .line 1600
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "non_stationary"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 1615
    :cond_3a
    :goto_3a
    monitor-exit p0

    .line 1616
    return-void

    .line 1615
    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_8

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 2348
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1a6

    .line 2349
    monitor-enter p0

    .line 2350
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2351
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    .line 2352
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2353
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 2354
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2355
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2356
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2357
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 2358
    const-string v1, "deviceidle_maint"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2360
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2361
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "deviceidle_going_idle"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2363
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2364
    const-string/jumbo v0, "netpolicy"

    .line 2365
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2364
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 2366
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 2367
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2369
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_92

    .line 2370
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getMotionSensor()Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 2373
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2375
    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/16 v1, 0x64

    .line 2376
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 2377
    invoke-virtual {v0, v2}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 2378
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 2381
    :cond_ba
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    .line 2382
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleInternal;

    .line 2381
    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController$Injector;->getConstraintController(Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)Lcom/android/server/deviceidle/ConstraintController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    .line 2383
    if-eqz v0, :cond_d1

    .line 2384
    invoke-interface {v0}, Lcom/android/server/deviceidle/ConstraintController;->start()V

    .line 2387
    :cond_d1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 2389
    .local v0, "angleThreshold":F
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/android/server/DeviceIdleController$Injector;->getAnyMotionDetector(Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)Lcom/android/server/AnyMotionDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 2392
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl;->onSystemServicesReady()V

    .line 2394
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 2395
    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2397
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 2398
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2401
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2402
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2405
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 2406
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2407
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2410
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 2411
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2414
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 2415
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2416
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2419
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->setDeviceIdleAllowlist([I[I)V

    .line 2421
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2423
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/DeviceIdleController;)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 2429
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2430
    invoke-virtual {v2, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 2429
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 2433
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2435
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2436
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 2437
    .end local v0    # "angleThreshold":F
    .end local v1    # "filter":Landroid/content/IntentFilter;
    monitor-exit p0
    :try_end_19e
    .catchall {:try_start_5 .. :try_end_19e} :catchall_1a3

    .line 2438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    goto :goto_1a6

    .line 2437
    :catchall_1a3
    move-exception v0

    :try_start_1a4
    monitor-exit p0
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_1a3

    throw v0

    .line 2440
    :cond_1a6
    :goto_1a6
    return-void
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .registers 23
    .param p1, "shell"    # Lcom/android/server/DeviceIdleController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 4445
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    .line 4446
    .local v11, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "step"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 4647
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4446
    const/4 v4, 0x1

    if-eqz v1, :cond_92

    .line 4447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4449
    monitor-enter p0

    .line 4450
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4451
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_8e

    .line 4453
    .local v3, "arg":Ljava/lang/String;
    if-eqz v3, :cond_6c

    :try_start_2e
    const-string v5, "deep"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_6c

    .line 4457
    :cond_37
    const-string/jumbo v5, "light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 4458
    const-string/jumbo v5, "s:shell"

    invoke-virtual {v8, v5, v4}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    .line 4459
    const-string v4, "Stepped to light: "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v8, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    .line 4461
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown idle mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    .line 4454
    :cond_6c
    :goto_6c
    const-string/jumbo v4, "s:shell"

    invoke-virtual {v8, v4}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 4455
    const-string v4, "Stepped to deep: "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4456
    iget v4, v8, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_2e .. :try_end_80} :catchall_87

    .line 4464
    :goto_80
    :try_start_80
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4465
    nop

    .line 4466
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_95a

    .line 4464
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :catchall_87
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4465
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4466
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_8e
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_91
    .catchall {:try_start_80 .. :try_end_91} :catchall_8e

    throw v1

    .line 4467
    :cond_92
    const-string v1, "force-idle"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v13, -0x1

    if-eqz v1, :cond_15f

    .line 4468
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    monitor-enter p0

    .line 4471
    :try_start_a7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4472
    .restart local v1    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_15b

    .line 4474
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_10c

    :try_start_b1
    const-string v7, "deep"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ba

    goto :goto_10c

    .line 4493
    :cond_ba
    const-string/jumbo v6, "light"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 4494
    iput-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4495
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4496
    iget v6, v8, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 4497
    .local v6, "curLightState":I
    :goto_ca
    if-eq v6, v5, :cond_ef

    .line 4498
    const-string/jumbo v7, "s:shell"

    invoke-virtual {v8, v7, v4}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    .line 4499
    iget v7, v8, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v6, v7, :cond_ed

    .line 4500
    const-string v4, "Unable to go light idle; stopped at "

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4501
    iget v4, v8, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4502
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_e7
    .catchall {:try_start_b1 .. :try_end_e7} :catchall_154

    .line 4503
    nop

    .line 4512
    :try_start_e8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_15b

    .line 4503
    return v13

    .line 4505
    :cond_ed
    move v6, v7

    goto :goto_ca

    .line 4507
    :cond_ef
    :try_start_ef
    const-string v4, "Now forced in to light idle mode"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4508
    .end local v6    # "curLightState":I
    goto :goto_14d

    .line 4509
    :cond_f5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown idle mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14d

    .line 4475
    :cond_10c
    :goto_10c
    iget-boolean v5, v8, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v5, :cond_11b

    .line 4476
    const-string v4, "Unable to go deep idle; not enabled"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_ef .. :try_end_115} :catchall_154

    .line 4477
    nop

    .line 4512
    :try_start_116
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_11a
    .catchall {:try_start_116 .. :try_end_11a} :catchall_15b

    .line 4477
    return v13

    .line 4479
    :cond_11b
    :try_start_11b
    iput-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4480
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4481
    iget v4, v8, Lcom/android/server/DeviceIdleController;->mState:I

    .line 4482
    .local v4, "curState":I
    :goto_122
    if-eq v4, v6, :cond_147

    .line 4483
    const-string/jumbo v5, "s:shell"

    invoke-virtual {v8, v5}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 4484
    iget v5, v8, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v4, v5, :cond_145

    .line 4485
    const-string v5, "Unable to go deep idle; stopped at "

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4486
    iget v5, v8, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4487
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_13f
    .catchall {:try_start_11b .. :try_end_13f} :catchall_154

    .line 4488
    nop

    .line 4512
    :try_start_140
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_144
    .catchall {:try_start_140 .. :try_end_144} :catchall_15b

    .line 4488
    return v13

    .line 4490
    :cond_145
    move v4, v5

    goto :goto_122

    .line 4492
    :cond_147
    :try_start_147
    const-string v5, "Now forced in to deep idle mode"

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14c
    .catchall {:try_start_147 .. :try_end_14c} :catchall_154

    .line 4493
    .end local v4    # "curState":I
    nop

    .line 4512
    :goto_14d
    :try_start_14d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4513
    nop

    .line 4514
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_95a

    .line 4512
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :catchall_154
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4513
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4514
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_15b
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_15e
    .catchall {:try_start_14d .. :try_end_15e} :catchall_15b

    throw v1

    .line 4515
    :cond_15f
    const-string v1, "force-inactive"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    .line 4516
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4518
    monitor-enter p0

    .line 4519
    :try_start_171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_175
    .catchall {:try_start_171 .. :try_end_175} :catchall_1a4

    .line 4521
    .restart local v1    # "token":J
    :try_start_175
    iput-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4522
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4523
    const-string v3, "Light state: "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4524
    iget v3, v8, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4525
    const-string v3, ", deep state: "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4526
    iget v3, v8, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_196
    .catchall {:try_start_175 .. :try_end_196} :catchall_19d

    .line 4528
    :try_start_196
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4529
    nop

    .line 4530
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_95a

    .line 4528
    .restart local v1    # "token":J
    :catchall_19d
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4529
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3

    .line 4530
    .end local v1    # "token":J
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_1a4
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1a7
    .catchall {:try_start_196 .. :try_end_1a7} :catchall_1a4

    throw v1

    .line 4531
    :cond_1a8
    const-string/jumbo v1, "unforce"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 4532
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4534
    monitor-enter p0

    .line 4535
    :try_start_1bb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1bf
    .catchall {:try_start_1bb .. :try_end_1bf} :catchall_1ec

    .line 4537
    .restart local v1    # "token":J
    :try_start_1bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 4538
    const-string v3, "Light state: "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4539
    iget v3, v8, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4540
    const-string v3, ", deep state: "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4541
    iget v3, v8, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1de
    .catchall {:try_start_1bf .. :try_end_1de} :catchall_1e5

    .line 4543
    :try_start_1de
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4544
    nop

    .line 4545
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_95a

    .line 4543
    .restart local v1    # "token":J
    :catchall_1e5
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4544
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3

    .line 4545
    .end local v1    # "token":J
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_1ec
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1ef
    .catchall {:try_start_1de .. :try_end_1ef} :catchall_1ec

    throw v1

    .line 4546
    :cond_1f0
    const-string v1, "get"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x6

    const/4 v14, 0x2

    if-eqz v1, :cond_2c4

    .line 4547
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    monitor-enter p0

    .line 4550
    :try_start_204
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4551
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_2b8

    .line 4552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_20e
    .catchall {:try_start_204 .. :try_end_20e} :catchall_2c0

    .line 4554
    .local v2, "token":J
    :try_start_20e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_96c

    :cond_215
    goto :goto_25f

    :sswitch_216
    const-string/jumbo v4, "network"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    move v4, v7

    goto :goto_260

    :sswitch_221
    const-string v4, "charging"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    move v4, v6

    goto :goto_260

    :sswitch_22b
    const-string/jumbo v4, "quick"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    const/4 v4, 0x3

    goto :goto_260

    :sswitch_236
    const-string/jumbo v4, "light"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    move v4, v12

    goto :goto_260

    :sswitch_241
    const-string v4, "force"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    move v4, v14

    goto :goto_260

    :sswitch_24b
    const-string v5, "deep"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_215

    goto :goto_260

    :sswitch_254
    const-string/jumbo v4, "screen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    move v4, v5

    goto :goto_260

    :goto_25f
    move v4, v13

    :goto_260
    packed-switch v4, :pswitch_data_98a

    .line 4562
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_298

    .line 4561
    :pswitch_266
    iget-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2ac

    .line 4560
    :pswitch_26c
    iget-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2ac

    .line 4559
    :pswitch_272
    iget-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2ac

    .line 4558
    :pswitch_278
    iget-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2ac

    .line 4557
    :pswitch_27e
    iget-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2ac

    .line 4556
    :pswitch_284
    iget v4, v8, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ac

    .line 4555
    :pswitch_28e
    iget v4, v8, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ac

    .line 4562
    :goto_298
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown get option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2ac
    .catchall {:try_start_20e .. :try_end_2ac} :catchall_2b1

    .line 4565
    :goto_2ac
    :try_start_2ac
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4566
    nop

    .line 4567
    .end local v2    # "token":J
    goto :goto_2bd

    .line 4565
    .restart local v2    # "token":J
    :catchall_2b1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4566
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4568
    .end local v2    # "token":J
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :cond_2b8
    const-string v2, "Argument required"

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4570
    .end local v1    # "arg":Ljava/lang/String;
    :goto_2bd
    monitor-exit p0

    goto/16 :goto_95a

    :catchall_2c0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_2c3
    .catchall {:try_start_2ac .. :try_end_2c3} :catchall_2c0

    throw v1

    .line 4571
    :cond_2c4
    const-string v1, "disable"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36d

    .line 4572
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    monitor-enter p0

    .line 4575
    :try_start_2d6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4576
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_2de
    .catchall {:try_start_2d6 .. :try_end_2de} :catchall_369

    .line 4578
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4579
    .local v4, "becomeActive":Z
    const/4 v5, 0x0

    .line 4580
    .local v5, "valid":Z
    if-eqz v3, :cond_2f2

    :try_start_2e2
    const-string v6, "deep"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f2

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ff

    .line 4581
    :cond_2f2
    const/4 v5, 0x1

    .line 4582
    iget-boolean v6, v8, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v6, :cond_2ff

    .line 4583
    iput-boolean v12, v8, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 4584
    const/4 v4, 0x1

    .line 4585
    const-string v6, "Deep idle mode disabled"

    invoke-virtual {v11, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4588
    :cond_2ff
    if-eqz v3, :cond_312

    const-string/jumbo v6, "light"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_312

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31f

    .line 4589
    :cond_312
    const/4 v5, 0x1

    .line 4590
    iget-boolean v6, v8, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v6, :cond_31f

    .line 4591
    iput-boolean v12, v8, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 4592
    const/4 v4, 0x1

    .line 4593
    const-string v6, "Light idle mode disabled"

    invoke-virtual {v11, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4596
    :cond_31f
    if-eqz v4, :cond_343

    .line 4597
    iput v7, v8, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 4598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_32d

    const-string v7, "all"

    goto :goto_32e

    :cond_32d
    move-object v7, v3

    :goto_32e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-disabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4599
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 4598
    invoke-virtual {v8, v6, v7}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 4601
    :cond_343
    if-nez v5, :cond_35b

    .line 4602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown idle mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35b
    .catchall {:try_start_2e2 .. :try_end_35b} :catchall_362

    .line 4605
    .end local v4    # "becomeActive":Z
    .end local v5    # "valid":Z
    :cond_35b
    :try_start_35b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4606
    nop

    .line 4607
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_95a

    .line 4605
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :catchall_362
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4606
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4607
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_369
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_36c
    .catchall {:try_start_35b .. :try_end_36c} :catchall_369

    throw v1

    .line 4608
    :cond_36d
    const-string v1, "enable"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f7

    .line 4609
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4611
    monitor-enter p0

    .line 4612
    :try_start_37f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4613
    .restart local v1    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_387
    .catchall {:try_start_37f .. :try_end_387} :catchall_3f3

    .line 4615
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4616
    .local v5, "becomeInactive":Z
    const/4 v6, 0x0

    .line 4617
    .local v6, "valid":Z
    if-eqz v3, :cond_39b

    :try_start_38b
    const-string v7, "deep"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39b

    const-string v7, "all"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a8

    .line 4618
    :cond_39b
    const/4 v6, 0x1

    .line 4619
    iget-boolean v7, v8, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v7, :cond_3a8

    .line 4620
    iput-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 4621
    const/4 v5, 0x1

    .line 4622
    const-string v7, "Deep idle mode enabled"

    invoke-virtual {v11, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4625
    :cond_3a8
    if-eqz v3, :cond_3bb

    const-string/jumbo v7, "light"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3bb

    const-string v7, "all"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c8

    .line 4626
    :cond_3bb
    const/4 v6, 0x1

    .line 4627
    iget-boolean v7, v8, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v7, :cond_3c8

    .line 4628
    iput-boolean v4, v8, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 4629
    const/4 v5, 0x1

    .line 4630
    const-string v4, "Light idle mode enable"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4633
    :cond_3c8
    if-eqz v5, :cond_3cd

    .line 4634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4636
    :cond_3cd
    if-nez v6, :cond_3e5

    .line 4637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown idle mode: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3e5
    .catchall {:try_start_38b .. :try_end_3e5} :catchall_3ec

    .line 4640
    .end local v5    # "becomeInactive":Z
    .end local v6    # "valid":Z
    :cond_3e5
    :try_start_3e5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4641
    nop

    .line 4642
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_95a

    .line 4640
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :catchall_3ec
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4641
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4642
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_3f3
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_3f6
    .catchall {:try_start_3e5 .. :try_end_3f6} :catchall_3f3

    throw v1

    .line 4643
    :cond_3f7
    const-string v1, "enabled"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45f

    .line 4644
    monitor-enter p0

    .line 4645
    :try_start_400
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4646
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_44b

    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40f

    goto :goto_44b

    .line 4648
    :cond_40f
    const-string v2, "deep"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_421

    .line 4649
    iget-boolean v2, v8, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_41d

    const-string v3, "1"

    :cond_41d
    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_458

    .line 4650
    :cond_421
    const-string/jumbo v2, "light"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_434

    .line 4651
    iget-boolean v2, v8, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_430

    const-string v3, "1"

    :cond_430
    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_458

    .line 4653
    :cond_434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown idle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_458

    .line 4647
    :cond_44b
    :goto_44b
    iget-boolean v2, v8, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_455

    iget-boolean v2, v8, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_455

    const-string v3, "1"

    :cond_455
    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4655
    .end local v1    # "arg":Ljava/lang/String;
    :goto_458
    monitor-exit p0

    goto/16 :goto_95a

    :catchall_45b
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_45e
    .catchall {:try_start_400 .. :try_end_45e} :catchall_45b

    throw v1

    .line 4656
    :cond_45f
    const-string/jumbo v1, "whitelist"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x3d

    const/16 v5, 0x2d

    const/16 v6, 0x2b

    if-eqz v1, :cond_5c0

    .line 4657
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4658
    .restart local v1    # "arg":Ljava/lang/String;
    if-eqz v1, :cond_537

    .line 4659
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v14, "android.permission.DEVICE_POWER"

    invoke-virtual {v7, v14, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4661
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4664
    .local v14, "token":J
    :goto_481
    :try_start_481
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_516

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_49b

    .line 4665
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_49b

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_49b

    goto/16 :goto_516

    .line 4669
    :cond_49b
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4670
    .local v2, "op":C
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 4671
    .local v7, "pkg":Ljava/lang/String;
    if-ne v2, v6, :cond_4dd

    .line 4672
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I

    move-result v3

    if-ne v3, v4, :cond_4c6

    .line 4674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_503

    .line 4676
    :cond_4c6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_503

    .line 4678
    :cond_4dd
    if-ne v2, v5, :cond_4fc

    .line 4679
    invoke-virtual {v8, v7}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_503

    .line 4680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_503

    .line 4683
    :cond_4fc
    invoke-virtual {v8, v7}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4685
    .end local v2    # "op":C
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_503
    :goto_503
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_507
    .catchall {:try_start_481 .. :try_end_507} :catchall_531

    move-object v1, v2

    if-nez v2, :cond_510

    .line 4687
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4688
    nop

    .line 4689
    .end local v14    # "token":J
    goto/16 :goto_5ba

    .line 4685
    .restart local v14    # "token":J
    :cond_510
    const/16 v3, 0x3d

    const/16 v6, 0x2b

    goto/16 :goto_481

    .line 4666
    :cond_516
    :goto_516
    :try_start_516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_52c
    .catchall {:try_start_516 .. :try_end_52c} :catchall_531

    .line 4667
    nop

    .line 4687
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4667
    return v13

    .line 4687
    :catchall_531
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4688
    throw v2

    .line 4690
    .end local v14    # "token":J
    :cond_537
    monitor-enter p0

    .line 4691
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_539
    :try_start_539
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_563

    .line 4692
    const-string/jumbo v3, "system-excidle,"

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4693
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4694
    const-string v3, ","

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4695
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4691
    add-int/lit8 v2, v2, 0x1

    goto :goto_539

    .line 4697
    .end local v2    # "j":I
    :cond_563
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_564
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_58e

    .line 4698
    const-string/jumbo v3, "system,"

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4699
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4700
    const-string v3, ","

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4701
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4697
    add-int/lit8 v2, v2, 0x1

    goto :goto_564

    .line 4703
    .end local v2    # "j":I
    :cond_58e
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_58f
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b9

    .line 4704
    const-string/jumbo v3, "user,"

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4705
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4706
    const-string v3, ","

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4707
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4703
    add-int/lit8 v2, v2, 0x1

    goto :goto_58f

    .line 4709
    .end local v2    # "j":I
    :cond_5b9
    monitor-exit p0

    .line 4711
    .end local v1    # "arg":Ljava/lang/String;
    :goto_5ba
    goto/16 :goto_95a

    .line 4709
    .restart local v1    # "arg":Ljava/lang/String;
    :catchall_5bc
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_5bf
    .catchall {:try_start_539 .. :try_end_5bf} :catchall_5bc

    throw v2

    .line 4711
    .end local v1    # "arg":Ljava/lang/String;
    :cond_5c0
    const-string/jumbo v1, "tempwhitelist"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_676

    .line 4712
    const-wide/16 v1, 0x2710

    .line 4713
    .local v1, "duration":J
    const/4 v3, 0x0

    move-wide v14, v1

    move/from16 v16, v3

    .line 4715
    .end local v1    # "duration":J
    .local v14, "duration":J
    .local v16, "removePkg":Z
    :cond_5cf
    :goto_5cf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .local v7, "opt":Ljava/lang/String;
    if-eqz v1, :cond_615

    .line 4716
    const-string v1, "-u"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f1

    .line 4717
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4718
    .end local v7    # "opt":Ljava/lang/String;
    .local v1, "opt":Ljava/lang/String;
    if-nez v1, :cond_5ea

    .line 4719
    const-string v2, "-u requires a user number"

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4720
    return v13

    .line 4722
    :cond_5ea
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_5cf

    .line 4723
    .end local v1    # "opt":Ljava/lang/String;
    .restart local v7    # "opt":Ljava/lang/String;
    :cond_5f1
    const-string v1, "-d"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60a

    .line 4724
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4725
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    if-nez v1, :cond_605

    .line 4726
    const-string v2, "-d requires a duration"

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4727
    return v13

    .line 4729
    :cond_605
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_5cf

    .line 4730
    .end local v1    # "opt":Ljava/lang/String;
    .restart local v7    # "opt":Ljava/lang/String;
    :cond_60a
    const-string v1, "-r"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5cf

    .line 4731
    const/16 v16, 0x1

    goto :goto_5cf

    .line 4734
    :cond_615
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 4735
    .local v6, "arg":Ljava/lang/String;
    if-eqz v6, :cond_665

    .line 4737
    if-eqz v16, :cond_62e

    .line 4738
    :try_start_61d
    iget v1, v9, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    invoke-virtual {v8, v6, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempAllowlistAppChecked(Ljava/lang/String;I)V
    :try_end_622
    .catch Ljava/lang/Exception; {:try_start_61d .. :try_end_622} :catch_627

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    goto :goto_644

    .line 4743
    :catch_627
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    goto :goto_64e

    .line 4740
    :cond_62e
    :try_start_62e
    iget v5, v9, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const/16 v17, 0x13c

    const-string/jumbo v18, "shell"
    :try_end_635
    .catch Ljava/lang/Exception; {:try_start_62e .. :try_end_635} :catch_648

    move-object/from16 v1, p0

    move-object v2, v6

    move-wide v3, v14

    move-object/from16 v19, v6

    .end local v6    # "arg":Ljava/lang/String;
    .local v19, "arg":Ljava/lang/String;
    move/from16 v6, v17

    move-object/from16 v17, v7

    .end local v7    # "opt":Ljava/lang/String;
    .local v17, "opt":Ljava/lang/String;
    move-object/from16 v7, v18

    :try_start_641
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(Ljava/lang/String;JIILjava/lang/String;)V
    :try_end_644
    .catch Ljava/lang/Exception; {:try_start_641 .. :try_end_644} :catch_645

    .line 4746
    :goto_644
    goto :goto_674

    .line 4743
    :catch_645
    move-exception v0

    move-object v1, v0

    goto :goto_64e

    .end local v17    # "opt":Ljava/lang/String;
    .end local v19    # "arg":Ljava/lang/String;
    .restart local v6    # "arg":Ljava/lang/String;
    .restart local v7    # "opt":Ljava/lang/String;
    :catch_648
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    move-object v1, v0

    .line 4744
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "opt":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v17    # "opt":Ljava/lang/String;
    .restart local v19    # "arg":Ljava/lang/String;
    :goto_64e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4745
    return v13

    .line 4747
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v17    # "opt":Ljava/lang/String;
    .end local v19    # "arg":Ljava/lang/String;
    .restart local v6    # "arg":Ljava/lang/String;
    .restart local v7    # "opt":Ljava/lang/String;
    :cond_665
    move-object/from16 v19, v6

    move-object/from16 v17, v7

    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v17    # "opt":Ljava/lang/String;
    .restart local v19    # "arg":Ljava/lang/String;
    if-eqz v16, :cond_671

    .line 4748
    const-string v1, "[-r] requires a package name"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4749
    return v13

    .line 4751
    :cond_671
    invoke-virtual {v8, v11, v12}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4753
    .end local v14    # "duration":J
    .end local v16    # "removePkg":Z
    .end local v17    # "opt":Ljava/lang/String;
    .end local v19    # "arg":Ljava/lang/String;
    :goto_674
    goto/16 :goto_95a

    :cond_676
    const-string v1, "except-idle-whitelist"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75f

    .line 4754
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4756
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4758
    .local v1, "token":J
    :try_start_68b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 4759
    .restart local v3    # "arg":Ljava/lang/String;
    if-nez v3, :cond_69b

    .line 4760
    const-string v4, "No arguments given"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_696
    .catchall {:try_start_68b .. :try_end_696} :catchall_759

    .line 4761
    nop

    .line 4788
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4761
    return v13

    .line 4762
    :cond_69b
    :try_start_69b
    const-string/jumbo v6, "reset"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a9

    .line 4763
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    goto/16 :goto_71d

    .line 4766
    :cond_6a9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_73e

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_6c7

    .line 4767
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_6c7

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_6c7

    goto/16 :goto_73e

    .line 4771
    :cond_6c7
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 4772
    .local v6, "op":C
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 4773
    .local v7, "pkg":Ljava/lang/String;
    const/16 v14, 0x2b

    if-ne v6, v14, :cond_70b

    .line 4774
    invoke-virtual {v8, v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6f2

    .line 4775
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Added: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v14, 0x3d

    goto :goto_716

    .line 4777
    :cond_6f2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v14, 0x3d

    goto :goto_716

    .line 4779
    :cond_70b
    const/16 v14, 0x3d

    if-ne v6, v14, :cond_723

    .line 4780
    invoke-virtual {v8, v7}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/PrintWriter;->println(Z)V

    .line 4785
    .end local v6    # "op":C
    .end local v7    # "pkg":Ljava/lang/String;
    :goto_716
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6
    :try_end_71a
    .catchall {:try_start_69b .. :try_end_71a} :catchall_759

    move-object v3, v6

    if-nez v6, :cond_6a9

    .line 4788
    .end local v3    # "arg":Ljava/lang/String;
    :goto_71d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4789
    nop

    .line 4790
    .end local v1    # "token":J
    goto/16 :goto_95a

    .line 4782
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v6    # "op":C
    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_723
    :try_start_723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_739
    .catchall {:try_start_723 .. :try_end_739} :catchall_759

    .line 4783
    nop

    .line 4788
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4783
    return v13

    .line 4768
    .end local v6    # "op":C
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_73e
    :goto_73e
    :try_start_73e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_754
    .catchall {:try_start_73e .. :try_end_754} :catchall_759

    .line 4769
    nop

    .line 4788
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4769
    return v13

    .line 4788
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_759
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4789
    throw v3

    .line 4790
    .end local v1    # "token":J
    :cond_75f
    const-string/jumbo v1, "sys-whitelist"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_841

    .line 4791
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4792
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_814

    .line 4793
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v6, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4795
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4797
    .local v2, "token":J
    :try_start_77b
    const-string/jumbo v6, "reset"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_788

    .line 4798
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    goto :goto_7eb

    .line 4801
    :cond_788
    :goto_788
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_7f3

    .line 4802
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_79d

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_79f

    goto :goto_7f3

    :cond_79d
    const/16 v7, 0x2b

    .line 4806
    :cond_79f
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 4807
    .restart local v6    # "op":C
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 4808
    .local v14, "pkg":Ljava/lang/String;
    packed-switch v6, :pswitch_data_99c

    :pswitch_7aa
    goto :goto_7e4

    .line 4815
    :pswitch_7ab
    invoke-virtual {v8, v14}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7e4

    .line 4816
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7e4

    .line 4810
    :pswitch_7c8
    invoke-virtual {v8, v14}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e4

    .line 4811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restored "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4820
    .end local v6    # "op":C
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_7e4
    :goto_7e4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_7e8
    .catchall {:try_start_77b .. :try_end_7e8} :catchall_80e

    move-object v1, v5

    if-nez v5, :cond_7f0

    .line 4823
    :goto_7eb
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4824
    nop

    .line 4825
    .end local v2    # "token":J
    goto :goto_83b

    .line 4820
    .restart local v2    # "token":J
    :cond_7f0
    const/16 v5, 0x2d

    goto :goto_788

    .line 4803
    :cond_7f3
    :goto_7f3
    :try_start_7f3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package must be prefixed with + or - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_809
    .catchall {:try_start_7f3 .. :try_end_809} :catchall_80e

    .line 4804
    nop

    .line 4823
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4804
    return v13

    .line 4823
    :catchall_80e
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4824
    throw v4

    .line 4826
    .end local v2    # "token":J
    :cond_814
    monitor-enter p0

    .line 4827
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_816
    :try_start_816
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_83a

    .line 4828
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4829
    const-string v3, ","

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4830
    iget-object v3, v8, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4827
    add-int/lit8 v2, v2, 0x1

    goto :goto_816

    .line 4832
    .end local v2    # "j":I
    :cond_83a
    monitor-exit p0

    .line 4834
    .end local v1    # "arg":Ljava/lang/String;
    :goto_83b
    goto/16 :goto_95a

    .line 4832
    .restart local v1    # "arg":Ljava/lang/String;
    :catchall_83d
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_840
    .catchall {:try_start_816 .. :try_end_840} :catchall_83d

    throw v2

    .line 4834
    .end local v1    # "arg":Ljava/lang/String;
    :cond_841
    const-string/jumbo v1, "motion"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_889

    .line 4835
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4837
    monitor-enter p0

    .line 4838
    :try_start_854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_858
    .catchall {:try_start_854 .. :try_end_858} :catchall_885

    .line 4840
    .local v1, "token":J
    :try_start_858
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 4841
    const-string v3, "Light state: "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4842
    iget v3, v8, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4843
    const-string v3, ", deep state: "

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4844
    iget v3, v8, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_877
    .catchall {:try_start_858 .. :try_end_877} :catchall_87e

    .line 4846
    :try_start_877
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4847
    nop

    .line 4848
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_95a

    .line 4846
    .restart local v1    # "token":J
    :catchall_87e
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4847
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3

    .line 4848
    .end local v1    # "token":J
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_885
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_888
    .catchall {:try_start_877 .. :try_end_888} :catchall_885

    throw v1

    .line 4849
    :cond_889
    const-string/jumbo v1, "pre-idle-factor"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93b

    .line 4850
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4852
    monitor-enter p0

    .line 4853
    :try_start_89c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_8a0
    .catchall {:try_start_89c .. :try_end_8a0} :catchall_937

    .line 4854
    .restart local v1    # "token":J
    const/4 v3, -0x1

    .line 4856
    .local v3, "ret":I
    :try_start_8a1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 4857
    .local v5, "arg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4858
    .local v6, "valid":Z
    const/4 v7, 0x0

    .line 4859
    .local v7, "mode":I
    if-eqz v5, :cond_8df

    .line 4860
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v7, v13

    .line 4861
    invoke-virtual {v8, v7}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutMode(I)I

    move-result v13

    move v3, v13

    .line 4862
    if-ne v3, v4, :cond_8ce

    .line 4863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pre-idle-factor: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4864
    const/4 v6, 0x1

    goto :goto_8df

    .line 4865
    :cond_8ce
    if-ne v3, v14, :cond_8d7

    .line 4866
    const/4 v6, 0x1

    .line 4867
    const-string v4, "Deep idle not supported"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8df

    .line 4868
    :cond_8d7
    if-nez v3, :cond_8df

    .line 4869
    const/4 v6, 0x1

    .line 4870
    const-string v4, "Idle timeout factor not changed"

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4873
    :cond_8df
    :goto_8df
    if-nez v6, :cond_907

    .line 4874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown idle timeout factor: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ",(error code: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ")"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_907
    .catch Ljava/lang/NumberFormatException; {:try_start_8a1 .. :try_end_907} :catch_90e
    .catchall {:try_start_8a1 .. :try_end_907} :catchall_90b

    .line 4881
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "valid":Z
    .end local v7    # "mode":I
    :cond_907
    :try_start_907
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_90a
    .catchall {:try_start_907 .. :try_end_90a} :catchall_937

    .line 4882
    :goto_90a
    goto :goto_930

    .line 4881
    :catchall_90b
    move-exception v0

    move-object v4, v0

    goto :goto_932

    .line 4877
    :catch_90e
    move-exception v0

    move-object v4, v0

    .line 4878
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle timeout factor,(error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_92c
    .catchall {:try_start_910 .. :try_end_92c} :catchall_90b

    .line 4881
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :try_start_92c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_90a

    .line 4883
    .end local v1    # "token":J
    .end local v3    # "ret":I
    :goto_930
    monitor-exit p0

    goto :goto_95a

    .line 4881
    .restart local v1    # "token":J
    .restart local v3    # "ret":I
    :goto_932
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4882
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4883
    .end local v1    # "token":J
    .end local v3    # "ret":I
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_937
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_93a
    .catchall {:try_start_92c .. :try_end_93a} :catchall_937

    throw v1

    .line 4884
    :cond_93b
    const-string/jumbo v1, "reset-pre-idle-factor"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_966

    .line 4885
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4887
    monitor-enter p0

    .line 4888
    :try_start_94e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_952
    .catchall {:try_start_94e .. :try_end_952} :catchall_962

    .line 4890
    .restart local v1    # "token":J
    :try_start_952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPreIdleTimeoutMode()V
    :try_end_955
    .catchall {:try_start_952 .. :try_end_955} :catchall_95b

    .line 4892
    :try_start_955
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4893
    nop

    .line 4894
    .end local v1    # "token":J
    monitor-exit p0

    .line 4898
    :goto_95a
    return v12

    .line 4892
    .restart local v1    # "token":J
    :catchall_95b
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4893
    nop

    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3

    .line 4894
    .end local v1    # "token":J
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_962
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_965
    .catchall {:try_start_955 .. :try_end_965} :catchall_962

    throw v1

    .line 4896
    :cond_966
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    nop

    :sswitch_data_96c
    .sparse-switch
        -0x361a3f94 -> :sswitch_254
        0x2efcec -> :sswitch_24b
        0x5d18aeb -> :sswitch_241
        0x6233516 -> :sswitch_236
        0x66f25ed -> :sswitch_22b
        0x55996271 -> :sswitch_221
        0x6de15a2e -> :sswitch_216
    .end sparse-switch

    :pswitch_data_98a
    .packed-switch 0x0
        :pswitch_28e
        :pswitch_284
        :pswitch_27e
        :pswitch_278
        :pswitch_272
        :pswitch_26c
        :pswitch_266
    .end packed-switch

    :pswitch_data_99c
    .packed-switch 0x2b
        :pswitch_7c8
        :pswitch_7aa
        :pswitch_7ab
    .end packed-switch
.end method

.method public onStart()V
    .registers 14

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2287
    .local v0, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 2288
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2290
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2291
    .local v1, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    .line 2292
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/high16 v5, 0x100000

    const/4 v6, 0x1

    if-ge v3, v4, :cond_53

    .line 2293
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_e1

    .line 2295
    .local v4, "pkg":Ljava/lang/String;
    :try_start_34
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2297
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 2298
    .local v7, "appid":I
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_4e} :catch_4f
    .catchall {:try_start_34 .. :try_end_4e} :catchall_e1

    .line 2301
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "appid":I
    goto :goto_50

    .line 2300
    :catch_4f
    move-exception v5

    .line 2292
    .end local v4    # "pkg":Ljava/lang/String;
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2303
    .end local v3    # "i":I
    :cond_53
    :try_start_53
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v3

    .line 2304
    .local v3, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_58
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v4, v7, :cond_93

    .line 2305
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_e1

    .line 2307
    .local v7, "pkg":Ljava/lang/String;
    :try_start_64
    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2309
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 2312
    .local v9, "appid":I
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2314
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_8e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_8e} :catch_8f
    .catchall {:try_start_64 .. :try_end_8e} :catchall_e1

    .line 2317
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "appid":I
    goto :goto_90

    .line 2316
    :catch_8f
    move-exception v8

    .line 2304
    .end local v7    # "pkg":Ljava/lang/String;
    :goto_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 2320
    .end local v4    # "i":I
    :cond_93
    :try_start_93
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v4, p0}, Lcom/android/server/DeviceIdleController$Injector;->getConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 2323
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2325
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2326
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2327
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 2330
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2331
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2332
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2333
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2334
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2335
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 2336
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 2337
    .end local v1    # "sysConfig":Lcom/android/server/SystemConfig;
    .end local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_93 .. :try_end_bd} :catchall_e1

    .line 2339
    new-instance v1, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService-IA;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 2340
    const-string v3, "deviceidle"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2341
    new-instance v1, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$LocalService-IA;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 2342
    const-class v3, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2343
    const-class v1, Lcom/android/server/PowerAllowlistInternal;

    new-instance v3, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService-IA;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2344
    return-void

    .line 2337
    :catchall_e1
    move-exception v1

    :try_start_e2
    monitor-exit p0
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v1
.end method

.method readConfigFileLocked()V
    .registers 4

    .line 4242
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4245
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_2f

    .line 4248
    .local v0, "stream":Ljava/io/FileInputStream;
    nop

    .line 4250
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 4251
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4252
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_1c} :catch_27
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 4256
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_2c

    goto :goto_2b

    .line 4255
    :catchall_20
    move-exception v1

    .line 4256
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 4258
    goto :goto_26

    .line 4257
    :catch_25
    move-exception v2

    .line 4259
    :goto_26
    throw v1

    .line 4253
    :catch_27
    move-exception v1

    .line 4256
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 4258
    :goto_2b
    goto :goto_2e

    .line 4257
    :catch_2c
    move-exception v1

    .line 4259
    nop

    .line 4260
    :goto_2e
    return-void

    .line 4246
    .end local v0    # "stream":Ljava/io/FileInputStream;
    :catch_2f
    move-exception v0

    .line 4247
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 3893
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3894
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3895
    return-void

    .line 3898
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3899
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz v0, :cond_21

    .line 3900
    return-void

    .line 3902
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3903
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2e

    .line 3904
    const-string/jumbo v0, "s:location"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3906
    :cond_2e
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 3910
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3911
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3912
    return-void

    .line 3915
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3916
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 3917
    return-void

    .line 3919
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3920
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2a

    .line 3921
    const-string/jumbo v0, "s:gps"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3923
    :cond_2a
    return-void
.end method

.method registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 786
    monitor-enter p0

    .line 787
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 789
    monitor-exit p0

    return-void

    .line 791
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->postStationaryStatus(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 792
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_27

    .line 793
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 796
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    goto :goto_2d

    .line 799
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 800
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 802
    :cond_2d
    :goto_2d
    monitor-exit p0

    .line 803
    return-void

    .line 802
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method removePowerSaveTempAllowlistAppChecked(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2841
    .local v0, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2842
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2841
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v5, v0

    move v6, p2

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2848
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2850
    .local v1, "token":J
    :try_start_27
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempAllowlistAppInternal(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    .line 2852
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2853
    nop

    .line 2854
    return-void

    .line 2852
    :catchall_2f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2853
    throw v3
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2567
    monitor-enter p0

    .line 2568
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2569
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2570
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2571
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2572
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2574
    :cond_15
    monitor-exit p0

    .line 2575
    const/4 v0, 0x0

    return v0

    .line 2574
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2608
    monitor-enter p0

    .line 2609
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2610
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2612
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2614
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2615
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2616
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2617
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .registers 4

    .line 2643
    monitor-enter p0

    .line 2644
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2646
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2647
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2650
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2652
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2654
    :cond_22
    monitor-exit p0

    .line 2655
    return-void

    .line 2654
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method resetPreIdleTimeoutMode()V
    .registers 2

    .line 3751
    monitor-enter p0

    .line 3752
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3753
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3754
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 3756
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postResetPreIdleTimeoutFactor()V

    .line 3757
    return-void

    .line 3754
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method resetSystemPowerWhitelistInternal()V
    .registers 3

    .line 2585
    monitor-enter p0

    .line 2586
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 2587
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2588
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2589
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2591
    monitor-exit p0

    .line 2592
    return-void

    .line 2591
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2595
    monitor-enter p0

    .line 2596
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2597
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2599
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2601
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2602
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2603
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2604
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method scheduleAlarmLocked(JZ)V
    .registers 22
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    .line 4007
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_16

    iget v1, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_16

    const/4 v2, 0x5

    if-eq v1, v2, :cond_16

    const/4 v2, 0x6

    if-eq v1, v2, :cond_16

    .line 4018
    return-void

    .line 4020
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v5, v1, p1

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 4021
    if-eqz p3, :cond_2d

    .line 4022
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v7, "DeviceIdleController.deep"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_6a

    .line 4024
    :cond_2d
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3f

    .line 4026
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v7, "DeviceIdleController.deep"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_6a

    .line 4029
    :cond_3f
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz v1, :cond_58

    .line 4030
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v1, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.deep"

    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_6a

    .line 4034
    :cond_58
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x2

    iget-wide v13, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v15, "DeviceIdleController.deep"

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 4038
    :goto_6a
    return-void
.end method

.method scheduleLightAlarmLocked(JJ)V
    .registers 23
    .param p1, "delay"    # J
    .param p3, "flex"    # J

    .line 4048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v1

    add-long v1, v1, p1

    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 4049
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz v1, :cond_23

    .line 4050
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.light"

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_35

    .line 4055
    :cond_23
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x3

    iget-wide v13, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v15, "DeviceIdleController.light"

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 4060
    :goto_35
    return-void
.end method

.method scheduleLightMaintenanceAlarmLocked(J)V
    .registers 14
    .param p1, "delay"    # J

    .line 4068
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    .line 4069
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x2

    const-string v8, "DeviceIdleController.light"

    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 4073
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .line 3159
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3160
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3161
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .registers 21
    .param p1, "delay"    # J

    .line 4123
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v1, v1, p1

    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 4124
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz v1, :cond_23

    .line 4125
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v1, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.sensing"

    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_35

    .line 4130
    :cond_23
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x2

    iget-wide v13, v0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v15, "DeviceIdleController.sensing"

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 4133
    :goto_35
    return-void
.end method

.method setActiveIdleOpsForTest(I)V
    .registers 3
    .param p1, "count"    # I

    .line 3672
    monitor-enter p0

    .line 3673
    :try_start_1
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3674
    monitor-exit p0

    .line 3675
    return-void

    .line 3674
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setAlarmsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 3687
    monitor-enter p0

    .line 3688
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 3689
    if-nez p1, :cond_8

    .line 3690
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3692
    :cond_8
    monitor-exit p0

    .line 3693
    return-void

    .line 3692
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setDeepEnabledForTest(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3200
    monitor-enter p0

    .line 3201
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 3202
    monitor-exit p0

    .line 3203
    return-void

    .line 3202
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setIdleStartTimeForTest(J)V
    .registers 4
    .param p1, "idleStartTime"    # J

    .line 3814
    monitor-enter p0

    .line 3815
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3816
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    .line 3817
    monitor-exit p0

    .line 3818
    return-void

    .line 3817
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method setJobsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 3678
    monitor-enter p0

    .line 3679
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 3680
    if-nez p1, :cond_8

    .line 3681
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3683
    :cond_8
    monitor-exit p0

    .line 3684
    return-void

    .line 3683
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setLightEnabledForTest(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3208
    monitor-enter p0

    .line 3209
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 3210
    monitor-exit p0

    .line 3211
    return-void

    .line 3210
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setLightStateForTest(I)V
    .registers 3
    .param p1, "lightState"    # I

    .line 3356
    monitor-enter p0

    .line 3357
    :try_start_1
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3358
    monitor-exit p0

    .line 3359
    return-void

    .line 3358
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setPreIdleTimeoutFactor(F)I
    .registers 4
    .param p1, "ratio"    # F

    .line 3728
    monitor-enter p0

    .line 3729
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_8

    .line 3731
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 3732
    :cond_8
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_12

    .line 3734
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    .line 3735
    :cond_12
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_21

    .line 3739
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 3741
    :cond_21
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3742
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3743
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2d

    .line 3745
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postUpdatePreIdleFactor()V

    .line 3746
    const/4 v0, 0x1

    return v0

    .line 3743
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method setPreIdleTimeoutMode(I)I
    .registers 3
    .param p1, "mode"    # I

    .line 3697
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getPreIdleTimeoutByMode(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutFactor(F)I

    move-result v0

    return v0
.end method

.method startMonitoringMotionLocked()V
    .registers 2

    .line 3927
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-nez v0, :cond_f

    .line 3928
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    .line 3930
    :cond_f
    return-void
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .registers 19
    .param p1, "reason"    # Ljava/lang/String;

    .line 3501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 3503
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_21

    .line 3505
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v2, :cond_20

    .line 3506
    iput v3, v0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3507
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "alarm"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3510
    :cond_20
    return-void

    .line 3513
    :cond_21
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v2, :cond_2a

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_2a

    .line 3522
    return-void

    .line 3525
    :cond_2a
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_188

    goto/16 :goto_187

    .line 3623
    :pswitch_37
    iput v8, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3624
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3625
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v0, v2, v3, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3629
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v4, v8

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v8, v8, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v4, v8

    float-to-long v8, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3631
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_6a

    .line 3632
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3634
    :cond_6a
    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3635
    invoke-direct {v0, v5, v7}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3636
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_187

    .line 3538
    :pswitch_78
    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3539
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3540
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3541
    iput-object v7, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3542
    iput-object v7, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3543
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3546
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v2, :cond_a4

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->hasSensor()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 3547
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 3548
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3549
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    .line 3550
    goto/16 :goto_187

    .line 3551
    :cond_a4
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v2, :cond_ad

    .line 3552
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3553
    goto/16 :goto_187

    .line 3556
    :cond_ad
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3559
    :pswitch_af
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3560
    invoke-direct {v0, v6, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3561
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {v0, v10, v11, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3562
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    .line 3564
    .local v2, "locationManager":Landroid/location/LocationManager;
    if-eqz v2, :cond_e0

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 3565
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v10

    if-eqz v10, :cond_e0

    .line 3567
    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3568
    invoke-virtual {v12}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    .line 3567
    invoke-virtual {v2, v10, v11, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3569
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_e2

    .line 3571
    :cond_e0
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    .line 3573
    :goto_e2
    if-eqz v2, :cond_105

    .line 3574
    const-string/jumbo v10, "gps"

    invoke-virtual {v2, v10}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v10

    if-eqz v10, :cond_105

    .line 3575
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3576
    const-wide/16 v12, 0x3e8

    const/high16 v14, 0x40a00000    # 5.0f

    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3577
    invoke-virtual {v9}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    .line 3576
    const-string/jumbo v11, "gps"

    move-object v10, v2

    invoke-virtual/range {v10 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3578
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_107

    .line 3580
    :cond_105
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3584
    :goto_107
    iget-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v9, :cond_10d

    .line 3585
    goto/16 :goto_187

    .line 3590
    .end local v2    # "locationManager":Landroid/location/LocationManager;
    :cond_10d
    :pswitch_10d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3591
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3592
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3597
    :pswitch_118
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3598
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3602
    :pswitch_124
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v0, v9, v10, v8}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3605
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v2, v8

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v8, v8, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v2, v8

    float-to-long v8, v2

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3608
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3609
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_154

    .line 3610
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3612
    :cond_154
    invoke-direct {v0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3613
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v2, v3, :cond_160

    .line 3614
    iput v3, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3615
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAllLightAlarmsLocked()V

    .line 3617
    :cond_160
    invoke-direct {v0, v6, v7}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3618
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3619
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3620
    goto :goto_187

    .line 3529
    :pswitch_16e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 3530
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 3531
    .local v2, "delay":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v5

    if-eqz v5, :cond_180

    .line 3532
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-long v2, v5

    .line 3534
    :cond_180
    invoke-virtual {v0, v2, v3, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3535
    invoke-direct {v0, v4, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3536
    nop

    .line 3639
    .end local v2    # "delay":J
    :goto_187
    return-void

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_16e
        :pswitch_78
        :pswitch_af
        :pswitch_10d
        :pswitch_37
        :pswitch_124
        :pswitch_118
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;Z)V
    .registers 21
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "forceProgression"    # Z

    .line 3377
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v2, :cond_143

    const/4 v3, 0x7

    if-ne v2, v3, :cond_d

    goto/16 :goto_143

    .line 3387
    :cond_d
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 3389
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v2

    .line 3390
    .local v2, "nowElapsed":J
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v8, :cond_26

    cmp-long v8, v2, v4

    if-ltz v8, :cond_26

    move v8, v10

    goto :goto_27

    :cond_26
    move v8, v9

    .line 3392
    .local v8, "crossedMaintenanceTime":Z
    :goto_27
    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v13, v11, v6

    if-lez v13, :cond_33

    cmp-long v13, v2, v11

    if-ltz v13, :cond_33

    move v13, v10

    goto :goto_34

    :cond_33
    move v13, v9

    .line 3395
    .local v13, "crossedProgressionTime":Z
    :goto_34
    const/4 v14, 0x5

    const/4 v15, 0x4

    if-eqz v8, :cond_43

    .line 3396
    if-eqz v13, :cond_41

    .line 3397
    cmp-long v4, v11, v4

    if-gtz v4, :cond_3f

    move v9, v10

    :cond_3f
    move v4, v9

    .local v4, "enterMaintenance":Z
    goto :goto_51

    .line 3399
    .end local v4    # "enterMaintenance":Z
    :cond_41
    const/4 v4, 0x1

    .restart local v4    # "enterMaintenance":Z
    goto :goto_51

    .line 3401
    .end local v4    # "enterMaintenance":Z
    :cond_43
    if-eqz v13, :cond_47

    .line 3402
    const/4 v4, 0x0

    .restart local v4    # "enterMaintenance":Z
    goto :goto_51

    .line 3403
    .end local v4    # "enterMaintenance":Z
    :cond_47
    if-eqz p2, :cond_127

    .line 3406
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v4, v15, :cond_4f

    if-ne v4, v14, :cond_50

    :cond_4f
    move v9, v10

    :cond_50
    move v4, v9

    .line 3414
    .restart local v4    # "enterMaintenance":Z
    :goto_51
    const/4 v5, 0x3

    const/4 v9, 0x0

    if-eqz v4, :cond_d0

    .line 3415
    iget-boolean v6, v0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v6, :cond_6e

    iget v6, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v6, v14, :cond_5e

    goto :goto_6e

    .line 3444
    :cond_5e
    iget-wide v5, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/DeviceIdleController;->scheduleLightMaintenanceAlarmLocked(J)V

    .line 3445
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3447
    iput v14, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3448
    invoke-static {v14, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    move v14, v8

    goto/16 :goto_126

    .line 3417
    :cond_6e
    :goto_6e
    iput v10, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3418
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3420
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v10, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v6, v6, v10

    if-gez v6, :cond_8c

    .line 3421
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v6, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    goto :goto_9c

    .line 3422
    :cond_8c
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v10, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_9c

    .line 3423
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v6, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3425
    :cond_9c
    :goto_9c
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v6, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v10, v10

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v11, v11, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v10, v11

    float-to-long v10, v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3430
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v10, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    invoke-virtual {v0, v6, v7, v10, v11}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJ)V

    .line 3431
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    add-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Lcom/android/server/DeviceIdleController;->scheduleLightMaintenanceAlarmLocked(J)V

    .line 3436
    const/4 v6, 0x6

    iput v6, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3437
    invoke-static {v6, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3438
    invoke-direct {v0, v5, v9}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3439
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v5, v15}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    move v14, v8

    goto :goto_126

    .line 3451
    :cond_d0
    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v10, v10, v6

    if-eqz v10, :cond_105

    .line 3455
    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    iget-wide v5, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long v5, v16, v5

    .line 3455
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 3457
    .local v5, "duration":J
    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v10, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_f8

    .line 3459
    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    move v14, v8

    .end local v8    # "crossedMaintenanceTime":Z
    .local v14, "crossedMaintenanceTime":Z
    iget-wide v7, v12, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v7, v5

    add-long/2addr v10, v7

    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    goto :goto_106

    .line 3463
    .end local v14    # "crossedMaintenanceTime":Z
    .restart local v8    # "crossedMaintenanceTime":Z
    :cond_f8
    move v14, v8

    .end local v8    # "crossedMaintenanceTime":Z
    .restart local v14    # "crossedMaintenanceTime":Z
    iget-wide v7, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v10, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long v10, v5, v10

    sub-long/2addr v7, v10

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    goto :goto_106

    .line 3451
    .end local v5    # "duration":J
    .end local v14    # "crossedMaintenanceTime":Z
    .restart local v8    # "crossedMaintenanceTime":Z
    :cond_105
    move v14, v8

    .line 3467
    .end local v8    # "crossedMaintenanceTime":Z
    .restart local v14    # "crossedMaintenanceTime":Z
    :goto_106
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3470
    iget-wide v5, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/DeviceIdleController;->scheduleLightMaintenanceAlarmLocked(J)V

    .line 3471
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3473
    iput v15, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3474
    invoke-static {v15, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3475
    const/4 v5, 0x2

    invoke-direct {v0, v5, v9}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3476
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3477
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3479
    :goto_126
    return-void

    .line 3410
    .end local v4    # "enterMaintenance":Z
    .end local v14    # "crossedMaintenanceTime":Z
    .restart local v8    # "crossedMaintenanceTime":Z
    :cond_127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stepLightIdleStateLocked called in invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DeviceIdleController"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    return-void

    .line 3380
    .end local v2    # "nowElapsed":J
    .end local v8    # "crossedMaintenanceTime":Z
    .end local v13    # "crossedProgressionTime":Z
    :cond_143
    :goto_143
    return-void
.end method

.method updateChargingLocked(Z)V
    .registers 4
    .param p1, "charging"    # Z

    .line 3096
    if-nez p1, :cond_11

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_11

    .line 3097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 3098
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_25

    .line 3099
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_25

    .line 3101
    :cond_11
    if-eqz p1, :cond_25

    .line 3102
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 3103
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_25

    .line 3104
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3105
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "charging"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3108
    :cond_25
    :goto_25
    return-void
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .registers 8
    .param p1, "connIntent"    # Landroid/content/Intent;

    .line 3023
    monitor-enter p0

    .line 3024
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3025
    .local v0, "cm":Landroid/net/ConnectivityManager;
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4e

    .line 3026
    if-nez v0, :cond_b

    .line 3027
    return-void

    .line 3030
    :cond_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3031
    .local v1, "ni":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 3033
    const/4 v2, 0x1

    if-nez v1, :cond_15

    .line 3034
    const/4 v3, 0x0

    .local v3, "conn":Z
    goto :goto_36

    .line 3036
    .end local v3    # "conn":Z
    :cond_15
    if-nez p1, :cond_1c

    .line 3037
    :try_start_17
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .restart local v3    # "conn":Z
    goto :goto_36

    .line 3039
    .end local v3    # "conn":Z
    :cond_1c
    const-string/jumbo v3, "networkType"

    const/4 v4, -0x1

    .line 3040
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3042
    .local v3, "networkType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_2c

    .line 3043
    monitor-exit p0

    return-void

    .line 3045
    :cond_2c
    const-string/jumbo v4, "noConnectivity"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v4, v2

    move v3, v4

    .line 3049
    .local v3, "conn":Z
    :goto_36
    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v3, v4, :cond_49

    .line 3050
    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 3051
    if-eqz v3, :cond_49

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_49

    .line 3052
    const-string/jumbo v4, "network"

    invoke-virtual {p0, v4, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    .line 3055
    .end local v3    # "conn":Z
    :cond_49
    monitor-exit p0

    .line 3056
    return-void

    .line 3055
    :catchall_4b
    move-exception v2

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_17 .. :try_end_4d} :catchall_4b

    throw v2

    .line 3025
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method updateInteractivityLocked()V
    .registers 4

    .line 3070
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 3072
    .local v0, "screenOn":Z
    if-nez v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v1, :cond_17

    .line 3073
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 3074
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_37

    .line 3075
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_37

    .line 3077
    :cond_17
    if-eqz v0, :cond_37

    .line 3078
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 3079
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-nez v1, :cond_37

    .line 3080
    :cond_2a
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3081
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string/jumbo v2, "screen"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3084
    :cond_37
    :goto_37
    return-void
.end method

.method updateQuickDozeFlagLocked(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 3122
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 3123
    if-eqz p1, :cond_e

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 3125
    if-eqz p1, :cond_16

    .line 3127
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3132
    :cond_16
    return-void
.end method

.method writeConfigFileLocked()V
    .registers 5

    .line 4329
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 4330
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4331
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4359
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4360
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4361
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const-string/jumbo v4, "n"

    if-ge v2, v3, :cond_31

    .line 4362
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4363
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "wl"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4364
    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4365
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4361
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4367
    .end local v2    # "i":I
    :cond_31
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_32
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 4368
    const-string/jumbo v3, "un-wl"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4369
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4370
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4367
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 4372
    .end local v2    # "i":I
    :cond_51
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4373
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4374
    return-void
.end method
