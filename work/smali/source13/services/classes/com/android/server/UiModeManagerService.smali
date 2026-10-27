.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$Injector;,
        Lcom/android/server/UiModeManagerService$LocalService;,
        Lcom/android/server/UiModeManagerService$Shell;,
        Lcom/android/server/UiModeManagerService$ProjectionHolder;
    }
.end annotation


# static fields
.field private static final DARK_MODE_ENABLE:Ljava/lang/String; = "dark_mode_enable"

.field private static final DARK_MODE_ENABLE_BY_POWER_SAVE:Ljava/lang/String; = "dark_mode_enable_by_power_save"

.field private static final DARK_MODE_ENABLE_BY_SETTING:Ljava/lang/String; = "dark_mode_enable_by_setting"

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final IS_CTS_BUILD:Z

.field private static final IS_INTERNATIONAL:Z

.field private static final LOG:Z = false

.field public static final SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_PROPERTY_DEVICE_THEME:Ljava/lang/String; = "persist.sys.theme"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

.field private final DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

.field private mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCar:Z

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCarModePackagePriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mCurrentUser:I

.field private mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

.field private mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

.field private final mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mDarkThemeObserver:Landroid/database/ContentObserver;

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private mEnableCarDockLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private final mInjector:Lcom/android/server/UiModeManagerService$Injector;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastBedtimeRequestedNightMode:Z

.field private mLastBroadcastState:I

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private final mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

.field private final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNightModeCustomType:I

.field private mNightModeLocked:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

.field private final mOnShutdown:Landroid/content/BroadcastReceiver;

.field private final mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

.field private mOverrideNightModeOff:Z

.field private mOverrideNightModeOn:Z

.field private mOverrideNightModeUser:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private mProjectionHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/UiModeManagerService$ProjectionHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProjectionListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IOnProjectionStateChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/app/IUiModeManager$Stub;

.field private mSetUiMode:I

.field private final mSettingsRestored:Landroid/content/BroadcastReceiver;

.field private mSetupWizardComplete:Z

.field private final mSetupWizardObserver:Landroid/database/ContentObserver;

.field private mStartDreamImmediatelyOnDock:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUiModeLocked:Z

.field private mVrHeadset:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWaitForScreenOff:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z

