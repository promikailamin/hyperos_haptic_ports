.class public final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# static fields
.field public static final SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

.field public final DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

.field public mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAttentionModeThemeOverlay:I

.field public final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field public mCar:Z

.field public mCarModeEnableFlags:I

.field public mCarModeEnabled:Z

.field public mCarModeKeepsScreenOn:Z

.field public mCarModePackagePriority:Ljava/util/Map;

.field public mCharging:Z

.field public mComputedNightMode:Z

.field public mConfiguration:Landroid/content/res/Configuration;

.field public final mContrastObserver:Landroid/database/ContentObserver;

.field public final mContrasts:Landroid/util/SparseArray;

.field public final mCurUiMode:Lcom/android/server/UiModeManagerService$IntProperty;

.field public mCurrentUser:I

.field public mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

.field public mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

.field public final mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mDarkThemeObserver:Landroid/database/ContentObserver;

.field public mDefaultUiModeType:I

.field public mDeskModeKeepsScreenOn:Z

.field public final mDeviceInactiveListener:Landroid/content/BroadcastReceiver;

.field public final mDisplayUiModeOverrides:Landroid/util/SparseIntArray;

.field public final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field public mDockState:I

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mDreamsDisabledByAmbientModeSuppression:Z

.field public mEnableCarDockLaunch:Z

.field public final mForceInvertOverrideObserver:Landroid/database/ContentObserver;

.field public final mForceInvertOverrideStates:Landroid/util/SparseArray;

.field public final mForceInvertStateObserver:Landroid/database/ContentObserver;

.field public final mForceInvertStates:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public mHoldingConfiguration:Z

.field public final mInjector:Lcom/android/server/UiModeManagerService$Injector;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastBedtimeRequestedNightMode:Z

.field public mLastBroadcastState:I

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public final mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public final mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

.field public mNightModeCustomType:I

.field public mNightModeLocked:Z

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mOnShutdown:Landroid/content/BroadcastReceiver;

.field public final mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

.field public mOverrideNightModeOff:Z

.field public mOverrideNightModeOn:Z

.field public mOverrideNightModeUser:I

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSave:Z

.field public mProjectionHolders:Landroid/util/SparseArray;

.field public mProjectionListeners:Landroid/util/SparseArray;

.field public final mResultReceiver:Landroid/content/BroadcastReceiver;

.field public final mService:Landroid/app/IUiModeManager$Stub;

.field public mSetUiMode:I

.field public final mSettingsRestored:Landroid/content/BroadcastReceiver;

.field public mSetupWizardComplete:Z

.field public final mSetupWizardObserver:Landroid/database/ContentObserver;

.field public mStartDreamImmediatelyOnDock:Z

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mSystemReady:Z

.field public mTelevision:Z

.field public final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field public mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field public mUiModeLocked:Z

.field public final mUiModeManagerCallbacks:Landroid/util/SparseArray;

.field public mVrHeadset:Z

.field public final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field public mWaitForDeviceInactive:Z

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWatch:Z