.field private mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityTaskManager(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarModePackagePriority(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNightModeLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetupWizardObserver(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiModeLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCharging(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastBedtimeRequestedNightMode(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNightMode(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNightModeCustomType(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOverrideNightModeOff(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOverrideNightModeOn(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOverrideNightModeUser(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProjectionHolders(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProjectionListeners(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetupWizardComplete(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVrHeadset(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyConfigurationExternallyLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->assertLegit(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelCustomAlarm(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->enforceProjectionTypePermissions(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misInNightModeUnderAuto(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->isInNightModeUnderAuto()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->onCustomTimeUpdated(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monProjectionStateChangedLocked(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersistComputedNightMode(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistComputedNightMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersistNightModeOverrides(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->releaseProjectionUnchecked(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetNightModeOverrideLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetupWizardCompleteForCurrentUser(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldApplyAutomaticChangesImmediately(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAfterBroadcastLocked(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConfigurationLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCustomTimeLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDockState(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNightModeFromSettingsLocked(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSystemProperties(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetIS_CTS_BUILD()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/UiModeManagerService;->IS_CTS_BUILD:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smassertSingleProjectionType(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->assertSingleProjectionType(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->fromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->toMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 115
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    .line 123
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 211
    const-string/jumbo v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/server/UiModeManagerService;->IS_INTERNATIONAL:Z

    .line 212
    nop

    .line 213
    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 212
    xor-int/2addr v0, v2

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/server/UiModeManagerService;->IS_CTS_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 220
    new-instance v0, Lcom/android/server/UiModeManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/UiModeManagerService$Injector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V

    .line 221
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setupWizardComplete"    # Z
    .param p3, "tm"    # Lcom/android/server/twilight/TwilightManager;
    .param p4, "injector"    # Lcom/android/server/UiModeManagerService$Injector;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 135
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 136
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 137
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 138
    const/16 v2, 0x16

    invoke-static {v2, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    .line 139
    const/4 v3, 0x6

    invoke-static {v3, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 140
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 141
    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 144
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 172
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 173
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 174
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 177
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 180
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 196
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 200
    new-instance v0, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 245
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 310
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v0, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance v0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 338
    new-instance v0, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 350
    new-instance v0, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 369
    new-instance v0, Lcom/android/server/UiModeManagerService$9;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    .line 485
    new-instance v0, Lcom/android/server/UiModeManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$10;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Landroid/content/BroadcastReceiver;

    .line 500
    new-instance v0, Lcom/android/server/UiModeManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$11;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    .line 654
    new-instance v0, Lcom/android/server/UiModeManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$12;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 227
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 228
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 229
    iput-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 230
    iput-object p4, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    .line 231
    return-void
.end method

.method private adjustStatusBarCarModeLocked()V
    .registers 11

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1933
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_14

    .line 1934
    nop

    .line 1935
    const-string/jumbo v0, "statusbar"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1943
    :cond_14
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_23

    .line 1944
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_1f

    .line 1945
    const/high16 v1, 0x80000

    goto :goto_20

    .line 1946
    :cond_1f
    const/4 v1, 0x0

    .line 1944
    :goto_20
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1949
    :cond_23
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_33

    .line 1950
    nop

    .line 1951
    const-string/jumbo v0, "notification"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1954
    :cond_33
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_a4

    .line 1955
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eqz v1, :cond_9f

    .line 1956
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1958
    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v6, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080844

    .line 1960
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 1961
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1962
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 1963
    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x106001c

    .line 1964
    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1040201

    .line 1967
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1966
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1040200

    .line 1969
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1968
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v1, 0x0

    const/high16 v3, 0x2000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1974
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1971
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1977
    .local v0, "n":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1978
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1977
    invoke-virtual {v1, v8, v7, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1979
    .end local v0    # "n":Landroid/app/Notification$Builder;
    .end local v2    # "carModeOffIntent":Landroid/content/Intent;
    goto :goto_a4

    .line 1980
    :cond_9f
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v7, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1984
    :cond_a4
    :goto_a4
    return-void
.end method

.method private applyConfigurationExternallyLocked()V
    .registers 4

    .line 1699
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_31

    .line 1700
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 1702
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->setDarkModeStatus(I)V

    .line 1704
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->clearSnapshotCache()V

    .line 1706
    :try_start_16
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1f} :catch_20

    goto :goto_31

    .line 1709
    :catch_20
    move-exception v0

    .line 1710
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Activity does not have the "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 1707
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_29
    move-exception v0

    .line 1708
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1713
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method private assertLegit(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1309
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->doesPackageHaveCallingUid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1312
    return-void

    .line 1310
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller claimed bogus packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static assertSingleProjectionType(I)V
    .registers 4
    .param p0, "p"    # I

    .line 1195
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1196
    .local v0, "projectionTypeIsPowerOfTwoOrZero":Z
    :goto_8
    if-eqz p0, :cond_d

    if-eqz v0, :cond_d

    .line 1199
    return-void

    .line 1197
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify exactly one projection type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0, "category"    # Ljava/lang/String;

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    return-object v0
.end method

.method private cancelCustomAlarm()V
    .registers 3

    .line 627
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 628
    return-void
.end method

.method private computeCustomNightMode()Z
    .registers 4

    .line 1693
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    move-result v0

    return v0
.end method

.method private disableCarMode(IILjava/lang/String;)V
    .registers 13
    .param p1, "flags"    # I
    .param p2, "priority"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1471
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1472
    .local v0, "isDisableAll":Z
    :goto_9
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1473
    .local v3, "isPriorityTracked":Z
    if-nez p2, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 1474
    .local v4, "isDefaultPriority":Z
    :goto_1c
    if-nez v4, :cond_37

    if-eqz v3, :cond_32

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 1478
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    :cond_32
    if-eqz v0, :cond_35

    :cond_34
    goto :goto_37

    :cond_35
    move v1, v2

    goto :goto_38

    :cond_37
    :goto_37
    nop

    .line 1482
    .local v1, "isChangeAllowed":Z
    :goto_38
    if-eqz v1, :cond_9f

    .line 1483
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableCarMode: disabling, priority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    if-eqz v0, :cond_93

    .line 1486
    new-instance v2, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 1487
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1488
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1490
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_92

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1491
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    .line 1492
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_72

    .line 1493
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_92
    goto :goto_9f

    .line 1494
    :cond_93
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    invoke-direct {p0, p2, p3}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    .line 1498
    :cond_9f
    :goto_9f
    return-void
.end method

.method private doesPackageHaveCallingUid(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1315
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 1316
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1317
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1319
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1b} :catch_27
    .catchall {:try_start_f .. :try_end_1b} :catchall_22

    if-ne v5, v0, :cond_1e

    const/4 v4, 0x1

    .line 1324
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1319
    return v4

    .line 1324
    :catchall_22
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    throw v4

    .line 1321
    :catch_27
    move-exception v5

    .line 1322
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 1324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    return v4
.end method

.method private enableCarMode(ILjava/lang/String;)V
    .registers 8
    .param p1, "priority"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1511
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1512
    .local v0, "isPriorityTracked":Z
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    .line 1513
    .local v1, "isPackagePresent":Z
    if-nez v0, :cond_43

    if-nez v1, :cond_43

    .line 1514
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableCarMode: enabled at priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->notifyCarModeEnabled(ILjava/lang/String;)V

    goto :goto_61

    .line 1519
    :cond_43
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableCarMode: car mode at priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already enabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :goto_61
    return-void
.end method

.method private enforceProjectionTypePermissions(I)V
    .registers 5
    .param p1, "p"    # I

    .line 1186
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_10

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"

    const-string/jumbo v2, "toggleProjection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_10
    return-void
.end method

.method private static fromMilliseconds(J)Ljava/time/LocalTime;
    .registers 4
    .param p0, "t"    # J

    .line 615
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method private getComputedUiModeConfiguration(I)I
    .registers 4
    .param p1, "uiMode"    # I

    .line 1685
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v0, :cond_7

    const/16 v1, 0x20

    goto :goto_9

    .line 1686
    :cond_7
    const/16 v1, 0x10

    :goto_9
    or-int/2addr p1, v1

    .line 1687
    if-eqz v0, :cond_f

    const/16 v0, -0x11

    goto :goto_11

    .line 1688
    :cond_f
    const/16 v0, -0x21

    :goto_11
    and-int/2addr p1, v0

    .line 1689
    return p1
.end method

.method private getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .param p2, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1744
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1747
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, v0

    :goto_16
    return-object v1
.end method

.method private initPowerSave()V
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 518
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 520
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 531
    return-void
.end method

.method private isCarModeEnabled()Z
    .registers 2

    .line 1545
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isDarkModeEnable(I)Z
    .registers 4
    .param p1, "uiMode"    # I

    .line 1723
    and-int/lit8 v0, p1, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isDeskDockState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 1562
    packed-switch p0, :pswitch_data_8

    .line 1568
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1566
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isInNightModeUnderAuto()I
    .registers 2

    .line 2248
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->isDarkModeEnable(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method private notifyCarModeDisabled(ILjava/lang/String;)V
    .registers 7
    .param p1, "priority"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1534
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.CALLING_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    const-string v1, "android.app.extra.PRIORITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1538
    return-void
.end method

.method private notifyCarModeEnabled(ILjava/lang/String;)V
    .registers 7
    .param p1, "priority"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1526
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.CALLING_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    const-string v1, "android.app.extra.PRIORITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1528
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1530
    return-void
.end method

.method private onCustomTimeUpdated(I)V
    .registers 4
    .param p1, "user"    # I

    .line 1360
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    .line 1361
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    return-void

    .line 1362
    :cond_9
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1363
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    .line 1364
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_1a

    .line 1366
    :cond_17
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    .line 1368
    :goto_1a
    return-void
.end method

.method private onProjectionStateChangedLocked(I)V
    .registers 12
    .param p1, "changedProjectionType"    # I

    .line 1331
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 1332
    return-void

    .line 1334
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 1335
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1338
    .local v1, "listenerProjectionType":I
    and-int v2, p1, v1

    if-eqz v2, :cond_49

    .line 1339
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 1340
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 1341
    .local v2, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IOnProjectionStateChangedListener;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1343
    invoke-direct {p0, v1, v3}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result v4

    .line 1345
    .local v4, "activeProjectionTypes":I
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 1346
    .local v5, "listenerCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2f
    if-ge v6, v5, :cond_46

    .line 1348
    :try_start_31
    invoke-virtual {v2, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IOnProjectionStateChangedListener;

    invoke-interface {v7, v4, v3}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 1352
    goto :goto_43

    .line 1350
    :catch_3b
    move-exception v7

    .line 1351
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v8, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v9, "Failed a call to onProjectionStateChanged()."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1354
    .end local v6    # "j":I
    :cond_46
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1334
    .end local v1    # "listenerProjectionType":I
    .end local v2    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IOnProjectionStateChangedListener;>;"
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "activeProjectionTypes":I
    .end local v5    # "listenerCount":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1357
    .end local v0    # "i":I
    :cond_4c
    return-void
.end method

.method private persistComputedNightMode(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 495
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 495
    const-string/jumbo v2, "ui_night_mode_last_computed"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 498
    return-void
.end method

.method private persistNightMode(I)V
    .registers 8
    .param p1, "user"    # I

    .line 1574
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_9

    goto :goto_55

    .line 1575
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1577
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    int-to-long v1, v1

    const-string/jumbo v3, "ui_night_mode_custom_type"

    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 1579
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 1581
    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1579
    const-string v5, "dark_theme_custom_start_time"

    invoke-static {v0, v5, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 1582
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 1584
    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    div-long/2addr v1, v3

    .line 1582
    const-string v3, "dark_theme_custom_end_time"

    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 1585
    return-void

    .line 1574
    :cond_55
    :goto_55
    return-void
.end method

.method private persistNightModeOverrides(I)V
    .registers 5
    .param p1, "user"    # I

    .line 1589
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_9

    goto :goto_2a

    .line 1590
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1591
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 1590
    const-string/jumbo v2, "ui_night_mode_override_on"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1593
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 1592
    const-string/jumbo v2, "ui_night_mode_override_off"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1594
    return-void

    .line 1589
    :cond_2a
    :goto_2a
    return-void
.end method

.method private populateWithRelevantActivePackageNames(ILjava/util/List;)I
    .registers 8
    .param p1, "projectionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1219
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1220
    const/4 v0, 0x0

    .line 1221
    .local v0, "projectionTypeFlag":I
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    if-eqz v1, :cond_31

    .line 1222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1223
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1224
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1225
    .local v3, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    and-int v4, p1, v2

    if-eqz v4, :cond_2e

    .line 1226
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->toPackageNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1227
    or-int/2addr v0, v2

    .line 1222
    .end local v2    # "key":I
    .end local v3    # "holders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1232
    .end local v1    # "i":I
    :cond_31
    return v0
.end method

.method private registerScreenOffEventLocked()V
    .registers 4

    .line 619
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v0, :cond_5

    return-void

    .line 620
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 621
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 624
    return-void
.end method

.method private registerTimeChangeEvent()V
    .registers 4

    .line 640
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 644
    return-void
.end method

.method private registerVrStateListener()V
    .registers 6

    .line 2014
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 2017
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v0, :cond_2d

    .line 2018
    :try_start_d
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_2d

    .line 2020
    :catch_13
    move-exception v1

    .line 2021
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 2022
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    nop

    .line 2023
    :goto_2e
    return-void
.end method

.method private releaseProjectionUnchecked(ILjava/lang/String;)Z
    .registers 11
    .param p1, "projectionType"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1238
    const/4 v1, 0x0

    .line 1239
    .local v1, "removed":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    if-eqz v2, :cond_5a

    .line 1240
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1241
    .local v2, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    if-eqz v2, :cond_5a

    .line 1243
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_16
    if-ltz v3, :cond_5a

    .line 1244
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1245
    .local v4, "holder":Lcom/android/server/UiModeManagerService$ProjectionHolder;
    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1246
    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$munlinkToDeath(Lcom/android/server/UiModeManagerService$ProjectionHolder;)V

    .line 1247
    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Projection type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " released by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1250
    const/4 v1, 0x1

    .line 1243
    .end local v4    # "holder":Lcom/android/server/UiModeManagerService$ProjectionHolder;
    :cond_57
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 1255
    .end local v2    # "holders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    .end local v3    # "i":I
    :cond_5a
    if-eqz v1, :cond_60

    .line 1256
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    goto :goto_82

    .line 1258
    :cond_60
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tried to release projection type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was not set by that package."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :goto_82
    monitor-exit v0

    return v1

    .line 1262
    .end local v1    # "removed":Z
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_4 .. :try_end_86} :catchall_84

    throw v1
.end method

.method private resetNightMode()V
    .registers 3

    .line 2240
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/server/UiModeManagerService;->IS_INTERNATIONAL:Z

    if-nez v0, :cond_1a

    :cond_b
    sget-boolean v0, Lcom/android/server/UiModeManagerService;->IS_CTS_BUILD:Z

    if-nez v0, :cond_1a

    .line 2242
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 2243
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset nightmode success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_1a
    return-void
.end method

.method private resetNightModeOverrideLocked()Z
    .registers 3

    .line 2003
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_a

    goto :goto_b

    .line 2010
    :cond_a
    return v1

    .line 2004
    :cond_b
    :goto_b
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 2005
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 2006
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    .line 2007
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 2008
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleNextCustomTimeListener()V
    .registers 14

    .line 1733
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    .line 1734
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1735
    .local v0, "now":Ljava/time/LocalDateTime;
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    .line 1736
    .local v1, "active":Z
    if-eqz v1, :cond_14

    .line 1737
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-direct {p0, v2, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    goto :goto_1a

    .line 1738
    :cond_14
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-direct {p0, v2, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    :goto_1a
    nop

    .line 1739
    .local v2, "next":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    .line 1740
    .local v11, "millis":J
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x1

    sget-object v8, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v10, 0x0

    move-wide v6, v11

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1741
    return-void
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 20
    .param p1, "category"    # Ljava/lang/String;

    .line 1889
    move-object/from16 v1, p0

    const-string v2, "Could not start dock app: "

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1890
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 1893
    const/4 v3, 0x0

    .line 1894
    .local v3, "dockAppStarted":Z
    if-eqz p1, :cond_97

    .line 1902
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 1903
    .local v15, "homeIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1905
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 1906
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1907
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_37} :catch_7d

    const/4 v0, 0x0

    const/16 v16, -0x2

    .line 1905
    move-object v8, v15

    move-object/from16 v17, v15

    .end local v15    # "homeIntent":Landroid/content/Intent;
    .local v17, "homeIntent":Landroid/content/Intent;
    move-object v15, v0

    :try_start_3e
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 1909
    .local v0, "result":I
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1910
    const/4 v2, 0x1

    move v3, v2

    move-object/from16 v6, v17

    .end local v3    # "dockAppStarted":Z
    .local v2, "dockAppStarted":Z
    goto :goto_78

    .line 1911
    .end local v2    # "dockAppStarted":Z
    .restart local v3    # "dockAppStarted":Z
    :cond_4d
    const/16 v4, -0x5b

    if-eq v0, v4, :cond_76

    .line 1912
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_5c} :catch_79

    move-object/from16 v6, v17

    .end local v17    # "homeIntent":Landroid/content/Intent;
    .local v6, "homeIntent":Landroid/content/Intent;
    :try_start_5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", startActivityWithConfig result "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_73} :catch_74

    goto :goto_78

    .line 1915
    .end local v0    # "result":I
    :catch_74
    move-exception v0

    goto :goto_7f

    .line 1911
    .end local v6    # "homeIntent":Landroid/content/Intent;
    .restart local v0    # "result":I
    .restart local v17    # "homeIntent":Landroid/content/Intent;
    :cond_76
    move-object/from16 v6, v17

    .line 1917
    .end local v0    # "result":I
    .end local v17    # "homeIntent":Landroid/content/Intent;
    .restart local v6    # "homeIntent":Landroid/content/Intent;
    :goto_78
    goto :goto_97

    .line 1915
    .end local v6    # "homeIntent":Landroid/content/Intent;
    .restart local v17    # "homeIntent":Landroid/content/Intent;
    :catch_79
    move-exception v0

    move-object/from16 v6, v17

    .end local v17    # "homeIntent":Landroid/content/Intent;
    .restart local v6    # "homeIntent":Landroid/content/Intent;
    goto :goto_7f

    .end local v6    # "homeIntent":Landroid/content/Intent;
    .restart local v15    # "homeIntent":Landroid/content/Intent;
    :catch_7d
    move-exception v0

    move-object v6, v15

    .line 1916
    .end local v15    # "homeIntent":Landroid/content/Intent;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v6    # "homeIntent":Landroid/content/Intent;
    :goto_7f
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_97

    .line 1903
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v6    # "homeIntent":Landroid/content/Intent;
    .restart local v15    # "homeIntent":Landroid/content/Intent;
    :cond_96
    move-object v6, v15

    .line 1922
    .end local v15    # "homeIntent":Landroid/content/Intent;
    :cond_97
    :goto_97
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 1925
    if-eqz p1, :cond_b1

    if-nez v3, :cond_b1

    iget-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    if-nez v0, :cond_aa

    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1926
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1927
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 1929
    :cond_b1
    return-void
.end method

.method private sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;

    .line 1848
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1849
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1848
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1850
    return-void
.end method

.method private setDarkModeStatus(I)V
    .registers 6
    .param p1, "uiMode"    # I

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1718
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->isDarkModeEnable(I)Z

    move-result v1

    const/4 v2, -0x2

    .line 1717
    const-string v3, "dark_mode_enable"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1720
    return-void
.end method

.method private setupWizardCompleteForCurrentUser()Z
    .registers 5

    .line 558
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 558
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    move v3, v1

    :cond_18
    return v3
.end method

.method private shouldApplyAutomaticChangesImmediately()Z
    .registers 3

    .line 1728
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1
.end method

.method private static toMilliSeconds(Ljava/time/LocalTime;)J
    .registers 5
    .param p0, "t"    # Ljava/time/LocalTime;

    .line 611
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static toPackageNameList(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/UiModeManagerService$ProjectionHolder;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1202
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1204
    .local v2, "p":Lcom/android/server/UiModeManagerService$ProjectionHolder;
    invoke-static {v2}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    .end local v2    # "p":Lcom/android/server/UiModeManagerService$ProjectionHolder;
    goto :goto_9

    .line 1206
    :cond_1d
    return-object v0
.end method

.method private unregisterScreenOffEventLocked()V
    .registers 3

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 633
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c} :catch_d

    .line 636
    goto :goto_e

    .line 634
    :catch_d
    move-exception v0

    .line 637
    :goto_e
    return-void
.end method

.method private unregisterTimeChangeEvent()V
    .registers 3

    .line 648
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    .line 651
    goto :goto_b

    .line 649
    :catch_a
    move-exception v0

    .line 652
    :goto_b
    return-void
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    .line 1854
    const/4 v0, 0x0

    .line 1855
    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1858
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v1, :cond_29

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_29

    .line 1860
    const-string v0, "android.intent.category.CAR_DOCK"

    goto :goto_29

    .line 1862
    :cond_14
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1866
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_29

    .line 1868
    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_29

    .line 1872
    :cond_23
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_29

    .line 1873
    const-string v0, "android.intent.category.HOME"

    .line 1884
    :cond_29
    :goto_29
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 1885
    return-void
.end method

.method private updateComputedNightModeLocked(Z)V
    .registers 4
    .param p1, "activate"    # Z

    .line 1987
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1988
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_22

    .line 1991
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    .line 1992
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1993
    return-void

    .line 1995
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 1996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1997
    return-void

    .line 1999
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    .line 2000
    return-void

    .line 1989
    :cond_22
    :goto_22
    return-void
.end method

.method private updateConfigurationLocked()V
    .registers 8

    .line 1597
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 1598
    .local v0, "uiMode":I
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    if-eqz v1, :cond_7

    goto :goto_28

    .line 1600
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_d

    .line 1601
    const/4 v0, 0x4

    goto :goto_28

    .line 1602
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_13

    .line 1603
    const/4 v0, 0x6

    goto :goto_28

    .line 1604
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_19

    .line 1605
    const/4 v0, 0x3

    goto :goto_28

    .line 1606
    :cond_19
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1607
    const/4 v0, 0x2

    goto :goto_28

    .line 1608
    :cond_23
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_28

    .line 1609
    const/4 v0, 0x7

    .line 1612
    :cond_28
    :goto_28
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_31

    if-ne v1, v4, :cond_39

    .line 1613
    :cond_31
    if-ne v1, v3, :cond_35

    move v1, v4

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1616
    :cond_39
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_5e

    .line 1617
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1618
    .local v1, "activateNightMode":Z
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v3, :cond_5a

    .line 1619
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v5, v6}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 1620
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v3}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v3

    .line 1621
    .local v3, "lastState":Lcom/android/server/twilight/TwilightState;
    if-nez v3, :cond_55

    iget-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_59

    :cond_55
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v5

    :goto_59
    move v1, v5

    .line 1623
    .end local v3    # "lastState":Lcom/android/server/twilight/TwilightState;
    :cond_5a
    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1624
    .end local v1    # "activateNightMode":Z
    goto :goto_67

    .line 1625
    :cond_5e
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_67

    .line 1626
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v3}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 1630
    :cond_67
    :goto_67
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_84

    .line 1631
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    if-ne v1, v4, :cond_76

    .line 1632
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    goto :goto_87

    .line 1634
    :cond_76
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerTimeChangeEvent()V

    .line 1635
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    .line 1636
    .local v1, "activate":Z
    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1637
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    .line 1638
    .end local v1    # "activate":Z
    goto :goto_87

    .line 1640
    :cond_84
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterTimeChangeEvent()V

    .line 1647
    :goto_87
    sget-boolean v1, Lcom/android/server/UiModeManagerService;->IS_CTS_BUILD:Z

    const-string v3, "dark_mode_enable_by_power_save"

    if-eqz v1, :cond_a9

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_a9

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v1, :cond_a9

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-nez v1, :cond_a9

    .line 1648
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1650
    and-int/lit8 v0, v0, -0x11

    .line 1651
    or-int/lit8 v0, v0, 0x20

    goto :goto_b8

    .line 1654
    :cond_a9
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1655
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->getComputedUiModeConfiguration(I)I

    move-result v0

    .line 1667
    :goto_b8
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConfigurationLocked: mDockState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mCarMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mCar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mPowerSave="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mComputedNightMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mNightMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uiMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 1678
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_12b

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    if-eqz v1, :cond_127

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_12b

    .line 1679
    :cond_127
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 1681
    :cond_12b
    return-void
.end method

.method private updateCustomTimeLocked()V
    .registers 3

    .line 563
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    return-void

    .line 564
    :cond_6
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_14

    .line 567
    :cond_11
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    .line 569
    :goto_14
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    .line 570
    return-void
.end method

.method private updateDockState(I)V
    .registers 7
    .param p1, "newState"    # I

    .line 1549
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1550
    :try_start_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_1d

    .line 1551
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 1552
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    const-string v4, ""

    invoke-virtual {p0, v1, v3, v3, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 1554
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1d

    .line 1555
    invoke-virtual {p0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 1558
    :cond_1d
    monitor-exit v0

    .line 1559
    return-void

    .line 1558
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "userId"    # I

    .line 580
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_a2

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_a

    goto/16 :goto_a2

    .line 583
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    if-eqz v0, :cond_a1

    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x10e004e

    .line 585
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 584
    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 587
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "ui_night_mode_custom_type"

    invoke-static {v0, v2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ui_night_mode_override_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 591
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "ui_night_mode_override_off"

    invoke-static {v0, v3, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    goto :goto_54

    :cond_53
    move v0, v2

    :goto_54
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 593
    nop

    .line 594
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    .line 596
    invoke-virtual {v3}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 594
    const-string v7, "dark_theme_custom_start_time"

    invoke-static {v0, v7, v3, v4, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v3

    mul-long/2addr v3, v5

    .line 593
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 597
    nop

    .line 598
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 600
    invoke-virtual {v3}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    div-long/2addr v3, v5

    .line 598
    const-string v7, "dark_theme_custom_end_time"

    invoke-static {v0, v7, v3, v4, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v3

    mul-long/2addr v3, v5

    .line 597
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 602
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->resetNightMode()V

    .line 603
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v0, :cond_a1

    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "ui_night_mode_last_computed"

    invoke-static {v0, v3, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_9f

    move v2, v1

    :cond_9f
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 608
    :cond_a1
    return-void

    .line 581
    :cond_a2
    :goto_a2
    return-void
.end method

.method private updateSystemProperties()V
    .registers 5

    .line 377
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 379
    .local v0, "mode":I
    if-eqz v0, :cond_17

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 380
    :cond_17
    const/4 v0, 0x2

    .line 382
    :cond_18
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.theme"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private verifySetupWizardCompleted()V
    .registers 7

    .line 545
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 546
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 547
    .local v1, "userId":I
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v2

    if-nez v2, :cond_22

    .line 548
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 549
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 550
    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 549
    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_25

    .line 553
    :cond_22
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 555
    :goto_25
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1371
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1372
    :try_start_3
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    const-string v1, "  mDockState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1374
    const-string v1, " mLastBroadcastState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1376
    const-string v1, " mStartDreamImmediatelyOnDock="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1378
    const-string v1, "  mNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1379
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService$Shell;->-$$Nest$smnightModeToStr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    const-string v1, " mOverrideOn/Off="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1381
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1383
    const-string v1, " mNightModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1385
    const-string v1, "  mCarModeEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1386
    const-string v1, " (carModeApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1387
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1388
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1389
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1390
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1391
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_7c

    .line 1393
    :cond_a3
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    const-string v1, " waitScreenOff="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1395
    const-string v1, " mComputedNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1396
    const-string v1, " customStart="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1397
    const-string v1, " customEnd"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1398
    const-string v1, " mCarModeEnableFlags="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1399
    const-string v1, " mEnableCarDockLaunch="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1401
    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    const-string v1, " mUiModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1403
    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1408
    const-string v1, " mSystemReady="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1409
    const-string v1, " mPowerSave="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1412
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_13a

    .line 1414
    const-string v1, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1415
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1418
    :cond_13a
    invoke-static {}, Lcom/android/server/MiuiUiModeManagerServiceStub;->getInstance()Lcom/android/server/MiuiUiModeManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/MiuiUiModeManagerServiceStub;->dump(Ljava/io/PrintWriter;)V

    .line 1419
    monitor-exit v0

    .line 1420
    return-void

    .line 1419
    :catchall_143
    move-exception v1

    monitor-exit v0
    :try_end_145
    .catchall {:try_start_3 .. :try_end_145} :catchall_143

    throw v1
.end method

.method protected getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected getInnerLock()Ljava/lang/Object;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method protected getService()Landroid/app/IUiModeManager;
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method synthetic lambda$initPowerSave$2$com-android-server-UiModeManagerService(Landroid/os/PowerSaveState;)V
    .registers 5
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 521
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v1, v2, :cond_b

    .line 523
    monitor-exit v0

    return-void

    .line 525
    :cond_b
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 526
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_17

    .line 527
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 529
    :cond_17
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-UiModeManagerService()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    .line 335
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$onStart$1$com-android-server-UiModeManagerService(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 471
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_3
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    .line 473
    .local v1, "twilightManager":Lcom/android/server/twilight/TwilightManager;
    if-eqz v1, :cond_f

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 474
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 475
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    .line 476
    .end local v1    # "twilightManager":Lcom/android/server/twilight/TwilightManager;
    monitor-exit v0

    .line 478
    return-void

    .line 476
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 9
    .param p1, "phase"    # I

    .line 404
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_c0

    .line 405
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 407
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 408
    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 409
    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 410
    const/16 v4, 0x1a

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 411
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 412
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 413
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 414
    const-class v3, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightManager;

    .line 415
    .local v3, "twilightManager":Lcom/android/server/twilight/TwilightManager;
    if-eqz v3, :cond_5b

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 416
    :cond_5b
    const-class v4, Landroid/os/PowerManagerInternal;

    .line 417
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManagerInternal;

    iput-object v4, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 418
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->initPowerSave()V

    .line 419
    iget v4, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_6f

    goto :goto_70

    :cond_6f
    move v2, v6

    :goto_70
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 420
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    .line 422
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "ui_night_mode"

    .line 423
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 425
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 428
    .local v2, "batteryFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 429
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.os.action.SETTING_RESTORED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 433
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 434
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 435
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "batteryFilter":Landroid/content/IntentFilter;
    .end local v3    # "twilightManager":Lcom/android/server/twilight/TwilightManager;
    monitor-exit v0

    goto :goto_c0

    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_7 .. :try_end_bf} :catchall_bd

    throw v1

    .line 438
    :cond_c0
    :goto_c0
    invoke-static {}, Lcom/android/server/MiuiUiModeManagerServiceStub;->getInstance()Lcom/android/server/MiuiUiModeManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/MiuiUiModeManagerServiceStub;->onBootPhase(I)V

    .line 439
    return-void
.end method

.method public onStart()V
    .registers 7

    .line 443
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 446
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 448
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 449
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x11101bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 451
    const v2, 0x10e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 453
    const v2, 0x10e0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 455
    const v2, 0x10e0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_33

    move v2, v4

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 457
    const v2, 0x10e005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v4, :cond_41

    move v2, v4

    goto :goto_42

    :cond_41
    move v2, v3

    :goto_42
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 459
    const v2, 0x111012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 461
    const v2, 0x1110173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 462
    const v2, 0x1110172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 463
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 464
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 465
    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    :cond_73
    move v3, v4

    :cond_74
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 466
    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 467
    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 470
    new-instance v3, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".onStart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 479
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    const-string/jumbo v4, "uimode"

    invoke-virtual {p0, v4, v3}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 480
    const-class v3, Lcom/android/server/UiModeManagerInternal;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/UiModeManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 482
    invoke-static {}, Lcom/android/server/MiuiUiModeManagerServiceStub;->getInstance()Lcom/android/server/MiuiUiModeManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/server/MiuiUiModeManagerServiceStub;->init(Lcom/android/server/UiModeManagerService;)V

    .line 483
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 8
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 387
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 388
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->persistComputedNightMode(I)V

    .line 389
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 390
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 391
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ui_night_mode"

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 396
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 397
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    .line 396
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 398
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 399
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_24 .. :try_end_53} :catchall_51

    throw v1
.end method

.method setCarModeLocked(ZIILjava/lang/String;)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "flags"    # I
    .param p3, "priority"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1437
    if-eqz p1, :cond_6

    .line 1438
    invoke-direct {p0, p3, p4}, Lcom/android/server/UiModeManagerService;->enableCarMode(ILjava/lang/String;)V

    goto :goto_9

    .line 1440
    :cond_6
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/UiModeManagerService;->disableCarMode(IILjava/lang/String;)V

    .line 1442
    :goto_9
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->isCarModeEnabled()Z

    move-result v0

    .line 1444
    .local v0, "isCarModeNowEnabled":Z
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v1, v0, :cond_25

    .line 1445
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 1447
    if-nez v0, :cond_25

    .line 1448
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1449
    .local v1, "context":Landroid/content/Context;
    nop

    .line 1450
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1451
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1449
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 1454
    .end local v1    # "context":Landroid/content/Context;
    :cond_25
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 1455
    return-void
.end method

.method setDefaultUiModeType(I)V
    .registers 2
    .param p1, "DefaultUiModeType"    # I

    .line 2261
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 2262
    return-void
.end method

.method updateLocked(II)V
    .registers 21
    .param p1, "enableFlags"    # I
    .param p2, "disableFlags"    # I

    .line 1751
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1752
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1753
    .local v4, "oldAction":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    .line 1754
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 1755
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_1b

    .line 1756
    :cond_13
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1757
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 1760
    :cond_1b
    :goto_1b
    iget-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_31

    .line 1761
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v5, v6, :cond_50

    .line 1762
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 1763
    if-eqz v4, :cond_2c

    .line 1764
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 1766
    :cond_2c
    iput v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1767
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_50

    .line 1769
    :cond_31
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1770
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-nez v5, :cond_50

    .line 1771
    if-eqz v4, :cond_46

    .line 1772
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 1774
    :cond_46
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1775
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_50

    .line 1778
    :cond_4d
    iput v7, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1779
    move-object v3, v4

    .line 1782
    :cond_50
    :goto_50
    const/4 v5, 0x1

    if-eqz v3, :cond_80

    .line 1795
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "enableFlags"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1797
    const-string v9, "disableFlags"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1798
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1805
    iput-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1806
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 1807
    .end local v8    # "intent":Landroid/content/Intent;
    goto :goto_a8

    .line 1808
    :cond_80
    const/4 v8, 0x0

    .line 1809
    .local v8, "category":Ljava/lang/String;
    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v9, :cond_90

    .line 1810
    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v9, :cond_a5

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a5

    .line 1812
    const-string v8, "android.intent.category.CAR_DOCK"

    goto :goto_a5

    .line 1814
    :cond_90
    iget v9, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v9}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 1815
    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a5

    .line 1817
    const-string v8, "android.intent.category.DESK_DOCK"

    goto :goto_a5

    .line 1820
    :cond_9f
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_a5

    .line 1821
    const-string v8, "android.intent.category.HOME"

    .line 1830
    :cond_a5
    :goto_a5
    invoke-direct {v0, v8}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 1834
    .end local v8    # "category":Ljava/lang/String;
    :goto_a8
    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v8, :cond_c2

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v8, :cond_b9

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v8, :cond_b9

    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_c1

    :cond_b9
    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    if-ne v8, v6, :cond_c2

    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v6, :cond_c2

    :cond_c1
    move v7, v5

    :cond_c2
    move v5, v7

    .line 1838
    .local v5, "keepScreenOn":Z
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eq v5, v6, :cond_d8

    .line 1839
    if-eqz v5, :cond_d3

    .line 1840
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_d8

    .line 1842
    :cond_d3
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1845
    :cond_d8
    :goto_d8
    return-void
.end method