.field public mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$2N9DjQtYD5HUZEPjxPEXnx7Bd-M(Lcom/android/server/UiModeManagerService;Landroid/os/PowerSaveState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->lambda$initPowerSave$5(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJG2yE7wggEJULCwOUcYer0YM1M(ILandroid/app/IUiModeManagerCallback;)V
    .registers 2

    .line 475
    invoke-interface {p1, p0}, Landroid/app/IUiModeManagerCallback;->notifyForceInvertStateChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W3U0TL5VpA2BWPy1nV7tKwkzrdg(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$d-q11FI_pqwIuQRrkpxrFJpZafA(Landroid/app/IUiModeManagerCallback;)V
    .registers 1

    .line 502
    invoke-interface {p0}, Landroid/app/IUiModeManagerCallback;->notifyForceInvertOverrideStateChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$tABwohs9IxvR6lmLmwZ4tCU5Qh8(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->lambda$onStart$4(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityTaskManager(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttentionModeThemeOverlay(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarModePackagePriority(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurUiMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:Lcom/android/server/UiModeManagerService$IntProperty;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayUiModeOverrides(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mDisplayUiModeOverrides:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalService(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$LocalService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightModeLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetupWizardObserver(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiModeLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAttentionModeThemeOverlay(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCharging(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastBedtimeRequestedNightMode(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNightModeCustomType(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOverrideNightModeOff(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOverrideNightModeOn(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOverrideNightModeUser(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProjectionHolders(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProjectionListeners(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSetupWizardComplete(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVrHeadset(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyConfigurationExternallyLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->assertLegit(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelCustomAlarm(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->enforceProjectionTypePermissions(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetContrastLocked(Lcom/android/server/UiModeManagerService;I)F
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->getContrastLocked(I)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetForceInvertOverrideStateLocked(Lcom/android/server/UiModeManagerService;I)Lcom/android/server/accessibility/ForceInvertOverrideState;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->getForceInvertOverrideStateLocked(I)Lcom/android/server/accessibility/ForceInvertOverrideState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetForceInvertStateLocked(Lcom/android/server/UiModeManagerService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->getForceInvertStateLocked(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->onCustomTimeUpdated(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProjectionStateChangedLocked(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistComputedNightMode(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistComputedNightMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistNightModeOverrides(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->releaseProjectionUnchecked(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetNightModeOverrideLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetupWizardCompleteForCurrentUser(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldApplyAutomaticChangesImmediately(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAfterBroadcastLocked(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateConfigurationLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateContrastLocked(Lcom/android/server/UiModeManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->updateContrastLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateCustomTimeLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDockState(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForceInvertOverrideStates(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateForceInvertOverrideStates()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForceInvertStates(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateForceInvertStates()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNightModeFromSettingsLocked(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemProperties(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smassertSingleProjectionType(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->assertSingleProjectionType(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->fromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J
    .registers 3

    .line 0
    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->toMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 140
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    .line 147
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 296
    new-instance v0, Lcom/android/server/UiModeManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/UiModeManagerService$Injector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V
    .registers 8

    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 161
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 164
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mDisplayUiModeOverrides:Landroid/util/SparseIntArray;

    .line 167
    new-instance v1, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    const/4 v1, -0x1

    .line 185
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    const/16 v1, 0x3e8

    .line 186
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    const/16 v1, 0x16

    .line 187
    invoke-static {v1, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    const/4 v2, 0x6

    .line 188
    invoke-static {v2, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 189
    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 190
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 193
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 208
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    const/4 v1, 0x1

    .line 213
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 215
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDreamsDisabledByAmbientModeSuppression:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 219
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 221
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 223
    new-instance v1, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:Lcom/android/server/UiModeManagerService$IntProperty;

    .line 241
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 242
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 245
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 248
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 264
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 268
    new-instance v0, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 274
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    .line 285
    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    .line 288
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    .line 291
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertOverrideStates:Landroid/util/SparseArray;

    .line 322
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    new-instance v0, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 385
    new-instance v0, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDeviceInactiveListener:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v0, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 411
    new-instance v0, Lcom/android/server/UiModeManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 423
    new-instance v0, Lcom/android/server/UiModeManagerService$10;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$10;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 442
    new-instance v0, Lcom/android/server/UiModeManagerService$11;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$11;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    .line 449
    new-instance v0, Lcom/android/server/UiModeManagerService$12;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$12;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStateObserver:Landroid/database/ContentObserver;

    .line 456
    new-instance v0, Lcom/android/server/UiModeManagerService$13;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$13;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertOverrideObserver:Landroid/database/ContentObserver;

    .line 509
    new-instance v0, Lcom/android/server/UiModeManagerService$14;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$14;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mContrastObserver:Landroid/database/ContentObserver;

    .line 688
    new-instance v0, Lcom/android/server/UiModeManagerService$15;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$15;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Landroid/content/BroadcastReceiver;

    .line 703
    new-instance v0, Lcom/android/server/UiModeManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$16;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    .line 303
    new-instance v0, Lcom/android/server/UiModeManagerService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/android/server/UiModeManagerService$Stub;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 304
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 305
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 306
    iput-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 307
    iput-object p4, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    return-void
.end method

.method public static assertSingleProjectionType(I)V
    .registers 2

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz p0, :cond_d

    if-eqz v0, :cond_d

    return-void

    .line 1498
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must specify exactly one projection type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10200000

    .line 313
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static fromMilliseconds(J)Ljava/time/LocalTime;
    .registers 4

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 816
    invoke-static {p0, p1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method private getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 3

    .line 2200
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 2203
    invoke-virtual {p0, p2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-wide/16 p1, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_14
    return-object p0
.end method

.method public static isDeskDockState(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    .line 408
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static toMilliSeconds(Ljava/time/LocalTime;)J
    .registers 5

    .line 812
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static toPackageNameList(Ljava/util/Collection;)Ljava/util/List;
    .registers 3

    .line 1503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1504
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1505
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public final adjustStatusBarCarModeLocked()V
    .registers 10

    .line 2401
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2402
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_13

    .line 2403
    const-string/jumbo v1, "statusbar"

    .line 2404
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2412
    :cond_13
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_22

    .line 2413
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_1e

    const/high16 v2, 0x80000

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 2418
    :cond_22
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_31

    .line 2419
    const-string/jumbo v1, "notification"

    .line 2420
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2423
    :cond_31
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_a1

    .line 2424
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eqz v2, :cond_9c

    .line 2425
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2427
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v3, "CAR_MODE"

    invoke-direct {v1, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10809bd

    .line 2429
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x4

    .line 2430
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 2431
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 2432
    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x106001c

    .line 2433
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x10401ef

    .line 2436
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2435
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x10401ee

    .line 2438
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2437
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/high16 v3, 0x2000000

    .line 2443
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2440
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2446
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2447
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2446
    invoke-virtual {p0, v7, v6, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    .line 2449
    :cond_9c
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v6, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_a1
    return-void
.end method

.method public final applyConfigurationExternallyLocked()V
    .registers 3

    .line 2168
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_2a

    .line 2169
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 2171
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->clearSnapshotCache()V

    .line 2173
    :try_start_f
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 2177
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Activity does not have the "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :catch_22
    move-exception p0

    .line 2175
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Failure communicating with activity manager"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final assertLegit(Ljava/lang/String;)V
    .registers 4

    .line 1788
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->doesPackageHaveCallingUid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1789
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller claimed bogus packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final cancelCustomAlarm()V
    .registers 2

    .line 829
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public final computeCustomNightMode()Z
    .registers 3

    .line 2162
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    move-result p0

    return p0
.end method

.method public final disableCarMode(IILjava/lang/String;)V
    .registers 7

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 1949
    :goto_7
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez p2, :cond_18

    goto :goto_2e

    :cond_18
    if-eqz v0, :cond_2c

    .line 1951
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 1955
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_2c
    if-eqz p1, :cond_8f

    .line 1960
    :cond_2e
    :goto_2e
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableCarMode: disabling, priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_83

    .line 1963
    new-instance p1, Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 1964
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1965
    iget-object p2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 1967
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1968
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    goto :goto_62

    :cond_82
    return-void

    .line 1971
    :cond_83
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    invoke-virtual {p0, p2, p3}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    :cond_8f
    return-void
.end method

.method public final doesPackageHaveCallingUid(Ljava/lang/String;)Z
    .registers 7

    .line 1794
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 1795
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1798
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1b} :catch_27
    .catchall {:try_start_f .. :try_end_1b} :catchall_22

    if-ne p0, v0, :cond_1e

    const/4 v4, 0x1

    .line 1803
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_22
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1804
    throw p0

    .line 1803
    :catch_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method public dumpImpl(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1854
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1855
    :try_start_3
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    const-string v1, "  mDockState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1857
    const-string v1, " mLastBroadcastState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1859
    const-string v1, " mStartDreamImmediatelyOnDock="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1861
    const-string v1, "  mNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1862
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService$Shell;->-$$Nest$smnightModeToStr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1863
    const-string v1, " mOverrideOn/Off="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1864
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1865
    const-string v1, "  mAttentionModeThemeOverlay="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1866
    const-string v1, " mNightModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1868
    const-string v1, "  mCarModeEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1869
    const-string v1, " (carModeApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1870
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1871
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1872
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1873
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1874
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8e

    :catchall_b5
    move-exception p0

    goto/16 :goto_14b

    .line 1876
    :cond_b8
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    const-string v1, " mWaitForDeviceInactive="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1878
    const-string v1, " mComputedNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1879
    const-string v1, " customStart="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1880
    const-string v1, " customEnd"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1881
    const-string v1, " mCarModeEnableFlags="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1882
    const-string v1, " mEnableCarDockLaunch="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1884
    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1885
    const-string v1, " mUiModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1886
    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1889
    const-string v1, " mSystemReady="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1891
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_149

    .line 1893
    const-string v1, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1894
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {p0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1896
    :cond_149
    monitor-exit v0

    return-void

    :goto_14b
    monitor-exit v0
    :try_end_14c
    .catchall {:try_start_3 .. :try_end_14c} :catchall_b5

    throw p0
.end method

.method public final enableCarMode(ILjava/lang/String;)V
    .registers 6

    .line 1988
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1989
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_3f

    if-nez v1, :cond_3f

    .line 1991
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCarMode: enabled at priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->notifyCarModeEnabled(ILjava/lang/String;)V

    return-void

    .line 1996
    :cond_3f
    sget-object p0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableCarMode: car mode at priority "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already enabled."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceProjectionTypePermissions(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_10

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"

    const-string/jumbo v0, "toggleProjection"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public final getComputedUiModeConfiguration(I)I
    .registers 3

    .line 2154
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz p0, :cond_7

    const/16 v0, 0x20

    goto :goto_9

    :cond_7
    const/16 v0, 0x10

    :goto_9
    or-int/2addr p1, v0

    if-eqz p0, :cond_f

    const/16 p0, -0x11

    goto :goto_11

    :cond_f
    const/16 p0, -0x21

    :goto_11
    and-int/2addr p0, p1

    return p0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 743
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public final getContrastLocked(I)F
    .registers 3

    .line 1713
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->updateContrastLocked(I)Z

    .line 1714
    :cond_b
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getForceInvertOverrideStateLocked(I)Lcom/android/server/accessibility/ForceInvertOverrideState;
    .registers 4

    .line 1690
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertOverrideStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/ForceInvertOverrideState;

    if-nez v0, :cond_1a

    .line 1691
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1a

    .line 1692
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->updateForceInvertOverrideStateLocked(I)Z

    .line 1693
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertOverrideStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/accessibility/ForceInvertOverrideState;

    :cond_1a
    if-nez v0, :cond_1f

    .line 1696
    sget-object p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->EMPTY:Lcom/android/server/accessibility/ForceInvertOverrideState;

    return-object p0

    :cond_1f
    return-object v0
.end method

.method public getForceInvertStateInternal()I
    .registers 3

    .line 1620
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1624
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isForceInvert()Z

    move-result p0

    if-nez p0, :cond_d

    return v1

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public getForceInvertStateInternal(I)I
    .registers 4

    .line 1651
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isPowerSaveNightModeOverrideNeeded()Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 1655
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->isForceInvert(I)Z

    move-result p0

    if-nez p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public final getForceInvertStateLocked(I)I
    .registers 3

    .line 1582
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_f

    .line 1583
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->updateForceInvertStateLocked(I)Z

    .line 1585
    :cond_f
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getNightModeOverrides()[Ljava/lang/Boolean;
    .registers 2

    .line 573
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getService()Landroid/app/IUiModeManager;
    .registers 1

    .line 738
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object p0
.end method

.method public final initPowerSave()V
    .registers 4

    .line 720
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x10

    .line 721
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 723
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final isCarModeEnabled()Z
    .registers 1

    .line 2022
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isForceInvert()Z
    .registers 4

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 1664
    const-string v1, "accessibility_force_invert_color_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    return v0

    :cond_15
    return v2
.end method

.method public final isForceInvert(I)Z
    .registers 4

    .line 1672
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1671
    const-string v0, "accessibility_force_invert_color_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_13

    return p1

    :cond_13
    return v1
.end method

.method public final isPowerSaveNightModeOverrideNeeded()Z
    .registers 2

    .line 2149
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$initPowerSave$5(Landroid/os/PowerSaveState;)V
    .registers 4

    .line 724
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v1, p1, :cond_d

    .line 726
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_19

    .line 728
    :cond_d
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 729
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    .line 730
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 732
    :cond_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_b

    throw p0
.end method

.method public final synthetic lambda$onStart$4(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 5

    .line 676
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_12

    .line 678
    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_1e

    .line 679
    :cond_12
    :goto_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 680
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    .line 681
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_10

    throw p0
.end method

.method public final notifyCarModeDisabled(ILjava/lang/String;)V
    .registers 5

    .line 2010
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2011
    const-string v1, "android.app.extra.CALLING_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2012
    const-string p2, "android.app.extra.PRIORITY"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2013
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyCarModeEnabled(ILjava/lang/String;)V
    .registers 5

    .line 2002
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2003
    const-string v1, "android.app.extra.CALLING_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    const-string p2, "android.app.extra.PRIORITY"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 8

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_10a

    .line 592
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 593
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 594
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 595
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 596
    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 597
    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const/16 v4, 0x1a

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 598
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 599
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 600
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 601
    const-class v2, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightManager;

    if-eqz v2, :cond_5f

    .line 602
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    goto :goto_5f

    :catchall_5c
    move-exception p0

    goto/16 :goto_108

    .line 603
    :cond_5f
    :goto_5f
    const-class v2, Landroid/os/PowerManagerInternal;

    .line 604
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 605
    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 606
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->initPowerSave()V

    .line 607
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_7d

    goto :goto_7e

    :cond_7d
    move v1, v4

    :goto_7e
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 608
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    .line 610
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ui_night_mode"

    .line 611
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 614
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_force_invert_color_enabled"

    .line 616
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStateObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    .line 615
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 618
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_force_invert_color_override_packages_to_disable"

    .line 619
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mForceInvertOverrideObserver:Landroid/database/ContentObserver;

    .line 618
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 622
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_force_invert_color_override_packages_to_enable"

    .line 623
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mForceInvertOverrideObserver:Landroid/database/ContentObserver;

    .line 622
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 627
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contrast_level"

    .line 628
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContrastObserver:Landroid/database/ContentObserver;

    .line 627
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 630
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 632
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 634
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.SETTING_RESTORED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 636
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 638
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 639
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 640
    monitor-exit p1

    return-void

    :goto_108
    monitor-exit p1
    :try_end_109
    .catchall {:try_start_7 .. :try_end_109} :catchall_5c

    throw p0

    :cond_10a
    return-void
.end method

.method public final onCustomTimeUpdated(I)V
    .registers 3

    .line 1839
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    .line 1840
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {p1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    return-void

    .line 1842
    :cond_d
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1843
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    .line 1844
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1845
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    const/4 v0, 0x0

    .line 1846
    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_26

    :catchall_21
    move-exception p0

    goto :goto_28

    .line 1848
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    .line 1850
    :goto_26
    monitor-exit p1

    return-void

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_21

    throw p0
.end method

.method public final onProjectionStateChangedLocked(I)V
    .registers 11

    .line 1810
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    goto :goto_4b

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 1813
    :goto_7
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 1814
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    and-int v3, p1, v2

    if-eqz v3, :cond_48

    .line 1818
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 1819
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 1820
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    invoke-virtual {p0, v2, v4}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result v2

    .line 1824
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    move v6, v0

    :goto_2f
    if-ge v6, v5, :cond_45

    .line 1827
    :try_start_31
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IOnProjectionStateChangedListener;

    invoke-interface {v7, v2, v4}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b

    goto :goto_42

    .line 1830
    :catch_3b
    sget-object v7, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Failed a call to onProjectionStateChanged()."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1833
    :cond_45
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onStart()V
    .registers 7

    .line 646
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 649
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 651
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 652
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    const v3, 0x10e0078

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/UiModeManagerService$IntProperty;->set(I)V

    const v2, 0x111027b

    .line 654
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    const v2, 0x111016b

    .line 656
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDreamsDisabledByAmbientModeSuppression:Z

    const v2, 0x10e0084

    .line 658
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    const v2, 0x10e0054

    .line 660
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3f

    move v2, v4

    goto :goto_40

    :cond_3f
    move v2, v3

    :goto_40
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    const v2, 0x10e008b

    .line 662
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v4, :cond_4d

    move v2, v4

    goto :goto_4e

    :cond_4d
    move v2, v3

    :goto_4e
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    const v2, 0x1110182

    .line 664
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    const v2, 0x1110205

    .line 666
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    const v2, 0x1110202

    .line 667
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 668
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 669
    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7f

    const-string v5, "android.software.leanback"

    .line 670
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    :cond_7f
    move v3, v4

    :cond_80
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 671
    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 672
    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 675
    new-instance v2, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 684
    const-string/jumbo v0, "uimode"

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 685
    const-class v0, Lcom/android/server/UiModeManagerInternal;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 578
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 579
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v0}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistComputedNightMode(I)V

    .line 580
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 582
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 583
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 584
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    .line 583
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    const/4 p2, 0x0

    .line 585
    invoke-virtual {p0, p2, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 586
    monitor-exit p1

    return-void

    :catchall_41
    move-exception p0

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final persistComputedNightMode(I)V
    .registers 4

    .line 698
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ui_night_mode_last_computed"

    .line 699
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 698
    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final persistNightMode(I)V
    .registers 8

    .line 2051
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_9

    goto :goto_58

    .line 2052
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    .line 2053
    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    .line 2052
    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2054
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    int-to-long v1, v1

    const-string/jumbo v3, "ui_night_mode_custom_type"

    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 2056
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 2058
    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 2056
    const-string v5, "dark_theme_custom_start_time"

    invoke-static {v0, v5, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 2059
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 2061
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    div-long/2addr v1, v3

    .line 2059
    const-string p0, "dark_theme_custom_end_time"

    invoke-static {v0, p0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    :cond_58
    :goto_58
    return-void
.end method

.method public final persistNightModeOverrides(I)V
    .registers 5

    .line 2066
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_9

    goto :goto_29

    .line 2067
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ui_night_mode_override_on"

    .line 2068
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 2067
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2069
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ui_night_mode_override_off"

    .line 2070
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 2069
    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_29
    :goto_29
    return-void
.end method

.method public final populateWithRelevantActivePackageNames(ILjava/util/List;)I
    .registers 8

    .line 1520
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1522
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    move v0, v1

    .line 1523
    :goto_9
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1524
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1525
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    and-int v4, p1, v2

    if-eqz v4, :cond_2e

    .line 1527
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->toPackageNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2e

    or-int/2addr v0, v2

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_31
    return v0

    :cond_32
    return v1
.end method

.method public final registerDeviceInactiveListenerLocked()V
    .registers 3

    .line 820
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 821
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 822
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 824
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mDeviceInactiveListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerTimeChangeEvent()V
    .registers 3

    .line 842
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 844
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerVrStateListener()V
    .registers 4

    .line 2492
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2496
    :try_start_d
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, p0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 2499
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register VR mode state listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public final releaseProjectionUnchecked(ILjava/lang/String;)Z
    .registers 10

    .line 1538
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1540
    :try_start_3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    .line 1541
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_58

    .line 1544
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_16
    if-ltz v3, :cond_58

    .line 1545
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1546
    invoke-static {v5}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 1547
    invoke-static {v5}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$munlinkToDeath(Lcom/android/server/UiModeManagerService$ProjectionHolder;)V

    .line 1548
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Projection type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " released by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v4

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_7e

    :cond_55
    :goto_55
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_58
    if-eqz v2, :cond_5e

    .line 1557
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    goto :goto_7c

    .line 1559
    :cond_5e
    sget-object p0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " tried to release projection type "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but was not set by that package."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :goto_7c
    monitor-exit v0

    return v2

    .line 1563
    :goto_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_53

    throw p0
.end method

.method public final resetNightModeOverrideLocked()Z
    .registers 3

    .line 2481
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    return v1

    .line 2482
    :cond_b
    :goto_b
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 2483
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 2484
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    .line 2485
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    const/4 p0, 0x1

    return p0
.end method

.method public final scheduleNextCustomTimeListener()V
    .registers 9

    .line 2189
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    .line 2190
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 2191
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2193
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1a

    .line 2194
    :cond_14
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 2195
    :goto_1a
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 2196
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v7, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    .line 2353
    const-string v2, "Could not start dock app: "

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 2354
    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    const/4 v4, 0x1

    if-eqz p1, :cond_7d

    .line 2366
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 2367
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/android/server/UiModeManagerService;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2369
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    .line 2370
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    .line 2371
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    iget-object v15, v1, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    const/16 v16, 0x0

    const/16 v17, -0x2

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2369
    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 2373
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v5

    if-eqz v5, :cond_47

    move v0, v4

    goto :goto_7e

    :cond_47
    const/16 v5, -0x5b

    if-eq v0, v5, :cond_7d

    .line 2376
    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", startActivityWithConfig result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_67} :catch_68

    goto :goto_7d

    :catch_68
    move-exception v0

    .line 2380
    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7d
    :goto_7d
    move v0, v3

    .line 2386
    :goto_7e
    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 2388
    iget-boolean v2, v1, Lcom/android/server/UiModeManagerService;->mDreamsDisabledByAmbientModeSuppression:Z

    if-eqz v2, :cond_8e

    iget-object v2, v1, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2389
    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->isAmbientDisplaySuppressed()Z

    move-result v2

    if-eqz v2, :cond_8e

    move v3, v4

    :cond_8e
    if-eqz p1, :cond_b1

    if-nez v0, :cond_b1

    if-nez v3, :cond_b1

    .line 2392
    iget-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    if-nez v0, :cond_a8

    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 2394
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2395
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 2396
    :cond_a8
    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/UiModeManagerService$Injector;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    :cond_b1
    return-void
.end method

.method public final sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .registers 3

    .line 2304
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 2305
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2304
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setCarModeLocked(ZIILjava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_6

    .line 1915
    invoke-virtual {p0, p3, p4}, Lcom/android/server/UiModeManagerService;->enableCarMode(ILjava/lang/String;)V

    goto :goto_9

    .line 1917
    :cond_6
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/UiModeManagerService;->disableCarMode(IILjava/lang/String;)V

    .line 1919
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isCarModeEnabled()Z

    move-result p1

    .line 1921
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq p3, p1, :cond_24

    .line 1922
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez p1, :cond_24

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1927
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 1928
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p4

    .line 1926
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 1931
    :cond_24
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2

    .line 568
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    return-void
.end method

.method public setDreamsDisabledByAmbientModeSuppression(Z)V
    .registers 2

    .line 563
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDreamsDisabledByAmbientModeSuppression:Z

    return-void
.end method

.method public setStartDreamImmediatelyOnDock(Z)V
    .registers 2

    .line 558
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    return-void
.end method

.method public final setupWizardCompleteForCurrentUser()Z
    .registers 4

    .line 761
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 762
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 761
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    return v0

    :cond_18
    return v2
.end method

.method public final shouldApplyAutomaticChangesImmediately()Z
    .registers 3

    .line 2183
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    if-eq v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 2185
    invoke-virtual {p0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public final shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 2344
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 2348
    :cond_a
    invoke-static {p1, p2}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public final unregisterDeviceInactiveListenerLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 833
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 835
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mDeviceInactiveListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method public final unregisterTimeChangeEvent()V
    .registers 2

    .line 850
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 5

    .line 2311
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2314
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz p1, :cond_29

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_29

    .line 2316
    const-string p1, "android.intent.category.CAR_DOCK"

    goto :goto_2a

    .line 2318
    :cond_13
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_29

    .line 2324
    const-string p1, "android.intent.category.DESK_DOCK"

    goto :goto_2a

    :cond_22
    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_29

    .line 2329
    const-string p1, "android.intent.category.HOME"

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    .line 2340
    :goto_2a
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final updateComputedNightModeLocked(Z)V
    .registers 5

    .line 2456
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 2458
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_12

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_f

    move v1, v2

    .line 2459
    :cond_f
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return-void

    .line 2462
    :cond_12
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {p1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4f

    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {p1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p1

    if-ne p1, v2, :cond_24

    goto :goto_4f

    .line 2465
    :cond_24
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-nez p1, :cond_2f

    .line 2466
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return-void

    .line 2469
    :cond_2f
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    if-eqz p1, :cond_3a

    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz p1, :cond_3a

    .line 2470
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return-void

    .line 2474
    :cond_3a
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {p1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz p1, :cond_4f

    .line 2475
    invoke-interface {p1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 2476
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    :cond_4f
    :goto_4f
    return-void
.end method

.method public final updateConfigurationLocked()V
    .registers 7

    .line 2074
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 2075
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v1, :cond_9

    goto :goto_2a

    .line 2077
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_f

    const/4 v0, 0x4

    goto :goto_2a

    .line 2079
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_15

    const/4 v0, 0x6

    goto :goto_2a

    .line 2081
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_1b

    move v0, v2

    goto :goto_2a

    .line 2083
    :cond_1b
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_25

    move v0, v3

    goto :goto_2a

    .line 2085
    :cond_25
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_2a

    const/4 v0, 0x7

    .line 2089
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3b

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    if-ne v1, v4, :cond_49

    .line 2090
    :cond_3b
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    if-ne v1, v3, :cond_45

    move v1, v4

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 2093
    :cond_49
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    if-nez v1, :cond_71

    .line 2094
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 2095
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v3, :cond_6d

    .line 2096
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v1, v5}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 2097
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    if-nez v1, :cond_69

    .line 2098
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_6d

    :cond_69
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    .line 2100
    :cond_6d
    :goto_6d
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    goto :goto_7a

    .line 2102
    :cond_71
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_7a

    .line 2103
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v3}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 2107
    :cond_7a
    :goto_7a
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    if-ne v1, v2, :cond_9a

    .line 2108
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    if-ne v1, v4, :cond_8c

    .line 2109
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    goto :goto_9d

    .line 2111
    :cond_8c
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerTimeChangeEvent()V

    .line 2112
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    .line 2113
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    goto :goto_9d

    .line 2117
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterTimeChangeEvent()V

    .line 2120
    :goto_9d
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateForceInvertStates()V

    .line 2123
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isPowerSaveNightModeOverrideNeeded()Z

    move-result v1

    if-eqz v1, :cond_ab

    and-int/lit8 v0, v0, -0x11

    or-int/lit8 v0, v0, 0x20

    goto :goto_af

    .line 2127
    :cond_ab
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->getComputedUiModeConfiguration(I)I

    move-result v0

    .line 2139
    :goto_af
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v1, v0}, Lcom/android/server/UiModeManagerService$IntProperty;->set(I)V

    .line 2140
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_c4

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    if-eqz v1, :cond_c0

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_c4

    .line 2141
    :cond_c0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_c4
    return-void
.end method

.method public final updateContrastLocked(I)Z
    .registers 7

    .line 1735
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    const-string v3, "contrast_level"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1737
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_3e

    .line 1738
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public final updateCustomTimeLocked()V
    .registers 3

    .line 766
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {v0}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    return-void

    .line 767
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 768
    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_18

    .line 770
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    .line 772
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    return-void
.end method

.method public final updateDockState(I)V
    .registers 6

    .line 2026
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2027
    :try_start_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_20

    .line 2028
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_10

    move p1, v2

    goto :goto_11

    :cond_10
    move p1, v3

    .line 2029
    :goto_11
    const-string v1, ""

    invoke-virtual {p0, p1, v3, v3, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 2031
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_20

    .line 2032
    invoke-virtual {p0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 2035
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1e

    throw p0
.end method

.method public final updateForceInvertOverrideStateLocked(I)Z
    .registers 4

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/accessibility/ForceInvertOverrideState;->loadFrom(Landroid/content/Context;I)Lcom/android/server/accessibility/ForceInvertOverrideState;

    move-result-object v0

    .line 1680
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mForceInvertOverrideStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ForceInvertOverrideState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1681
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertOverrideStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final updateForceInvertOverrideStates()V
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 497
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 498
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 499
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->updateForceInvertOverrideStateLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 500
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v3}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_34

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 506
    :cond_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_2d

    throw p0
.end method

.method public final updateForceInvertStateLocked(I)Z
    .registers 5

    .line 1605
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->getForceInvertStateInternal(I)I

    move-result v0

    .line 1606
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v0, :cond_15

    .line 1607
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final updateForceInvertStates()V
    .registers 6

    .line 468
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 470
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 471
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 472
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->updateForceInvertStateLocked(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 473
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->getForceInvertStateLocked(I)I

    move-result v2

    .line 474
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    new-instance v4, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v4}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_38

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 479
    :cond_36
    monitor-exit v0

    return-void

    .line 488
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_31

    throw p0
.end method

.method public updateLocked(II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2209
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_12

    .line 2210
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 2211
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_1c

    .line 2212
    :cond_12
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2213
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    move-object v3, v4

    .line 2216
    :goto_1c
    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_32

    .line 2217
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v6, v5, :cond_4e

    .line 2218
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    if-eqz v3, :cond_2d

    .line 2220
    invoke-virtual {v0, v3}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 2222
    :cond_2d
    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 2223
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_52

    .line 2225
    :cond_32
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 2226
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v6

    if-nez v6, :cond_4e

    if-eqz v3, :cond_47

    .line 2228
    invoke-virtual {v0, v3}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 2230
    :cond_47
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v3, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 2231
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_52

    :cond_4e
    move-object v3, v4

    goto :goto_52

    .line 2234
    :cond_50
    iput v7, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    :goto_52
    const/4 v6, 0x1

    if-eqz v3, :cond_80

    .line 2251
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2252
    const-string v3, "enableFlags"

    invoke-virtual {v9, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2253
    const-string v1, "disableFlags"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2254
    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2255
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v12, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2261
    iput-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 2262
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    goto :goto_a5

    .line 2265
    :cond_80
    iget-boolean v3, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_8e

    .line 2266
    iget-boolean v2, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v2, :cond_a2

    and-int/2addr v1, v6

    if-eqz v1, :cond_a2

    .line 2268
    const-string v4, "android.intent.category.CAR_DOCK"

    goto :goto_a2

    .line 2270
    :cond_8e
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    and-int/2addr v1, v6

    if-eqz v1, :cond_a2

    .line 2273
    const-string v4, "android.intent.category.DESK_DOCK"

    goto :goto_a2

    :cond_9c
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_a2

    .line 2277
    const-string v4, "android.intent.category.HOME"

    .line 2286
    :cond_a2
    :goto_a2
    invoke-virtual {v0, v4}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 2290
    :goto_a5
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_c3

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_b6

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v1, :cond_b6

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_c2

    :cond_b6
    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:Lcom/android/server/UiModeManagerService$IntProperty;

    .line 2293
    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    if-ne v1, v5, :cond_c3

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v1, :cond_c3

    :cond_c2
    move v7, v6

    .line 2294
    :cond_c3
    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v7, v1, :cond_d8

    if-eqz v7, :cond_d3

    .line 2296
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void

    .line 2298
    :cond_d3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d8
    return-void
.end method

.method public final updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 11

    .line 783
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_a3

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_a

    goto/16 :goto_a3

    .line 786
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    if-eqz v0, :cond_a3

    .line 787
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v2, 0x10e0078

    .line 788
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 787
    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v1, v2, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/android/server/UiModeManagerService$IntProperty;->set(I)V

    .line 790
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "ui_night_mode_custom_type"

    const/4 v1, -0x1

    invoke-static {p2, v0, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 792
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "ui_night_mode_override_on"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_44

    move p2, v0

    goto :goto_45

    :cond_44
    move p2, v1

    :goto_45
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 794
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "ui_night_mode_override_off"

    invoke-static {p2, v2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_56

    move p2, v0

    goto :goto_57

    :cond_56
    move p2, v1

    :goto_57
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 797
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    .line 799
    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 797
    const-string v6, "dark_theme_custom_start_time"

    invoke-static {p2, v6, v2, v3, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 796
    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 801
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 803
    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    div-long/2addr v2, v4

    .line 801
    const-string v6, "dark_theme_custom_end_time"

    invoke-static {p2, v6, v2, v3, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 800
    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 804
    iget-object p2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    invoke-interface {p2}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p2

    if-nez p2, :cond_a3

    .line 805
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "ui_night_mode_last_computed"

    invoke-static {p1, p2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_a1

    move v1, v0

    :cond_a1
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    :cond_a3
    :goto_a3
    return-void
.end method

.method public final updateSystemProperties()V
    .registers 4

    .line 548
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$IntProperty;

    .line 549
    invoke-interface {p0}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p0

    const/4 v1, 0x0

    .line 548
    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1c

    :cond_1b
    const/4 p0, 0x2

    .line 553
    :cond_1c
    const-string/jumbo v0, "persist.sys.theme"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final verifySetupWizardCompleted()V
    .registers 5

    .line 748
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 749
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 750
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x0

    .line 751
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 752
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "user_setup_complete"

    .line 753
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 752
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :cond_22
    const/4 v0, 0x1

    .line 756
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return-void
.end method
