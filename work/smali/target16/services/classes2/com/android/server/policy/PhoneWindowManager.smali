.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# static fields
.field public static final POWER_MULTI_PRESS_TIMEOUT_MILLIS:I

.field public static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field public haveEnableGesture:Z

.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerService:Landroid/app/IActivityManager;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAlertSliderObserver:Lcom/android/server/policy/AlertSliderObserver;

.field public mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

.field public mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public volatile mBackKeyHandled:Z

.field public mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

.field public mBluetoothHidReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mBootAnimationDismissable:Z

.field public mBootMessageNeedsHiding:Z

.field public mBootMsgDialog:Landroid/app/ProgressDialog;

.field public mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field public mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

.field public mCameraLensCoverState:I

.field public mCarDockIntent:Landroid/content/Intent;

.field public final mConsumedKeysForDevice:Landroid/util/SparseArray;

.field public mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDefaultDisplay:Landroid/view/Display;

.field public mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public final mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

.field public mDeskDockIntent:Landroid/content/Intent;

.field public volatile mDeviceGoingToSleep:Z

.field public final mDeviceKeyHandlers:Ljava/util/List;

.field public volatile mDismissImeOnBackKeyPressed:Z

.field public mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field public final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDockObserverInternal:Lcom/android/server/DockObserverInternal;

.field public mDockReceiver:Landroid/content/BroadcastReceiver;

.field public mDoublePressOnPowerBehavior:I

.field public mDoublePressOnStemPrimaryBehavior:I

.field public mDoubleTapOnHomeBehavior:I

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mEnableCarDockHomeCapture:Z

.field public volatile mEndCallKeyHandled:Z

.field public final mEndCallLongPress:Ljava/lang/Runnable;

.field public mEndcallBehavior:I

.field public mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

.field public mGestureLauncherService:Lcom/android/server/GestureLauncherService;

.field public mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field public mGlobalActionsFactory:Ljava/util/function/Supplier;

.field public mGlobalActionsOnLockEnable:Z

.field public mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field public mHDMIObserver:Landroid/os/UEventObserver;

.field public mHandleVolumeKeysInWM:Z

.field public mHandler:Landroid/os/Handler;

.field public mHasAlertSlider:Z

.field public mHasFeatureAuto:Z

.field public mHasFeatureHdmiCec:Z

.field public mHasFeatureLeanback:Z

.field public mHasFeatureWatch:Z

.field public mHasSoftInput:Z

.field public mHaveBuiltInKeyboard:Z

.field public mHavePendingMediaKeyRepeatWithWakeLock:Z

.field public mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field public mHomeIntent:Landroid/content/Intent;

.field public mIncallBackBehavior:I

.field public mIncallPowerBehavior:I

.field public mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public volatile mIsGoingToSleep:Z

.field public mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field public final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field public mKeyguardDrawnOnce:Z

.field public mKeyguardDrawnTimeout:I

.field public mKeyguardOccludedChanged:Z

.field public mKidsModeEnabled:Z

.field public mLastShortPressTurnOffTvHintToastTime:J

.field public mLidKeyboardAccessibility:I

.field public mLidNavigationAccessibility:I

.field public final mLock:Ljava/lang/Object;

.field public mLockAfterDreamingTransitionFinished:Z

.field public mLockNowPending:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenTimeout:I

.field public mLockScreenTimerActive:Z

.field public final mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field public mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mLongPressOnBackBehavior:I

.field public mLongPressOnHomeBehavior:I

.field public mLongPressOnPowerAssistantTimeoutMs:J

.field public mLongPressOnPowerBehavior:I

.field public mLongPressOnStemPrimaryBehavior:I

.field public mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

.field public mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPendingKeyguardOccluded:Z

.field public volatile mPendingSleepingGroup:I

.field public volatile mPendingWakeKey:I

.field public volatile mPendingWakeupGroup:I

.field public final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field public volatile mPictureInPictureVisible:Z

.field public volatile mPowerButtonLaunchGestureTriggered:Z

.field public volatile mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

.field public mPowerButtonSuppressionDelayMillis:I

.field public mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

.field public volatile mPowerKeyHandled:Z

.field public mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPreloadedRecentApps:Z

.field public mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

.field public volatile mRecentsVisible:Z

.field public volatile mRequestedOrSleepingDefaultDisplay:Z

.field public mRingerToggleChord:I

.field public mSafeMode:Z

.field public final mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field public final mScreenOnListeners:Landroid/util/SparseArray;

.field public mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public mSearchKeyTargetActivity:Landroid/content/ComponentName;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field public mShortPressOnPowerBehavior:I

.field public mShortPressOnSleepBehavior:I

.field public mShortPressOnStemPrimaryBehavior:I

.field public mShortPressOnWindowBehavior:I

.field public mShouldEarlyShortPressOnPower:Z

.field public mShouldEarlyShortPressOnStemPrimary:Z

.field public mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

.field public mSilenceRingerOnSleepKey:Z

.field public mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mStylusButtonsEnabled:Z

.field public mSupportLongPressPowerWhenNonInteractive:Z

.field public mSupportShortPressPowerWhenDefaultDisplayOn:Z

.field public mSwipeToScreenshot:Lcom/android/server/policy/SwipeToScreenshotListener;

.field public mSystemBooted:Z

.field public mSystemNavigationKeysEnabled:Z

.field public mSystemReady:Z

.field public mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

.field public volatile mTopFocusedDisplayId:I

.field public mTorchGesture:Z

.field public mTriplePressOnPowerBehavior:I

.field public mTriplePressOnStemPrimaryBehavior:I

.field public mTurnOffTvToastPostDelay:J

.field public mTurnOffTvToastSuppressionDelay:J

.field public mUiMode:I

.field public mUiModeManager:Landroid/app/IUiModeManager;

.field public mUseTvRouting:Z

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVeryLongPressOnPowerBehavior:I

.field public mVibrator:Landroid/os/Vibrator;

.field public final mVisibleBackgroundUsersEnabled:Z

.field public mVolBtnLongPress:Z

.field public mVolBtnMusicControls:Z

.field public mVrHeadsetHomeIntent:Landroid/content/Intent;

.field public mWakeGestureEnabledSetting:Z

.field public mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field public mWakeOnAssistKeyPress:Z

.field public mWakeOnBackKeyPress:Z

.field public mWakeOnDpadKeyPress:Z

.field public mWakeUpToLastStateTimeout:J

.field public mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

.field public mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public static synthetic $r8$lambda$HsdZ1AfL-mrHwMvboPYQ-e8DrWU(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$QC2bbpvSHd9xWq-lQP6GZkyB6v8(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMjVbjj5xgMjAjFq0TvkIUP0fuw(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lambda$handleKeyGestureEvent$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZmKE6tBK0SC-QLtJN3cItulwJ90(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$init$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$cjpFuuMQpoXRPvhwWotLtmxoXSs(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$o3tqljpPr8ANCi3pqDyB-_0hqGg(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$attemptToDreamOrAwakeFromShortPowerButtonPress$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$rEOu-0YG_T9f8-gvRgr7SfVPeVY(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$updateSettings$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$w3FRRQgkZPyet8U32RCD7Pnu4ME(I)Z
    .registers 2

    .line 3670
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldEarlyShortPressOnPower(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSingleKeyGestureDetector(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/SingleKeyGestureDetector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportLongPressPowerWhenNonInteractive(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTriplePressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowWakeUpPolicy(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/WindowWakeUpPolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLockNowPending(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbackKeyPress(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbackLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishWindowsDrawn(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDreamManagerInternal(Lcom/android/server/policy/PhoneWindowManager;)Landroid/service/dreams/DreamManagerInternal;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMaxMultiPressPowerCount(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetMaxMultiPressStemPrimaryCount(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressStemPrimaryCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetResolvedLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleHideBootMessage(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRingerChordGesture(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleShortPressOnHome(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSingleKeyGestureInKeyGestureController(Lcom/android/server/policy/PhoneWindowManager;ILcom/android/server/policy/SingleKeyGestureEvent;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleSingleKeyGestureInKeyGestureController(ILcom/android/server/policy/SingleKeyGestureEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSwitchKeyboardLayout(Lcom/android/server/policy/PhoneWindowManager;IILandroid/os/IBinder;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleSwitchKeyboardLayout(IILandroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManager;ZZ)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleTransitionForKeyguardLw(ZZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasLongPressOnBackBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnStemPrimaryBehavior()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasVeryLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlaunchAllAppsAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlaunchAssistAction(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;IIJI)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IIJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlaunchAssistAction(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;IJI)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mperformHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpowerLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpowerVeryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSystemKeyToStatusBar(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldEnableWakeGestureLp(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowRecentApps(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryLongPress(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryPress(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtoggleNotificationPanel(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtoggleRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetWINDOW_TYPES_WHERE_HOME_DOESNT_WORK()[I
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 450
    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->POWER_MULTI_PRESS_TIMEOUT_MILLIS:I

    const/16 v0, 0x7d3

    const/16 v1, 0x7da

    .line 3482
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 460
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    .line 487
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 520
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 581
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    const/4 v1, -0x1

    .line 587
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 589
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 615
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    const/4 v2, 0x0

    .line 617
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    const-wide/16 v3, 0x0

    .line 628
    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShortPressTurnOffTvHintToastTime:J

    .line 659
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 704
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 714
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 720
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 727
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsOnLockEnable:Z

    .line 729
    new-instance v0, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v3, 0x64

    invoke-direct {v0, v3, v2}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 731
    new-instance v0, Lcom/android/server/policy/DeferredKeyActionExecutor;

    invoke-direct {v0}, Lcom/android/server/policy/DeferredKeyActionExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 734
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    const/16 v0, 0x320

    .line 736
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 742
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    const/16 v0, 0x3e8

    .line 745
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    .line 749
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    .line 771
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasAlertSlider:Z

    .line 870
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 1003
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1883
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 2265
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 5493
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 5512
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5527
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBluetoothHidReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 6285
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6390
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method public static awakenDreams()V
    .registers 1

    .line 3446
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3449
    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public static doublePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 7057
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7055
    :cond_d
    const-string p0, "DOUBLE_PRESS_PRIMARY_LAUNCH_DEFAULT_FITNESS_APP"

    return-object p0

    .line 7053
    :cond_10
    const-string p0, "DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP"

    return-object p0

    .line 7051
    :cond_13
    const-string p0, "DOUBLE_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 6945
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6943
    :cond_d
    const-string p0, "DOUBLE_TAP_HOME_PIP_MENU"

    return-object p0

    .line 6941
    :cond_10
    const-string p0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object p0

    .line 6939
    :cond_13
    const-string p0, "DOUBLE_TAP_HOME_NOTHING"

    return-object p0
.end method

.method public static endcallBehaviorToString(I)Ljava/lang/String;
    .registers 3

    .line 6877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 6879
    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_18

    .line 6882
    const-string/jumbo p0, "sleep|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6885
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_21

    .line 6887
    const-string p0, "<nothing>"

    return-object p0

    :cond_21
    const/4 v1, 0x0

    add-int/lit8 p0, p0, -0x1

    .line 6890
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .line 3470
    const-string v0, "audio"

    .line 3471
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3470
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_13

    .line 3473
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-object v0
.end method

.method public static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    .line 3457
    const-string v0, "dreams"

    .line 3458
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3457
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method public static incallBackBehaviorToString(I)Ljava/lang/String;
    .registers 1

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_7

    .line 6904
    const-string p0, "hangup"

    return-object p0

    .line 6906
    :cond_7
    const-string p0, "<nothing>"

    return-object p0
.end method

.method public static incallPowerBehaviorToString(I)Ljava/lang/String;
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_7

    .line 6896
    const-string p0, "hangup"

    return-object p0

    .line 6898
    :cond_7
    const-string/jumbo p0, "sleep"

    return-object p0
.end method

.method public static isLongPressToAssistantEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 7097
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    .line 7098
    const-string v1, "clockwork_long_press_to_assistant_enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x3

    .line 7102
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longPressToAssistant = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-ne p0, v2, :cond_2c

    return v2

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidGlobalKey(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_e

    const/16 v0, 0xdf

    if-eq p0, v0, :cond_e

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isVolumeKey(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x19

    if-eq p0, v0, :cond_b

    const/16 v0, 0x18

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static lidBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 7092
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7086
    :cond_d
    const-string p0, "LID_BEHAVIOR_LOCK"

    return-object p0

    .line 7088
    :cond_10
    const-string p0, "LID_BEHAVIOR_SLEEP"

    return-object p0

    .line 7090
    :cond_13
    const-string p0, "LID_BEHAVIOR_NONE"

    return-object p0
.end method

.method public static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6917
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6915
    :cond_a
    const-string p0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object p0

    .line 6913
    :cond_d
    const-string p0, "LONG_PRESS_BACK_NOTHING"

    return-object p0
.end method

.method public static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 6932
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6930
    :cond_10
    const-string p0, "LONG_PRESS_HOME_NOTIFICATION_PANEL"

    return-object p0

    .line 6928
    :cond_13
    const-string p0, "LONG_PRESS_HOME_ASSIST"

    return-object p0

    .line 6926
    :cond_16
    const-string p0, "LONG_PRESS_HOME_ALL_APPS"

    return-object p0

    .line 6924
    :cond_19
    const-string p0, "LONG_PRESS_HOME_NOTHING"

    return-object p0
.end method

.method public static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    .line 6985
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6983
    :pswitch_8
    const-string p0, "LONG_PRESS_POWER_GO_TO_SLEEP"

    return-object p0

    .line 6981
    :pswitch_b
    const-string p0, "LONG_PRESS_POWER_ASSISTANT"

    return-object p0

    .line 6979
    :pswitch_e
    const-string p0, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    return-object p0

    .line 6977
    :pswitch_11
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object p0

    .line 6975
    :pswitch_14
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object p0

    .line 6973
    :pswitch_17
    const-string p0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    .line 6971
    :pswitch_1a
    const-string p0, "LONG_PRESS_POWER_NOTHING"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static longPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7079
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7077
    :cond_a
    const-string p0, "LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT"

    return-object p0

    .line 7075
    :cond_d
    const-string p0, "LONG_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    .line 7009
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7007
    :cond_d
    const-string p0, "MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY"

    return-object p0

    .line 7005
    :cond_10
    const-string p0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object p0

    .line 7003
    :cond_13
    const-string p0, "MULTI_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method public static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 6964
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6962
    :cond_16
    const-string p0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object p0

    .line 6960
    :cond_19
    const-string p0, "SHORT_PRESS_POWER_GO_HOME"

    return-object p0

    .line 6958
    :cond_1c
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    .line 6956
    :cond_1f
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object p0

    .line 6954
    :cond_22
    const-string p0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object p0

    .line 6952
    :cond_25
    const-string p0, "SHORT_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method public static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7020
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7018
    :cond_a
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    .line 7016
    :cond_d
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object p0
.end method

.method public static shortPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 7044
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7042
    :cond_d
    const-string p0, "SHORT_PRESS_PRIMARY_LAUNCH_TARGET_ACTIVITY"

    return-object p0

    .line 7040
    :cond_10
    const-string p0, "SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS"

    return-object p0

    .line 7038
    :cond_13
    const-string p0, "SHORT_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7031
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7029
    :cond_a
    const-string p0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object p0

    .line 7027
    :cond_d
    const-string p0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object p0
.end method

.method public static triplePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7068
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7066
    :cond_a
    const-string p0, "TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY"

    return-object p0

    .line 7064
    :cond_d
    const-string p0, "TRIPLE_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6996
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6994
    :cond_a
    const-string p0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    .line 6992
    :cond_d
    const-string p0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object p0
.end method


# virtual methods
.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3402
    :goto_8
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 3404
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 3405
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 3407
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1f

    if-ne p2, v1, :cond_27

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 3409
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 3410
    :cond_1f
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3411
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez p2, :cond_27

    .line 3412
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3416
    :cond_27
    iget p2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq p2, v1, :cond_37

    if-ne p3, v1, :cond_36

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 3418
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    return-void

    .line 3419
    :cond_37
    :goto_37
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    return-void
.end method

.method public applyKeyguardOcclusionChange()I
    .registers 2

    .line 4148
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x5

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final applyLidSwitchState()V
    .registers 5

    .line 6456
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-nez v0, :cond_23

    .line 6458
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_23

    .line 6461
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    goto :goto_23

    .line 6464
    :cond_19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getUptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 6475
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6476
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6477
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V
    .registers 6

    .line 1341
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_11

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x9

    if-eq v0, v1, :cond_11

    .line 1346
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1350
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 1352
    const-string p0, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t access dream manager dreaming when attempting to start or stop dream from short power press (isScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", awakeWhenDream="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1360
    :cond_3e
    invoke-virtual {v0, p1}, Landroid/service/dreams/DreamManagerInternal;->canStartDreaming(Z)Z

    move-result p1

    if-nez p1, :cond_58

    if-eqz p2, :cond_54

    .line 1361
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x0

    .line 1362
    const-string/jumbo p1, "short press power"

    invoke-virtual {v0, p0, p1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    return-void

    .line 1371
    :cond_54
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1375
    :cond_58
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1378
    :try_start_5b
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 1379
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    .line 1380
    monitor-exit p1
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_81

    .line 1382
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->requestDream()V

    .line 1383
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz p1, :cond_80

    .line 1384
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_80

    .line 1385
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1399
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTurnOffTvToastPostDelay:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_80
    return-void

    :catchall_81
    move-exception p0

    .line 1380
    :try_start_82
    monitor-exit p1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public final backKeyPress()Z
    .registers 5

    .line 1062
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v1, "key_back_press"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1064
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1066
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v1, :cond_2f

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 1070
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1073
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const/4 p0, 0x0

    return p0

    .line 1077
    :cond_1f
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2f

    .line 1079
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1082
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result p0

    return p0

    .line 1087
    :cond_2f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_3e

    .line 1088
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3e
    return v0
.end method

.method public final backLongPress()V
    .registers 3

    const/4 v0, 0x1

    .line 1608
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1610
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eq v1, v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 1614
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    return-void
.end method

.method public final bindKeyguard()V
    .registers 3

    .line 6193
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6194
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_b

    .line 6195
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_17

    :cond_b
    const/4 v1, 0x1

    .line 6197
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 6198
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_9

    .line 6199
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    return-void

    .line 6198
    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_9

    throw p0
.end method

.method public canDismissBootAnimation()Z
    .registers 2

    .line 6282
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelBugreportGestureTv()V
    .registers 2

    .line 3990
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelGlobalActionsAction()V
    .registers 2

    .line 1915
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPendingRingerToggleChordAction()V
    .registers 2

    .line 1880
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPreloadRecentApps()V
    .registers 2

    .line 4313
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 4314
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4315
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 4317
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    :cond_10
    return-void
.end method

.method public final changeDisplayBrightnessValue(II)V
    .registers 8

    const/4 v0, 0x0

    if-gez p1, :cond_4

    move p1, v0

    .line 3862
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v0

    .line 3864
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v1

    .line 3866
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v3

    .line 3868
    invoke-static {v3}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    int-to-float p2, p2

    mul-float/2addr p2, v4

    add-float/2addr v3, p2

    const/4 p2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 3870
    invoke-static {v3, p2, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    .line 3871
    invoke-static {p2}, Lcom/android/internal/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result p2

    .line 3873
    invoke-static {p2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    .line 3875
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 3877
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x50000

    .line 3878
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3880
    const-string p2, "android.intent.extra.FROM_BRIGHTNESS_KEY"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3881
    sget-object p2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public checkAddPermission(IZLjava/lang/String;[II)I
    .registers 20

    move/from16 v1, p5

    .line 3257
    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v3, -0x8

    if-eqz p2, :cond_10

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_10

    return v3

    :cond_10
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 3262
    aput v4, p4, v5

    const/16 v4, 0xbb7

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    const/16 v8, 0x7d0

    if-lt p1, v7, :cond_21

    const/16 v9, 0x63

    if-le p1, v9, :cond_2d

    :cond_21
    if-lt p1, v6, :cond_27

    const/16 v9, 0x7cf

    if-le p1, v9, :cond_2d

    :cond_27
    if-lt p1, v8, :cond_fe

    if-le p1, v4, :cond_2d

    goto/16 :goto_fe

    :cond_2d
    if-lt p1, v8, :cond_fd

    if-le p1, v4, :cond_33

    goto/16 :goto_fd

    .line 3275
    :cond_33
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v4

    if-nez v4, :cond_7a

    if-eq p1, v8, :cond_79

    const/16 v1, 0x7d5

    if-eq p1, v1, :cond_75

    const/16 v1, 0x7db

    if-eq p1, v1, :cond_79

    const/16 v1, 0x7dd

    if-eq p1, v1, :cond_79

    const/16 v1, 0x7e1

    if-eq p1, v1, :cond_79

    const/16 v1, 0x7e3

    if-eq p1, v1, :cond_79

    const/16 v1, 0x7e8

    if-eq p1, v1, :cond_79

    const/16 v1, 0x7f3

    if-eq p1, v1, :cond_79

    const/16 v1, 0x7f5

    if-eq p1, v1, :cond_79

    const/16 v1, 0x7f8

    if-eq p1, v1, :cond_79

    const/16 v1, 0x7f9

    if-eq p1, v1, :cond_79

    packed-switch p1, :pswitch_data_102

    .line 3306
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6f

    return v5

    :cond_6f
    return v3

    :pswitch_70
    const/16 p0, 0x8a

    .line 3286
    aput p0, p4, v5

    return v5

    :cond_75
    const/16 p0, 0x2d

    .line 3282
    aput p0, p4, v5

    :cond_79
    :pswitch_79
    return v5

    :cond_7a
    const/16 v4, 0x18

    .line 3311
    aput v4, p4, v5

    .line 3313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3315
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v4, v6, :cond_89

    return v5

    .line 3321
    :cond_89
    :try_start_89
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3324
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6
    :try_end_8f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_89 .. :try_end_8f} :catch_96

    move-object/from16 v11, p3

    .line 3321
    :try_start_91
    invoke-virtual {v4, v11, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_91 .. :try_end_95} :catch_98

    goto :goto_99

    :catch_96
    move-object/from16 v11, p3

    :catch_98
    const/4 v4, 0x0

    :goto_99
    if-eqz v4, :cond_f3

    const/16 v6, 0x7f6

    if-eq p1, v6, :cond_a6

    .line 3329
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1a

    if-lt v0, v6, :cond_a6

    goto :goto_f3

    .line 3340
    :cond_a6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b1

    return v5

    .line 3346
    :cond_b1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v1, v10}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isCallerVirtualDeviceOwner(II)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 3347
    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isDisplayTrusted(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    .line 3348
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_cc

    return v5

    .line 3356
    :cond_cc
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v9, p4, v5

    const/4 v12, 0x0

    const-string v13, "check-add"

    invoke-virtual/range {v8 .. v13}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f2

    if-eq v0, v7, :cond_f2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_ea

    .line 3373
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e9

    move v3, v5

    :cond_e9
    return v3

    .line 3366
    :cond_ea
    iget p0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_f1

    return v5

    :cond_f1
    return v3

    :cond_f2
    return v5

    .line 3336
    :cond_f3
    :goto_f3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_fc

    move v3, v5

    :cond_fc
    return v3

    :cond_fd
    :goto_fd
    return v5

    :cond_fe
    :goto_fe
    const/16 p0, -0xa

    return p0

    nop

    :pswitch_data_102
    .packed-switch 0x7ee
        :pswitch_79
        :pswitch_79
        :pswitch_70
        :pswitch_79
    .end packed-switch
.end method

.method public final closeSystemDialogsAsUser(Landroid/os/UserHandle;)V
    .registers 5

    .line 4291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 4292
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 4293
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v2, 0x1

    .line 4294
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v2, 0x2

    .line 4295
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 4296
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 4297
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public createHomeDockIntent()Landroid/content/Intent;
    .registers 5

    .line 6521
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 6522
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v0, :cond_2b

    .line 6523
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_2c

    :cond_d
    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    goto :goto_2b

    :cond_11
    const/4 v3, 0x6

    if-ne v0, v3, :cond_25

    .line 6530
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_22

    const/4 v3, 0x4

    if-eq v0, v3, :cond_22

    if-ne v0, v2, :cond_2b

    .line 6535
    :cond_22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_2c

    :cond_25
    const/4 v2, 0x7

    if-ne v0, v2, :cond_2b

    .line 6539
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_2c

    :cond_2b
    :goto_2b
    move-object v0, v1

    :goto_2c
    if-nez v0, :cond_2f

    return-object v1

    .line 6548
    :cond_2f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x10080

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v0, v3, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 6553
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_40

    :cond_3f
    move-object p0, v1

    :goto_40
    if-eqz p0, :cond_5a

    .line 6555
    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_5a

    const-string v3, "android.dock_home"

    .line 6557
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 6558
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6559
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5a
    return-object v1
.end method

.method public final dismissKeyboardShortcutsMenu()V
    .registers 1

    .line 4360
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4362
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    :cond_9
    return-void
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 4

    .line 6144
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6148
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    :cond_10
    if-eqz p1, :cond_1e

    .line 6151
    :try_start_12
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 6153
    const-string p1, "WindowManager"

    const-string p2, "Failed to call callback"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    return-void
.end method

.method public final dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .registers 5

    .line 5394
    const-string v0, "WindowManager"

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 5396
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 5397
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 5398
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 5401
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 5400
    :goto_27
    invoke-virtual {v1, p0, p1}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    return-void

    .line 5406
    :cond_2b
    :try_start_2b
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5407
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    .line 5406
    invoke-interface {v1, p1, v2, p0, v0}, Landroid/media/IAudioService;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p0

    .line 5409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error dispatching volume key in handleVolumeKey for event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 4005
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/DeviceKeyHandler;

    .line 4010
    :try_start_12
    invoke-interface {v0, p1}, Lcom/android/internal/os/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception v0

    .line 4015
    const-string v1, "WindowManager"

    const-string v2, "Could not dispatch event to device key handler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6

    const/4 v0, 0x0

    .line 5457
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5459
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

    .line 5460
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    const/4 v3, 0x1

    .line 5459
    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object p1

    .line 5465
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5466
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 5

    .line 5431
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_12

    .line 5436
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 5437
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5438
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5441
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5443
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_38

    .line 5444
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x1

    .line 5445
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5447
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5449
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5450
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 5452
    :cond_38
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 3

    .line 5470
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5471
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    :cond_12
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 6759
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSafeMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6760
    const-string p3, " mSystemReady="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6761
    const-string p3, " mSystemBooted="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6762
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mCameraLensCoverState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6763
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6765
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6767
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6768
    const-string p3, "mUiMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6769
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {p3}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6770
    const-string p3, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6771
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLidKeyboardAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6772
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6773
    const-string p3, " mLidNavigationAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6774
    const-string p3, " getLidBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result p3

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->lidBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6775
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6776
    const-string p3, "mLongPressOnBackBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6777
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6778
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6779
    const-string p3, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6780
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6781
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6782
    const-string p3, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6783
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6784
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6785
    const-string p3, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6786
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6787
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6788
    const-string p3, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6789
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6791
    const-string p3, "mLongPressOnPowerAssistantTimeoutMs="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6792
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 6793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6794
    const-string p3, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6795
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6796
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6797
    const-string p3, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6798
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6799
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6800
    const-string p3, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6801
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6802
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6803
    const-string p3, "mSupportShortPressPowerWhenDefaultDisplayOn="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6804
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6805
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6806
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6807
    const-string p3, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6808
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6809
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6810
    const-string p3, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6811
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6812
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6813
    const-string p3, "mShortPressOnStemPrimaryBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6814
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6816
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6817
    const-string p3, "mDoublePressOnStemPrimaryBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6818
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->doublePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6820
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6821
    const-string p3, "mTriplePressOnStemPrimaryBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6822
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->triplePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6824
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6825
    const-string p3, "mLongPressOnStemPrimaryBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6826
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6828
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6829
    const-string p3, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6830
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6831
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6832
    const-string p3, "mHasSoftInput="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6833
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6834
    const-string p3, "mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6835
    const-string p3, " mIncallPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6836
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6837
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6838
    const-string p3, "mIncallBackBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6839
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6840
    const-string p3, " mEndcallBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6841
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6842
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6844
    const-string p3, "mDisplayHomeButtonHandlers="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 6845
    :goto_1e9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v1, "  "

    if-ge p3, v0, :cond_20b

    .line 6846
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 6847
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1e9

    .line 6849
    :cond_20b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6850
    const-string p3, " mKeyguardOccludedChanged="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6851
    const-string p3, " mPendingKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6852
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAllowLockscreenWhenOnDisplays="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6853
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6854
    const-string p3, " mLockScreenTimeout="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6855
    const-string p3, " mLockScreenTimerActive="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6856
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mKidsModeEnabled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6858
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6859
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6860
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6862
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz p3, :cond_278

    .line 6863
    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/WakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6865
    :cond_278
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz p3, :cond_27f

    .line 6866
    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6868
    :cond_27f
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p3, :cond_286

    .line 6869
    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6872
    :cond_286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Looper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6873
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p3, Landroid/util/PrintWriterPrinter;

    invoke-direct {p3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 6740
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 6741
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v0

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6742
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    const-wide v1, 0x10e00000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6743
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getCurrentAppOrientation()I

    move-result v0

    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6744
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6745
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6746
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6747
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v0

    const-wide v1, 0x10800000007L

    .line 6746
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000cL

    .line 6748
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000dL

    .line 6749
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000eL

    .line 6750
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6751
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_84

    const-wide v0, 0x10b00000014L

    .line 6752
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6754
    :cond_84
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 2

    .line 6084
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_7

    .line 6085
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    :cond_7
    return-void
.end method

.method public final enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V
    .registers 7

    .line 6020
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    .line 6021
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6024
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v3, 0x0

    if-nez v2, :cond_20

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 6025
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 6027
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v2, :cond_1f

    .line 6028
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 6029
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_30

    :cond_1f
    :goto_1f
    move v3, v0

    .line 6034
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1d

    if-eqz p2, :cond_28

    if-eqz p1, :cond_28

    .line 6038
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_28
    if-eqz v3, :cond_2f

    .line 6043
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->enableScreenIfNeeded()V

    :cond_2f
    return-void

    .line 6034
    :goto_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_1d

    throw p0
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .line 6450
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 6451
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v0, 0x1

    .line 6452
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method public final enableSwipeThreeFingerGesture(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 3010
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    if-eqz p1, :cond_8

    goto :goto_17

    :cond_8
    const/4 p1, 0x1

    .line 3011
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 3012
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSwipeToScreenshot:Lcom/android/server/policy/SwipeToScreenshotListener;

    invoke-interface {p1, p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    return-void

    .line 3014
    :cond_13
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    if-nez p1, :cond_18

    :goto_17
    return-void

    .line 3015
    :cond_18
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 3016
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSwipeToScreenshot:Lcom/android/server/policy/SwipeToScreenshotListener;

    invoke-interface {p1, p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 2

    .line 6092
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_7

    .line 6093
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    :cond_7
    return-void
.end method

.method public final finishKeyguardDrawn()V
    .registers 5

    .line 5834
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishKeyguardDrawn()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 5838
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5839
    :try_start_c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_19

    .line 5840
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_33

    .line 5842
    :cond_19
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_17

    const-wide/16 v0, 0x20

    .line 5846
    const-string/jumbo v2, "waitForAllWindowsDrawn"

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5848
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    return-void

    .line 5842
    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_17

    throw p0
.end method

.method public final finishPowerKeyPress()V
    .registers 2

    const/4 v0, 0x0

    .line 1151
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1152
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1153
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_10
    return-void
.end method

.method public final finishScreenTurningOn()V
    .registers 6

    .line 6007
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 6009
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    .line 6010
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishScreenTurningOn()Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    .line 6013
    :cond_14
    const-string/jumbo v1, "screenTurningOn"

    const/4 v2, 0x0

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v1, 0x1

    .line 6015
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V

    return-void
.end method

.method public final finishWindowsDrawn(I)V
    .registers 3

    if-eqz p1, :cond_13

    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    .line 5990
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    if-eqz p0, :cond_1b

    .line 5992
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    return-void

    .line 5997
    :cond_13
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->finishWindowsDrawn()Z

    move-result p1

    if-nez p1, :cond_1c

    :cond_1b
    return-void

    .line 6001
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void
.end method

.method public finishedGoingToSleep(II)V
    .registers 6

    .line 5696
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->shouldFinishSleeping(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 5700
    invoke-static {p1}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5707
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_timeout"

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5709
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 5710
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleep:Z

    const/4 v0, -0x1

    .line 5711
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->setPendingSleepingGroup(I)V

    .line 5713
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5717
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5718
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5719
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5720
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_48

    .line 5721
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5723
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_3c

    .line 5724
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v0, p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 5727
    :cond_3c
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p2, :cond_43

    .line 5728
    invoke-virtual {p2}, Lcom/android/server/policy/DisplayFoldController;->finishedGoingToSleep()V

    .line 5730
    :cond_43
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    .line 5731
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    return-void

    :catchall_48
    move-exception p0

    .line 5720
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public finishedGoingToSleepGlobal(I)V
    .registers 2

    const/4 p1, 0x0

    .line 5571
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    return-void
.end method

.method public finishedWakingUp(II)V
    .registers 3

    .line 5781
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->shouldFinishWakingUp(I)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_19

    :cond_7
    const/4 p1, -0x1

    .line 5785
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setPendingWakingUpGroup(I)V

    .line 5786
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_12

    .line 5787
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 5789
    :cond_12
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_19

    .line 5790
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldController;->finishedWakingUp()V

    :cond_19
    :goto_19
    return-void
.end method

.method public finishedWakingUpGlobal(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public getAccessibilityManagerInternal()Lcom/android/server/AccessibilityManagerInternal;
    .registers 3

    .line 1051
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    if-nez v1, :cond_14

    .line 1053
    const-class v1, Lcom/android/server/AccessibilityManagerInternal;

    .line 1054
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AccessibilityManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 1056
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    monitor-exit v0

    return-object p0

    .line 1057
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_12

    throw p0
.end method

.method public getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
    .registers 3

    .line 3514
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 3515
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getAppLaunchBookmarks()Ljava/util/List;

    move-result-object p0

    .line 3514
    invoke-virtual {v0, p1, p0}, Lcom/android/server/policy/ModifierShortcutManager;->getApplicationLaunchKeyboardShortcuts(ILjava/util/List;)Landroid/view/KeyboardShortcutGroup;

    move-result-object p0

    return-object p0
.end method

.method public getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .registers 3

    .line 1042
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_14

    .line 1044
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 1046
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object p0

    .line 1047
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_12

    throw p0
.end method

.method public final getDisplayPolicy(I)Lcom/android/server/wm/DisplayPolicy;
    .registers 2

    if-nez p1, :cond_5

    .line 6071
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0

    .line 6073
    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayPolicy(I)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    return-object p0
.end method

.method public final getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;
    .registers 2

    .line 3230
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-nez v0, :cond_e

    .line 3232
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 3235
    :cond_e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    return-object p0
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 1

    .line 4111
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_9

    .line 4112
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldController;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 4114
    :cond_9
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public final getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .registers 4

    .line 1976
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_23

    .line 1977
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 1980
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_1b

    .line 1984
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, v1

    .line 1986
    :goto_1c
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1988
    :cond_23
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object p0
.end method

.method public final getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .registers 2

    .line 5416
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 5419
    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiControlManager;

    return-object p0
.end method

.method public final getKeyguardDrawnTimeout()J
    .registers 3

    .line 5880
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 5881
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5883
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    int-to-long v0, p0

    return-wide v0

    :cond_12
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public final getLidBehavior()I
    .registers 3

    .line 1501
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lid_behavior"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getMaxMultiPressPowerCount()I
    .registers 3

    .line 1513
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1515
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1514
    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x5

    return p0

    .line 1518
    :cond_12
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_18

    const/4 p0, 0x3

    return p0

    .line 1521
    :cond_18
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz p0, :cond_1e

    const/4 p0, 0x2

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public final getMaxMultiPressStemPrimaryCount()I
    .registers 3

    .line 1822
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_10

    .line 1826
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {v0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x3

    return p0

    .line 1831
    :cond_10
    :goto_10
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_16

    const/4 p0, 0x2

    return p0

    :cond_16
    return v1
.end method

.method public getNotificationService()Landroid/app/NotificationManager;
    .registers 2

    .line 3466
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public final getResolvedLongPressOnPowerBehavior()I
    .registers 3

    .line 1650
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x3

    return p0

    .line 1656
    :cond_8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasAssistant()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_19
    const/4 p0, 0x1

    return p0

    .line 1662
    :cond_1b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1663
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isLongPressToAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 p0, 0x0

    return p0

    .line 1667
    :cond_2a
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return p0
.end method

.method public final getRingerToggleChordDelay()J
    .registers 3

    .line 1876
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 1032
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_14

    .line 1034
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1035
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 1037
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object p0

    .line 1038
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_12

    throw p0
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 1022
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_17

    .line 1024
    const-string/jumbo v1, "statusbar"

    .line 1025
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1024
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_1b

    .line 1027
    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object p0

    .line 1028
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public final getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I
    .registers 4

    .line 7191
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 7192
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result p0

    return p0

    .line 7194
    :cond_c
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq p1, v1, :cond_13

    .line 7195
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getTelecommService()Landroid/telecom/TelecomManager;
    .registers 2

    .line 3462
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public final getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;
    .registers 2

    .line 5888
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-nez v0, :cond_e

    .line 5889
    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 5891
    :cond_e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    return-object p0
.end method

.method public goHome()Z
    .registers 18

    move-object/from16 v0, p0

    .line 6630
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    if-nez v1, :cond_11

    .line 6631
    const-string v0, "Not going home because user setup is in progress."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_11
    const/4 v1, 0x1

    .line 6641
    :try_start_12
    const-string/jumbo v4, "persist.sys.uts-test-mode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_21

    .line 6643
    const-string v4, "UTS-TEST-MODE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 6645
    :cond_21
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 6646
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 6647
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_5b

    .line 6649
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6650
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6651
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6652
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, -0x2

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 6650
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    if-ne v2, v1, :cond_5b

    return v3

    .line 6661
    :cond_5b
    :goto_5b
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6662
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6663
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6664
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, -0x2

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 6662
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_84} :catch_87

    if-ne v0, v1, :cond_87

    return v3

    :catch_87
    :cond_87
    return v1
.end method

.method public final goToSleep(JII)V
    .registers 6

    const/4 v0, 0x1

    .line 1435
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 1436
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public final handleCameraGesture(Landroid/view/KeyEvent;Z)Z
    .registers 5

    .line 5195
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5198
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    .line 5199
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 5200
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    .line 5201
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result p1

    .line 5202
    iget-boolean p2, v0, Landroid/util/MutableBoolean;->value:Z

    if-nez p2, :cond_18

    return p1

    :cond_18
    const/4 p1, 0x1

    .line 5208
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    .line 5209
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    if-eqz p2, :cond_26

    .line 5210
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    .line 5212
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {p0}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromPowerKeyCameraGesture()Z

    :cond_26
    return p1
.end method

.method public final handleHideBootMessage()V
    .registers 3

    .line 6048
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6049
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    .line 6050
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 6051
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    goto :goto_1a

    .line 6053
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_c

    .line 6055
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_19

    .line 6057
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 6058
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    :cond_19
    return-void

    .line 6053
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_c

    throw p0
.end method

.method public final handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 5

    .line 3943
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    if-nez v0, :cond_20

    .line 3945
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 3946
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3948
    :cond_20
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleHomeButton(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final handleKeyGesture(Landroid/view/KeyEvent;ZZ)V
    .registers 6

    .line 5180
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    .line 5181
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleCameraGesture(Landroid/view/KeyEvent;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 5182
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz v0, :cond_1e

    .line 5184
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return-void

    .line 5189
    :cond_1e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKey(Landroid/view/KeyEvent;ZZ)V

    return-void
.end method

.method public handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .registers 17

    .line 3660
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 3661
    :goto_b
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    .line 3662
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v1

    .line 3663
    :goto_1b
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDeviceId()I

    move-result v7

    .line 3664
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v5

    .line 3665
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v6

    .line 3666
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v8

    .line 3667
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v9

    .line 3668
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v10

    if-eqz v10, :cond_39

    if-nez v9, :cond_39

    move v10, v2

    goto :goto_3a

    :cond_39
    move v10, v1

    .line 3669
    :goto_3a
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v11

    new-instance v12, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda4;

    invoke-direct {v12}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v11, v12}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v11

    if-eqz v3, :cond_51

    if-eqz v11, :cond_51

    .line 3672
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    :cond_51
    if-eq v5, v2, :cond_1f6

    if-eq v5, v4, :cond_1f0

    const/16 v4, 0x1b

    if-eq v5, v4, :cond_1e6

    const/16 v4, 0x1c

    if-eq v5, v4, :cond_1dc

    const/16 v4, 0x1f

    .line 3674
    const-string v12, "WindowManager"

    if-eq v5, v4, :cond_1b4

    const/16 v4, 0x20

    const/4 v13, 0x0

    if-eq v5, v4, :cond_1ae

    const/16 v4, 0x38

    if-eq v5, v4, :cond_1a4

    const/16 v4, 0x39

    if-eq v5, v4, :cond_193

    const/16 v4, 0x3b

    if-eq v5, v4, :cond_189

    const/16 v4, 0x3d

    if-eq v5, v4, :cond_181

    const/16 v4, 0x4b

    if-eq v5, v4, :cond_16c

    packed-switch v5, :pswitch_data_204

    const/4 v4, -0x1

    packed-switch v5, :pswitch_data_212

    packed-switch v5, :pswitch_data_21c

    packed-switch v5, :pswitch_data_226

    .line 3853
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received a key gesture "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that was not registered by this handler"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_a3
    if-eqz v0, :cond_a9

    .line 3785
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void

    .line 3787
    :cond_a9
    invoke-virtual {p0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    return-void

    :pswitch_ad
    if-eqz v3, :cond_202

    .line 3742
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_202

    .line 3745
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result p0

    .line 3744
    invoke-interface {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToFullscreen(I)V

    return-void

    :pswitch_bd
    if-eqz v3, :cond_202

    .line 3751
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_202

    .line 3754
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result p0

    .line 3753
    invoke-interface {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToDesktop(I)V

    return-void

    .line 3837
    :pswitch_cd
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    if-eqz v3, :cond_202

    if-eqz v10, :cond_202

    if-eqz v0, :cond_202

    .line 3839
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 3840
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 3839
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;I)V

    return-void

    :pswitch_e7
    if-eqz v3, :cond_202

    and-int/lit16 v0, v8, 0xc1

    if-eqz v0, :cond_ee

    move v2, v4

    :cond_ee
    move-object/from16 v0, p2

    .line 3804
    invoke-virtual {p0, v6, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendSwitchKeyboardLayout(ILandroid/os/IBinder;I)V

    return-void

    :pswitch_f4
    if-eqz v3, :cond_202

    if-eqz v10, :cond_202

    .line 3798
    invoke-virtual {p0, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchTargetSearchActivity(I)V

    return-void

    :pswitch_fc
    if-eqz v3, :cond_202

    .line 3791
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v2

    .line 3792
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v0

    aget v0, v0, v1

    const-string v1, "launchAllAppsViaA11y"

    .line 3791
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 3793
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void

    :pswitch_114
    if-eqz v3, :cond_202

    const/16 v0, 0xd

    if-ne v5, v0, :cond_11b

    goto :goto_11c

    :cond_11b
    move v2, v4

    .line 3780
    :goto_11c
    invoke-virtual {p0, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->changeDisplayBrightnessValue(II)V

    return-void

    :pswitch_120
    if-eqz v3, :cond_202

    .line 3772
    invoke-virtual {p0, v7}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    return-void

    :pswitch_126
    if-eqz v3, :cond_202

    .line 3720
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    return-void

    :pswitch_12c
    if-eqz v3, :cond_202

    if-eqz v10, :cond_202

    .line 3710
    invoke-virtual {p0, v6}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings(I)V

    return-void

    .line 3691
    :pswitch_134
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_13d

    if-eqz v11, :cond_13d

    goto :goto_13e

    :cond_13d
    move v2, v1

    :goto_13e
    if-eqz v3, :cond_15d

    if-nez v10, :cond_144

    if-eqz v2, :cond_15d

    :cond_144
    if-eqz v2, :cond_148

    :goto_146
    move-object v6, v13

    goto :goto_14b

    .line 3695
    :cond_148
    const-string v13, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    goto :goto_146

    .line 3696
    :goto_14b
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getUptimeMillis()J

    move-result-wide v9

    if-eqz v2, :cond_158

    const/4 v1, 0x6

    :cond_158
    move-object v5, p0

    move v11, v1

    .line 3694
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IIJI)V

    :cond_15d
    return-void

    :pswitch_15e
    if-nez v9, :cond_202

    if-eqz v0, :cond_166

    .line 3683
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void

    :cond_166
    if-eqz v3, :cond_202

    .line 3685
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void

    .line 3844
    :cond_16c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object p0

    if-eqz p0, :cond_202

    .line 3846
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    if-eqz v0, :cond_179

    move v1, v2

    :cond_179
    xor-int/lit8 v0, v1, 0x1

    .line 3848
    const-string v1, "Key gesture DND"

    .line 3847
    invoke-virtual {p0, v0, v13, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    return-void

    :cond_181
    if-eqz v3, :cond_202

    .line 3833
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemDialogsAsUser(Landroid/os/UserHandle;)V

    return-void

    :cond_189
    if-eqz v0, :cond_18f

    .line 3826
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv()V

    return-void

    .line 3828
    :cond_18f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelBugreportGestureTv()V

    return-void

    :cond_193
    if-eqz v0, :cond_1a0

    const/16 v0, 0x2713

    .line 3816
    const-string v1, "KEY_GESTURE_TYPE_GLOBAL_ACTIONS - Global Actions"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 3819
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    return-void

    .line 3821
    :cond_1a0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelGlobalActionsAction()V

    return-void

    :cond_1a4
    if-eqz v0, :cond_1aa

    .line 3809
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    return-void

    .line 3811
    :cond_1aa
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    return-void

    :cond_1ae
    if-eqz v3, :cond_202

    .line 3715
    invoke-virtual {p0, v13}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    :cond_1b4
    if-eqz v3, :cond_202

    .line 3726
    :try_start_1b6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result v0

    if-eqz v0, :cond_1bf

    goto :goto_202

    .line 3731
    :cond_1bf
    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 3732
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_1d3
    .catch Landroid/os/RemoteException; {:try_start_1b6 .. :try_end_1d3} :catch_1d4

    return-void

    :catch_1d4
    move-exception v0

    move-object p0, v0

    .line 3736
    const-string v0, "Error taking bugreport"

    invoke-static {v12, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1dc
    if-eqz v3, :cond_202

    .line 3766
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->moveFocusedTaskToStageSplit(IZ)V

    return-void

    :cond_1e6
    if-eqz v3, :cond_202

    .line 3760
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->moveFocusedTaskToStageSplit(IZ)V

    return-void

    :cond_1f0
    if-eqz v3, :cond_202

    .line 3677
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void

    :cond_1f6
    if-eqz v3, :cond_202

    .line 3705
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v6}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_202
    :goto_202
    return-void

    nop

    :pswitch_data_204
    .packed-switch 0x4
        :pswitch_15e
        :pswitch_134
        :pswitch_134
        :pswitch_12c
        :pswitch_126
    .end packed-switch

    :pswitch_data_212
    .packed-switch 0xc
        :pswitch_120
        :pswitch_114
        :pswitch_114
    .end packed-switch

    :pswitch_data_21c
    .packed-switch 0x15
        :pswitch_fc
        :pswitch_f4
        :pswitch_e7
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0x33
        :pswitch_cd
        :pswitch_bd
        :pswitch_ad
        :pswitch_a3
    .end packed-switch
.end method

.method public final handleRingerChordGesture()V
    .registers 4

    .line 1012
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_5

    return-void

    .line 1015
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 1016
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hush_gesture_used"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1018
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    return-void
.end method

.method public final handleShortPressOnHome(I)V
    .registers 5

    .line 1947
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1949
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1954
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1955
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    .line 1956
    const-string/jumbo v2, "short press on home"

    invoke-virtual {v0, v1, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    .line 1957
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    return-void

    .line 1966
    :cond_22
    :goto_22
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    return-void
.end method

.method public final handleSingleKeyGestureInKeyGestureController(ILcom/android/server/policy/SingleKeyGestureEvent;)V
    .registers 8

    .line 2974
    invoke-virtual {p2}, Lcom/android/server/policy/SingleKeyGestureEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4f

    .line 2980
    invoke-virtual {p2}, Lcom/android/server/policy/SingleKeyGestureEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    const/4 v0, 0x3

    goto :goto_11

    :cond_10
    move v0, v2

    .line 2983
    :goto_11
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    new-instance v3, Landroid/hardware/input/KeyGestureEvent$Builder;

    invoke-direct {v3}, Landroid/hardware/input/KeyGestureEvent$Builder;-><init>()V

    .line 2985
    invoke-virtual {p2}, Lcom/android/server/policy/SingleKeyGestureEvent;->getKeyCode()I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeycodes([I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object v3

    .line 2986
    invoke-virtual {p2}, Lcom/android/server/policy/SingleKeyGestureEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/KeyGestureEvent$Builder;->setDeviceId(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object v3

    .line 2987
    invoke-virtual {v3, p1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeyGestureType(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 2988
    invoke-virtual {p1, v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->setFlags(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 2989
    invoke-virtual {p2}, Lcom/android/server/policy/SingleKeyGestureEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    invoke-virtual {p1, v1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setAction(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 2992
    invoke-virtual {p2}, Lcom/android/server/policy/SingleKeyGestureEvent;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/input/KeyGestureEvent$Builder;->setDisplayId(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 2993
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent$Builder;->build()Landroid/hardware/input/KeyGestureEvent;

    move-result-object p1

    .line 2983
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerInternal;->handleKeyGestureInKeyGestureController(Landroid/hardware/input/KeyGestureEvent;)V

    :cond_4f
    return-void
.end method

.method public final handleSwitchKeyboardLayout(IILandroid/os/IBinder;)V
    .registers 4

    .line 4077
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4078
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowManagerInternal;->getTargetWindowTokenFromInputToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    .line 4079
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSwitchKeyboardLayoutShortcut(IILandroid/os/IBinder;)V

    return-void
.end method

.method public final handleTransitionForKeyguardLw(ZZ)I
    .registers 5

    if-eqz p2, :cond_7

    .line 4169
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange()I

    move-result p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    if-eqz p1, :cond_13

    .line 4173
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(J)V

    :cond_13
    return p2
.end method

.method public final handleUnhandledSystemKey(Landroid/view/KeyEvent;)V
    .registers 5

    .line 4055
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4056
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal keycode provided to handleUnhandledSystemKey: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4056
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4062
    :cond_25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3c

    .line 4065
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    :cond_3c
    return-void
.end method

.method public final hasAssistant()Z
    .registers 2

    .line 1646
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final hasLongPressOnBackBehavior()Z
    .registers 1

    .line 1846
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final hasLongPressOnPowerBehavior()Z
    .registers 1

    .line 1838
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final hasLongPressOnStemPrimaryBehavior()Z
    .registers 1

    .line 1850
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final hasStemPrimaryBehavior()Z
    .registers 4

    .line 1859
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1861
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1863
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressStemPrimaryCount()I

    move-result p0

    const/4 v2, 0x1

    if-gt p0, v2, :cond_28

    if-nez v1, :cond_28

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    return p0

    :cond_28
    :goto_28
    return v2
.end method

.method public final hasVeryLongPressOnPowerBehavior()Z
    .registers 1

    .line 1842
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hideBootMessages()V
    .registers 2

    .line 6351
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final hideRecentApps(ZZ)V
    .registers 4

    const/4 v0, 0x0

    .line 4367
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4368
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4370
    invoke-interface {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    :cond_c
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 1

    .line 6138
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 6139
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 4

    .line 2349
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2354
    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

    .line 2355
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2356
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getWindowManagerFuncs()Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2357
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2358
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2359
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 2360
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2361
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2362
    const-class v2, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 2363
    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 2364
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2365
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2366
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 2367
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2368
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2369
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2370
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2371
    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 2372
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 2373
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 2374
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.hdmi.cec"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 2375
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getGlobalActionsFactory()Ljava/util/function/Supplier;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Ljava/util/function/Supplier;

    .line 2376
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2377
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2379
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11102d0

    .line 2381
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    const v3, 0x11102ce

    .line 2383
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    const v3, 0x11102cf

    .line 2385
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 2388
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_133

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2389
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1040152

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_133

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2390
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1040153

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_133

    move v3, v4

    goto :goto_134

    :cond_133
    move v3, v5

    :goto_134
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasAlertSlider:Z

    .line 2393
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110181

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 2396
    const-string/jumbo v6, "persist.debug.force_burn_in"

    .line 2397
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v3, :cond_14e

    if-eqz v6, :cond_19a

    :cond_14e
    if-eqz v6, :cond_164

    .line 2409
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v3

    if-eqz v3, :cond_158

    const/4 v3, 0x6

    goto :goto_159

    :cond_158
    const/4 v3, -0x1

    :goto_159
    const/4 v6, -0x8

    const/16 v7, 0x8

    const/4 v8, -0x4

    move v12, v6

    move v14, v12

    move v15, v8

    :goto_160
    move/from16 v16, v3

    move v13, v7

    goto :goto_191

    .line 2411
    :cond_164
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e004f

    .line 2412
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x10e004c

    .line 2414
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v8, 0x10e0050

    .line 2416
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x10e004e

    .line 2418
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const v10, 0x10e004d

    .line 2420
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move v12, v6

    move v14, v8

    move v15, v9

    goto :goto_160

    .line 2423
    :goto_191
    new-instance v10, Lcom/android/server/policy/BurnInProtectionHelper;

    iget-object v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct/range {v10 .. v16}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2427
    :cond_19a
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v1, v6, v7}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2428
    new-instance v3, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 2429
    new-instance v3, Lcom/android/server/policy/SwipeToScreenshotListener;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;

    invoke-direct {v8, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v3, v6, v8}, Lcom/android/server/policy/SwipeToScreenshotListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSwipeToScreenshot:Lcom/android/server/policy/SwipeToScreenshotListener;

    .line 2431
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v1, v6, v8}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2432
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v1, v6}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 2433
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2434
    new-instance v3, Lcom/android/server/policy/ModifierShortcutManager;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 2435
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v3, v6, v8}, Lcom/android/server/policy/ModifierShortcutManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    .line 2436
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e0084

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2438
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2439
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v8, 0x10200000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2442
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110182

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 2444
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2445
    const-string v9, "android.intent.category.CAR_DOCK"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2446
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2448
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2449
    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2450
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2452
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 2453
    const-string v6, "android.intent.category.VR_HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2454
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2457
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2458
    const-string v6, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2460
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2462
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e00d0

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2464
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e00d1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2467
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110285

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 2469
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2470
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110289

    .line 2471
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    .line 2475
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e00d5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2478
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e00d7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2480
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e00d8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 2482
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e0178

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2484
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2485
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x104028e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2484
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 2487
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2488
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10402de

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2487
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 2490
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e015a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 2492
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110268

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    .line 2494
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110027

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2497
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_33f

    move v3, v4

    goto :goto_340

    :cond_33f
    move v3, v5

    :goto_340
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2499
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x11101d5

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2502
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10e0186

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    .line 2505
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2506
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10402f6

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2505
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    .line 2508
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2510
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10e0173

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mTurnOffTvToastSuppressionDelay:J

    .line 2512
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10e0172

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mTurnOffTvToastPostDelay:J

    .line 2515
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 2517
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v7, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2520
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2521
    sget-object v7, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2522
    sget-object v7, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2523
    sget-object v7, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2524
    sget-object v7, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2525
    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2526
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2529
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2530
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2533
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2534
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mBluetoothHidReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2536
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2538
    new-instance v3, Lcom/android/internal/app/AssistUtils;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 2540
    new-instance v3, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2543
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2546
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_41c

    .line 2547
    invoke-virtual {v1, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(II)V

    .line 2549
    invoke-virtual {v1, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(II)V

    .line 2553
    :cond_41c
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v3, v1, v5}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 2588
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2590
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e00c9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 2592
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getKeyguardServiceDelegate()Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2593
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getTalkbackShortcutController()Lcom/android/server/policy/TalkbackShortcutController;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 2594
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getWindowWakeUpPolicy()Lcom/android/server/policy/WindowWakeUpPolicy;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 2595
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->initSingleKeyGestureRules(Landroid/os/Looper;)V

    .line 2596
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->initKeyGestures()V

    .line 2597
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getButtonOverridePermissionChecker()Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    .line 2598
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, v3, v6, v7}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    const v0, 0x1070052

    .line 2600
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v0, 0x1070051

    .line 2602
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move v6, v5

    .line 2606
    :goto_473
    array-length v0, v3

    if-ge v6, v0, :cond_4d0

    array-length v0, v2

    if-ge v6, v0, :cond_4d0

    .line 2608
    :try_start_479
    new-instance v0, Ldalvik/system/PathClassLoader;

    aget-object v7, v3, v6

    .line 2609
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2610
    aget-object v7, v2, v6

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2611
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2612
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/DeviceKeyHandler;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a9
    .catch Ljava/lang/Exception; {:try_start_479 .. :try_end_4a9} :catch_4aa

    goto :goto_4cd

    :catch_4aa
    move-exception v0

    .line 2614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not instantiate device key handler "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WindowManager"

    invoke-static {v8, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4cd
    add-int/lit8 v6, v6, 0x1

    goto :goto_473

    :cond_4d0
    return-void
.end method

.method public final initKeyGestures()V
    .registers 26

    move-object/from16 v0, p0

    .line 3620
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    .line 3621
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x5

    .line 3622
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x6

    .line 3623
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x1

    .line 3624
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, 0x7

    .line 3625
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v2, 0x20

    .line 3626
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x1f

    .line 3627
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0x35

    .line 3628
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v2, 0x34

    .line 3629
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v2, 0x1b

    .line 3630
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v2, 0x1c

    .line 3631
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v2, 0xc

    .line 3632
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v2, 0xd

    .line 3633
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v2, 0xe

    .line 3634
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v2, 0x16

    .line 3635
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v2, 0x17

    .line 3636
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v2, 0x3d

    .line 3637
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v2, 0x33

    .line 3638
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v2, 0x4b

    .line 3639
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v2, 0x38

    .line 3640
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v2, 0x39

    .line 3641
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v2, 0x3b

    .line 3642
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    filled-new-array/range {v3 .. v24}, [Ljava/lang/Integer;

    move-result-object v2

    .line 3620
    invoke-static {v2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3654
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method public final initSingleKeyGestureRules(Landroid/os/Looper;)V
    .registers 3

    .line 2997
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->get(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2998
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 2999
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 3000
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 3002
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasStemPrimaryBehavior()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 3003
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 3005
    :cond_30
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    return-void
.end method

.method public initializeHdmiState()V
    .registers 2

    .line 4513
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 4515
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 4517
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void

    :catchall_b
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 4518
    throw p0
.end method

.method public initializeHdmiStateInternal()V
    .registers 10

    .line 4522
    const-string v0, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    const-string v1, "WindowManager"

    .line 4524
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_81

    .line 4525
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v6, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v2, v6}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4530
    :try_start_1b
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/hdmi/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_47
    .catchall {:try_start_1b .. :try_end_22} :catchall_45

    const/16 v3, 0xf

    .line 4531
    :try_start_24
    new-array v3, v3, [C

    .line 4532
    invoke-virtual {v2, v3}, Ljava/io/FileReader;->read([C)I

    move-result v6

    if-le v6, v4, :cond_41

    .line 4534
    new-instance v7, Ljava/lang/String;

    sub-int/2addr v6, v4

    invoke-direct {v7, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_36} :catch_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_36} :catch_3d
    .catchall {:try_start_24 .. :try_end_36} :catchall_3a

    if-eqz v0, :cond_41

    move v5, v4

    goto :goto_41

    :catchall_3a
    move-exception p0

    move-object v3, v2

    goto :goto_7b

    :catch_3d
    move-exception v3

    goto :goto_51

    :catch_3f
    move-exception v3

    goto :goto_66

    .line 4543
    :cond_41
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_a2

    goto :goto_a2

    :catchall_45
    move-exception p0

    goto :goto_7b

    :catch_47
    move-exception v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_51

    :catch_4c
    move-exception v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_66

    .line 4539
    :goto_51
    :try_start_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a2

    goto :goto_41

    .line 4537
    :goto_66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_3a

    if-eqz v2, :cond_a2

    goto :goto_41

    :goto_7b
    if-eqz v3, :cond_80

    .line 4543
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_80

    .line 4547
    :catch_80
    :cond_80
    throw p0

    .line 4549
    :cond_81
    const-string v0, "HDMI"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4550
    invoke-static {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4552
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a2

    .line 4554
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    .line 4555
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->-$$Nest$minit(Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;Lcom/android/server/ExtconUEventObserver$ExtconInfo;)Z

    move-result v5

    .line 4556
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 4564
    :catch_a2
    :cond_a2
    :goto_a2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public final interceptBugreportGestureTv()V
    .registers 4

    .line 3982
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3984
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 3985
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3986
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 8

    .line 3523
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 3524
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 3533
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_1c

    .line 3535
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3536
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3539
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_37

    .line 3540
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_37

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_37

    .line 3541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v3

    .line 3545
    :cond_37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 3546
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_4b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 3547
    :cond_4b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3548
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 3549
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_5d
    return p1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    .line 4585
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4586
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    move v4, v6

    :goto_14
    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_21

    .line 4588
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v7

    if-eqz v7, :cond_1f

    goto :goto_21

    :cond_1f
    move v7, v6

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v7, 0x1

    :goto_22
    const/high16 v8, 0x40000

    and-int/2addr v8, v0

    if-eqz v8, :cond_29

    const/4 v8, 0x1

    goto :goto_2a

    :cond_29
    move v8, v6

    .line 4593
    :goto_2a
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v9, :cond_40

    .line 4594
    invoke-static {v3}, Landroid/view/KeyEvent;->isVisibleBackgroundUserAllowedKey(I)Z

    move-result v9

    if-nez v9, :cond_40

    .line 4595
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v3, v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_40

    return v6

    .line 4599
    :cond_40
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/16 v10, 0xb1

    const/16 v11, 0x1a

    if-nez v9, :cond_6d

    if-eqz v4, :cond_52

    if-eq v3, v11, :cond_4e

    if-ne v3, v10, :cond_52

    .line 4607
    :cond_4e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    goto :goto_63

    :cond_52
    if-eqz v4, :cond_6c

    if-nez v7, :cond_5a

    const/16 v0, 0xe0

    if-ne v3, v0, :cond_6c

    .line 4610
    :cond_5a
    invoke-virtual {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 4611
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 4615
    :goto_63
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 4617
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    :cond_6c
    return v6

    :cond_6d
    const/high16 v9, 0x20000000

    and-int/2addr v9, v0

    if-eqz v9, :cond_74

    const/4 v9, 0x1

    goto :goto_75

    :cond_74
    move v9, v6

    .line 4624
    :goto_75
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v12

    .line 4625
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    const/high16 v14, 0x1000000

    and-int/2addr v14, v0

    if-eqz v14, :cond_84

    const/4 v14, 0x1

    goto :goto_85

    :cond_84
    move v14, v6

    :goto_85
    const/4 v15, -0x1

    if-nez v9, :cond_aa

    if-eqz v14, :cond_8d

    if-nez v7, :cond_8d

    goto :goto_aa

    .line 4658
    :cond_8d
    invoke-virtual {v1, v13, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v14

    if-eqz v14, :cond_97

    .line 4665
    iput v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :goto_95
    const/4 v14, 0x1

    goto :goto_bc

    :cond_97
    if-eqz v7, :cond_a2

    if-eqz v4, :cond_a1

    .line 4670
    invoke-virtual {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v14

    if-nez v14, :cond_a2

    :cond_a1
    move v7, v6

    :cond_a2
    if-eqz v7, :cond_a8

    if-eqz v4, :cond_a8

    .line 4675
    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :cond_a8
    move v14, v6

    goto :goto_bc

    :cond_aa
    :goto_aa
    if-eqz v9, :cond_ba

    .line 4652
    iget v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v3, v7, :cond_b4

    if-nez v4, :cond_b4

    move v7, v6

    goto :goto_b5

    :cond_b4
    const/4 v7, 0x1

    .line 4656
    :goto_b5
    iput v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move v14, v7

    move v7, v6

    goto :goto_bc

    :cond_ba
    move v7, v6

    goto :goto_95

    .line 4681
    :goto_bc
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v16

    if-eqz v16, :cond_ea

    move/from16 v16, v6

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 4682
    invoke-virtual {v6, v3}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(I)Z

    move-result v6

    if-eqz v6, :cond_ec

    if-nez v9, :cond_e3

    if-eqz v7, :cond_e3

    if-eqz v4, :cond_e3

    .line 4684
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 4685
    invoke-virtual {v0, v3}, Lcom/android/server/policy/GlobalKeyManager;->shouldDispatchFromNonInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 4686
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalKeyManager;->setBeganFromNonInteractive()V

    .line 4689
    iput v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    const/4 v5, 0x1

    goto :goto_e4

    :cond_e3
    move v5, v14

    :goto_e4
    if-eqz v7, :cond_e9

    .line 4693
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_e9
    return v5

    :cond_ea
    move/from16 v16, v6

    .line 4699
    :cond_ec
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v6

    if-ne v3, v10, :cond_133

    .line 4700
    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v10, :cond_133

    if-eqz v6, :cond_fe

    .line 4701
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiControlManager;->shouldHandleTvPowerKey()Z

    move-result v10

    if-nez v10, :cond_133

    .line 4703
    :cond_fe
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v17

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v19

    .line 4704
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    .line 4705
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v24

    .line 4706
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v25

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v26

    .line 4707
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v27

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v28

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v29

    const/16 v30, 0x0

    const/16 v22, 0x1a

    .line 4702
    invoke-static/range {v17 .. v30}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    .line 4708
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0

    .line 4713
    :cond_133
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getState()I

    move-result v10

    invoke-static {v10}, Landroid/view/Display;->isOnState(I)Z

    move-result v10

    .line 4714
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v15

    if-eqz v9, :cond_149

    if-eqz v15, :cond_149

    const/4 v15, 0x1

    goto :goto_14b

    :cond_149
    move/from16 v15, v16

    :goto_14b
    if-eqz v8, :cond_153

    .line 4718
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v10}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    goto :goto_15e

    .line 4720
    :cond_153
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_15e

    .line 4721
    invoke-virtual {v1, v2, v15, v10}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGesture(Landroid/view/KeyEvent;ZZ)V

    .line 4727
    :cond_15e
    :goto_15e
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_168

    const/4 v5, 0x1

    goto :goto_16a

    :cond_168
    move/from16 v5, v16

    :goto_16a
    if-eqz v4, :cond_184

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_184

    if-eqz v5, :cond_17c

    .line 4728
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-nez v0, :cond_17c

    .line 4731
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    if-lez v0, :cond_184

    .line 4732
    :cond_17c
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_184

    const/4 v5, 0x1

    goto :goto_186

    :cond_184
    move/from16 v5, v16

    .line 4735
    :goto_186
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_18d

    return v16

    :cond_18d
    const/4 v0, 0x4

    .line 4740
    const-string v10, "WindowManager"

    if-eq v3, v0, :cond_437

    const/4 v0, 0x5

    if-eq v3, v0, :cond_41d

    const/4 v0, 0x6

    if-eq v3, v0, :cond_3c3

    const/16 v9, 0x7e

    if-eq v3, v9, :cond_391

    const/16 v9, 0x7f

    if-eq v3, v9, :cond_391

    const/16 v9, 0x22

    packed-switch v3, :pswitch_data_496

    const/16 v8, 0x24

    sparse-switch v3, :sswitch_data_4a0

    packed-switch v3, :pswitch_data_53a

    packed-switch v3, :pswitch_data_54c

    packed-switch v3, :pswitch_data_556

    packed-switch v3, :pswitch_data_562

    packed-switch v3, :pswitch_data_56e

    packed-switch v3, :pswitch_data_57a

    goto/16 :goto_45e

    :cond_1be
    :goto_1be
    :pswitch_1be
    :sswitch_1be
    move v6, v7

    goto/16 :goto_461

    .line 5116
    :pswitch_1c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stylus buttons event: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " received. Should handle event? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5118
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    if-eqz v0, :cond_1be

    .line 5119
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    goto :goto_1be

    :pswitch_1e7
    const/16 v0, 0x23

    .line 4943
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    .line 4946
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    goto :goto_1be

    :pswitch_1f0
    const/16 v0, 0x25

    .line 4980
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    const/4 v6, 0x1

    goto/16 :goto_461

    .line 4951
    :pswitch_1f8
    invoke-virtual {v1, v2, v8}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    .line 4955
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_205

    move/from16 v5, v16

    :cond_205
    if-eqz v4, :cond_20b

    .line 4959
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto :goto_212

    .line 4961
    :cond_20b
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    .line 4963
    :goto_212
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :goto_215
    move/from16 v6, v16

    goto/16 :goto_461

    :pswitch_219
    if-eqz v4, :cond_1be

    .line 4989
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1be

    .line 4990
    invoke-virtual {v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    .line 4992
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleMicrophoneMuteFromKey()V

    goto :goto_1be

    .line 4968
    :sswitch_228
    invoke-virtual {v1, v2, v8}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-nez v4, :cond_232

    .line 4973
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 4975
    :cond_232
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    goto :goto_215

    :sswitch_236
    if-eqz v4, :cond_45e

    .line 5085
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_45e

    if-nez v14, :cond_45e

    .line 5088
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {v1, v3, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    goto/16 :goto_45e

    :sswitch_249
    if-nez v4, :cond_1be

    .line 5060
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5061
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    .line 5062
    invoke-virtual {v3, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5063
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 5064
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto/16 :goto_1be

    .line 5046
    :sswitch_264
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_26c

    const/4 v0, 0x1

    goto :goto_26e

    :cond_26c
    move/from16 v0, v16

    :goto_26e
    if-eqz v4, :cond_293

    if-nez v0, :cond_293

    .line 5048
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 5049
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v6, 0x17

    move/from16 v8, v16

    .line 5048
    invoke-virtual {v0, v6, v3, v8, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v4, 0x1

    .line 5050
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5051
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x5

    .line 5052
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_293
    :goto_293
    move v6, v7

    :goto_294
    const/16 v16, 0x0

    goto/16 :goto_461

    .line 4908
    :sswitch_298
    invoke-virtual {v1, v2, v9}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-eqz v4, :cond_2a2

    if-eqz v6, :cond_2a2

    .line 4913
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiControlManager;->toggleAndFollowTvPower()V

    :cond_2a2
    :goto_2a2
    const/4 v6, 0x0

    goto :goto_294

    .line 5071
    :sswitch_2a4
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_45e

    .line 5072
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_45e

    if-nez v4, :cond_293

    .line 5077
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    goto :goto_293

    .line 4919
    :pswitch_2b3
    invoke-virtual {v1, v2, v9}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    .line 4922
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    .line 4923
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 4924
    invoke-virtual {v6, v11}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyPressCounter(I)I

    move-result v6

    .line 4921
    invoke-static {v0, v3, v6}, Lcom/android/server/policy/EventLogTags;->writeInterceptPower(Ljava/lang/String;II)V

    if-eqz v4, :cond_2cf

    .line 4929
    invoke-virtual {v1, v2, v15, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZZ)V

    goto :goto_2a2

    .line 4931
    :cond_2cf
    invoke-virtual {v1, v2, v12}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;Z)V

    goto :goto_2a2

    :pswitch_2d3
    :sswitch_2d3
    const/16 v0, 0x19

    const/16 v6, 0x18

    if-ne v3, v0, :cond_2dc

    const/16 v0, 0x13

    goto :goto_2e3

    :cond_2dc
    if-ne v3, v6, :cond_2e1

    const/16 v0, 0x12

    goto :goto_2e3

    :cond_2e1
    const/16 v0, 0x14

    .line 4769
    :goto_2e3
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionDown(Landroid/view/KeyEvent;I)V

    const/high16 v8, -0x80000000

    if-eqz v4, :cond_33c

    .line 4771
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 4773
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_2fa

    .line 4774
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v9, :cond_2fa

    .line 4775
    invoke-virtual {v0}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    .line 4778
    :cond_2fa
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v9

    if-eqz v9, :cond_313

    .line 4779
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_313

    .line 4782
    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_313

    .line 4789
    const-string v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_293

    .line 4804
    :cond_313
    :try_start_313
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_31b} :catch_31c

    goto :goto_323

    :catch_31c
    move-exception v0

    .line 4806
    const-string v11, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_323
    if-eqz v9, :cond_32b

    .line 4808
    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v9

    if-nez v9, :cond_32e

    :cond_32b
    const/4 v9, 0x3

    if-ne v0, v9, :cond_33c

    :cond_32e
    if-nez v14, :cond_33c

    .line 4813
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v8, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_45e

    .line 4818
    :cond_33c
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_38c

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_345

    goto :goto_38c

    :cond_345
    if-nez v14, :cond_45e

    .line 4825
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_38c

    .line 4826
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolBtnMusicControls:Z

    if-eqz v0, :cond_378

    const/16 v0, 0xa4

    if-eq v3, v0, :cond_378

    if-eqz v4, :cond_36a

    const/4 v4, 0x0

    .line 4829
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolBtnLongPress:Z

    .line 4830
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v6, :cond_363

    const/16 v0, 0x57

    goto :goto_365

    :cond_363
    const/16 v0, 0x58

    .line 4833
    :goto_365
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->scheduleLongPressKeyEvent(Landroid/view/KeyEvent;I)V

    goto/16 :goto_45e

    .line 4837
    :cond_36a
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1c

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4839
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolBtnLongPress:Z

    if-eqz v0, :cond_377

    goto/16 :goto_45e

    :cond_377
    const/4 v4, 0x1

    :cond_378
    if-eqz v4, :cond_45e

    .line 4861
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 4862
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v8, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_45e

    :cond_38c
    :goto_38c
    move v6, v7

    const/16 v16, 0x1

    goto/16 :goto_461

    :cond_391
    :pswitch_391
    :sswitch_391
    const/16 v0, 0x26

    .line 5006
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    .line 5008
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_3a4

    const/4 v6, 0x0

    goto :goto_3a5

    :cond_3a4
    move v6, v14

    :goto_3a5
    if-nez v6, :cond_3bf

    .line 5019
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5020
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/4 v9, 0x3

    invoke-virtual {v0, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v4, 0x1

    .line 5022
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5023
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3bf
    :goto_3bf
    move/from16 v16, v6

    goto/16 :goto_1be

    :cond_3c3
    if-eqz v4, :cond_3f1

    .line 4873
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_3d0

    .line 4876
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    goto :goto_3d1

    :cond_3d0
    const/4 v0, 0x0

    :goto_3d1
    if-eqz v9, :cond_3ec

    if-nez v0, :cond_3ec

    const/4 v4, 0x0

    .line 4879
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4880
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4881
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 4880
    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v4, 0x1

    goto/16 :goto_293

    :cond_3ec
    const/4 v4, 0x1

    .line 4883
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto/16 :goto_293

    :cond_3f1
    const/4 v4, 0x1

    .line 4886
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_293

    .line 4887
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v12, :cond_293

    .line 4889
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_40c

    .line 4891
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_40c

    goto/16 :goto_293

    .line 4895
    :cond_40c
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_293

    .line 4897
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const/4 v0, 0x4

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v4, v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto/16 :goto_2a2

    :cond_41d
    if-eqz v4, :cond_45e

    .line 5030
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_435

    .line 5032
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_435

    .line 5033
    const-string v3, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    const/4 v6, 0x0

    goto :goto_3bf

    :cond_435
    move v6, v14

    goto :goto_3bf

    :cond_437
    const/4 v9, 0x3

    .line 4742
    invoke-virtual {v1, v2, v9}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-eqz v4, :cond_446

    .line 4747
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->moveFocusToAdjacentEmbeddedActivityIfNeeded()Z

    const/4 v4, 0x0

    .line 4748
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    goto :goto_45e

    :cond_446
    const/4 v4, 0x0

    .line 4750
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-nez v0, :cond_456

    .line 4751
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 4754
    :cond_456
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-eqz v0, :cond_45e

    move/from16 v16, v4

    goto/16 :goto_1be

    :cond_45e
    :goto_45e
    :pswitch_45e
    :sswitch_45e
    move v6, v7

    move/from16 v16, v14

    :goto_461
    if-eqz v5, :cond_469

    .line 5153
    const-string v0, "Virtual Key - Press"

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    :cond_469
    if-eqz v6, :cond_46e

    .line 5157
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_46e
    if-eqz v16, :cond_495

    const/4 v2, -0x1

    if-eq v13, v2, :cond_495

    .line 5163
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v13, v0, :cond_495

    .line 5171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to move non-focused display "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to top because a key is targeting it"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTopIfAllowed(I)V

    :cond_495
    return v16

    :pswitch_data_496
    .packed-switch 0x18
        :pswitch_2d3
        :pswitch_2d3
        :pswitch_2b3
    .end packed-switch

    :sswitch_data_4a0
    .sparse-switch
        0x4f -> :sswitch_391
        0x82 -> :sswitch_391
        0xa4 -> :sswitch_2d3
        0xab -> :sswitch_2a4
        0xb1 -> :sswitch_298
        0xdb -> :sswitch_264
        0xe7 -> :sswitch_249
        0x108 -> :sswitch_236
        0x114 -> :sswitch_228
        0x121 -> :sswitch_1be
        0x122 -> :sswitch_1be
        0x123 -> :sswitch_1be
        0x124 -> :sswitch_1be
        0x125 -> :sswitch_1be
        0x126 -> :sswitch_1be
        0x127 -> :sswitch_1be
        0x128 -> :sswitch_1be
        0x129 -> :sswitch_1be
        0x12a -> :sswitch_1be
        0x12b -> :sswitch_1be
        0x12c -> :sswitch_1be
        0x12d -> :sswitch_1be
        0x12e -> :sswitch_1be
        0x12f -> :sswitch_1be
        0x130 -> :sswitch_1be
        0x143 -> :sswitch_45e
        0x146 -> :sswitch_45e
        0x147 -> :sswitch_45e
        0x148 -> :sswitch_45e
        0x149 -> :sswitch_45e
        0x14a -> :sswitch_45e
        0x14b -> :sswitch_45e
        0x14c -> :sswitch_45e
        0x14d -> :sswitch_45e
        0x14e -> :sswitch_45e
        0x14f -> :sswitch_45e
        0x150 -> :sswitch_45e
        0x151 -> :sswitch_45e
    .end sparse-switch

    :pswitch_data_53a
    .packed-switch 0x55
        :pswitch_391
        :pswitch_391
        :pswitch_391
        :pswitch_391
        :pswitch_391
        :pswitch_391
        :pswitch_219
    .end packed-switch

    :pswitch_data_54c
    .packed-switch 0xde
        :pswitch_391
        :pswitch_1f8
        :pswitch_1f0
    .end packed-switch

    :pswitch_data_556
    .packed-switch 0x118
        :pswitch_1e7
        :pswitch_1e7
        :pswitch_1e7
        :pswitch_1e7
    .end packed-switch

    :pswitch_data_562
    .packed-switch 0x134
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
    .end packed-switch

    :pswitch_data_56e
    .packed-switch 0x139
        :pswitch_1be
        :pswitch_1be
        :pswitch_1be
        :pswitch_1be
    .end packed-switch

    :pswitch_data_57a
    .packed-switch 0x13f
        :pswitch_45e
        :pswitch_45e
        :pswitch_45e
    .end packed-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IIIJI)I
    .registers 16

    const/4 v0, 0x1

    and-int/2addr p6, v0

    const/4 v1, 0x0

    if-eqz p6, :cond_1c

    .line 5321
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const-wide/32 v3, 0xf4240

    div-long v4, p4, v3

    if-nez p3, :cond_10

    move v7, v0

    goto :goto_11

    :cond_10
    move v7, v1

    :goto_11
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    move v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromMotion(IJIZZ)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v0

    :cond_1c
    move v3, p1

    .line 5328
    :cond_1d
    invoke-virtual {p0, v3, v1}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result p0

    if-eqz p0, :cond_24

    return v0

    :cond_24
    return v1
.end method

.method public final interceptPowerKeyDown(Landroid/view/KeyEvent;ZZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/FlashlightKill;->onPowerKeyDown(Landroid/content/Context;)V

    .line 1096
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1097
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1100
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 1106
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1109
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_3b

    .line 1110
    :cond_28
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3b

    .line 1112
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_3b

    if-eqz p2, :cond_3b

    .line 1115
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v0, v1

    .line 1119
    :goto_3c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, p1}, Landroid/os/PowerManagerInternal;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1126
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v3, :cond_4f

    if-nez v0, :cond_4f

    if-nez v2, :cond_4f

    if-eqz p3, :cond_50

    :cond_4f
    const/4 v1, 0x1

    :cond_50
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1129
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez p3, :cond_60

    if-nez p2, :cond_76

    .line 1131
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchGesture:Z

    if-nez p2, :cond_76

    .line 1132
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    return-void

    .line 1137
    :cond_60
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->isKeyIntercepted(I)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 1138
    const-string p1, "WindowManager"

    const-string p2, "Skip power key gesture for other policy has handled it."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    :cond_76
    return-void
.end method

.method public final interceptPowerKeyUp(Landroid/view/KeyEvent;Z)V
    .registers 3

    .line 1146
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method public final interceptRingerToggleChord()V
    .registers 5

    .line 1869
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1870
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v2

    .line 1870
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 7

    .line 3572
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_60

    const/16 v1, 0xa4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_25

    const/16 v1, 0x108

    if-eq v0, v1, :cond_1a

    const/16 p1, 0x18

    if-eq v0, p1, :cond_25

    const/16 p1, 0x19

    if-eq v0, p1, :cond_25

    goto :goto_43

    .line 3598
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->prepareToSendSystemKeyToApplication(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v2

    .line 3603
    :cond_21
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    return v3

    .line 3580
    :cond_25
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez p1, :cond_5c

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz p1, :cond_2e

    goto :goto_5c

    .line 3590
    :cond_2e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 3591
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 3592
    invoke-virtual {p1}, Landroid/view/InputDevice;->isExternal()Z

    move-result p1

    if-nez p1, :cond_43

    return v3

    .line 3607
    :cond_43
    :goto_43
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3608
    invoke-virtual {p1, v1, v0, p2}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_54

    return v3

    .line 3612
    :cond_54
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_5b

    return v3

    :cond_5b
    return v2

    .line 3583
    :cond_5c
    :goto_5c
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    return v3

    .line 3576
    :cond_60
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .registers 4

    .line 5222
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 5223
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 5224
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 5225
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_22

    .line 5226
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :cond_22
    return-void
.end method

.method public interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .registers 4

    .line 4040
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x108

    if-ne p2, v0, :cond_10

    .line 4043
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleUnhandledSystemKey(Landroid/view/KeyEvent;)V

    .line 4044
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final isAutoUserSetupComplete()Z
    .registers 4

    .line 1936
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "android.car.SETUP_WIZARD_IN_PROGRESS"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v2
.end method

.method public isDeviceProvisioned()Z
    .registers 3

    .line 1919
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1920
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1919
    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v1
.end method

.method public final isFlashLightIsOn()Z
    .registers 3

    .line 2740
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flashlight_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v1
.end method

.method public isGlobalKey(I)Z
    .registers 2

    .line 6690
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(I)Z

    move-result p0

    return p0
.end method

.method public final isHidden(I)Z
    .registers 5

    .line 3387
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    return v0

    :cond_e
    if-ne p0, v1, :cond_11

    return v1

    :cond_11
    return v0

    :cond_12
    if-nez p0, :cond_15

    return v1

    :cond_15
    return v0
.end method

.method public final isKeyEventForCurrentUser(IILjava/lang/String;)Z
    .registers 4

    .line 7210
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    const/4 p3, 0x1

    if-nez p2, :cond_6

    return p3

    .line 7213
    :cond_6
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p1

    .line 7214
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-ne p1, p0, :cond_11

    return p3

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardDrawnLw()Z
    .registers 2

    .line 6160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6161
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6162
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 2

    .line 3425
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x7f8

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardLocked()Z
    .registers 1

    .line 6118
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p0

    return p0
.end method

.method public isKeyguardOccluded()Z
    .registers 1

    .line 6131
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 6132
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isOccluded()Z

    move-result p0

    return p0
.end method

.method public isKeyguardSecure(I)Z
    .registers 2

    .line 6124
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 6125
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .registers 1

    .line 6099
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 6100
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 3

    .line 6105
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 6106
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .registers 1

    .line 6111
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 6112
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result p0

    return p0
.end method

.method public final isMusicActive()Z
    .registers 2

    .line 4573
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_15

    .line 4575
    const-string p0, "WindowManager"

    const-string v0, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4578
    :cond_15
    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p0

    return p0
.end method

.method public final isReadyToSignalSleep(I)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 5581
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 5582
    invoke-virtual {v1, p1}, Landroid/os/PowerManagerInternal;->isDefaultGroupAdjacent(I)Z

    move-result p1

    if-nez p1, :cond_c

    return v0

    .line 5590
    :cond_c
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 5591
    invoke-virtual {p1}, Landroid/os/PowerManagerInternal;->isAnyDefaultAdjacentGroupInteractive()Z

    move-result p1

    .line 5592
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 5593
    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->isGroupInteractive(I)Z

    move-result p0

    if-nez p1, :cond_1e

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v0
.end method

.method public final isReadyToSignalWakeup(I)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 5647
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 5648
    invoke-virtual {v1, p1}, Landroid/os/PowerManagerInternal;->isDefaultGroupAdjacent(I)Z

    move-result p1

    if-nez p1, :cond_c

    return v0

    .line 5652
    :cond_c
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 5653
    invoke-virtual {p1}, Landroid/os/PowerManagerInternal;->isAnyDefaultAdjacentGroupInteractive()Z

    move-result p1

    .line 5654
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 5655
    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->isGroupInteractive(I)Z

    move-result p0

    if-nez p1, :cond_1e

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public final isRoundWindow()Z
    .registers 1

    .line 2269
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result p0

    return p0
.end method

.method public isScreenOn(I)Z
    .registers 2

    .line 6064
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayPolicy(I)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 6065
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isTvUserSetupComplete()Z
    .registers 4

    .line 1941
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "tv_user_setup_complete"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v2
.end method

.method public isUserSetupComplete()Z
    .registers 5

    .line 1925
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    .line 1927
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_1c

    .line 1928
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result p0

    :goto_1a
    and-int/2addr p0, v3

    return p0

    .line 1929
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-eqz v0, :cond_25

    .line 1930
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isAutoUserSetupComplete()Z

    move-result p0

    goto :goto_1a

    :cond_25
    return v3
.end method

.method public final isWakeKeyWhenScreenOff(I)Z
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_15

    packed-switch p1, :pswitch_data_1c

    packed-switch p1, :pswitch_data_2a

    const/4 p0, 0x1

    return p0

    .line 5309
    :pswitch_f
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    return p0

    .line 5297
    :pswitch_12
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    return p0

    .line 5300
    :cond_15
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    return p0

    .line 5303
    :cond_18
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x134
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public keyguardOn()Z
    .registers 2

    .line 3479
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$attemptToDreamOrAwakeFromShortPowerButtonPress$3()V
    .registers 7

    .line 1386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1387
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShortPressTurnOffTvHintToastTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_16

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTurnOffTvToastSuppressionDelay:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 1390
    :cond_16
    :goto_16
    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShortPressTurnOffTvHintToastTime:J

    .line 1391
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1393
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x104060a

    .line 1394
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    .line 1391
    invoke-static {v0, v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1396
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final synthetic lambda$handleKeyGestureEvent$7(I)V
    .registers 2

    .line 3705
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public final synthetic lambda$init$4()V
    .registers 2

    const/4 v0, 0x2

    .line 2429
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method public final synthetic lambda$powerPress$0(J)V
    .registers 4

    const/4 v0, 0x0

    .line 1233
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method public final synthetic lambda$powerPress$1(J)V
    .registers 4

    const/4 v0, 0x0

    .line 1275
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method public final synthetic lambda$powerPress$2(J)V
    .registers 4

    const/4 v0, 0x0

    .line 1284
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method public final synthetic lambda$updateSettings$5()V
    .registers 2

    const/4 v0, 0x0

    .line 3058
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    return-void
.end method

.method public final launchAllAppsAction()V
    .registers 6

    .line 2014
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 2029
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityManagerInternal()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_44

    const/16 v1, 0xe

    .line 2031
    invoke-virtual {v0, v1}, Lcom/android/server/AccessibilityManagerInternal;->performSystemAction(I)V

    goto :goto_44

    .line 2016
    :cond_15
    :goto_15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2017
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_3f

    .line 2018
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2019
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2020
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 2024
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2027
    :cond_3f
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2035
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method public final launchAssistAction(Ljava/lang/String;IIJI)V
    .registers 9

    .line 4200
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4201
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_54

    .line 4208
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x2

    if-eq p2, v1, :cond_19

    .line 4210
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    if-eqz p1, :cond_1f

    const/4 p2, 0x1

    .line 4213
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4215
    :cond_1f
    const-string p1, "android.intent.extra.TIME"

    invoke-virtual {v0, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4216
    const-string p1, "invocation_type"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x6

    .line 4218
    const-string p2, "android.intent.extra.ASSIST_DISPLAY_ID"

    if-ne p6, p1, :cond_36

    if-ltz p3, :cond_31

    goto :goto_32

    :cond_31
    const/4 p3, 0x0

    .line 4219
    :goto_32
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3b

    .line 4222
    :cond_36
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4226
    :goto_3b
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/SearchManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    if-eqz p1, :cond_4b

    .line 4228
    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    return-void

    .line 4231
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 4233
    invoke-interface {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public final launchAssistAction(Ljava/lang/String;IJI)V
    .registers 13

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    .line 4195
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IIJI)V

    return-void
.end method

.method public launchHomeFromHotKey(I)V
    .registers 3

    const/4 v0, 0x1

    .line 4382
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    return-void
.end method

.method public launchHomeFromHotKey(IZZ)V
    .registers 5

    if-eqz p3, :cond_22

    .line 4392
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p3

    if-eqz p3, :cond_9

    return-void

    .line 4397
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p3

    if-nez p3, :cond_22

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result p3

    if-eqz p3, :cond_22

    .line 4400
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual {p3, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void

    .line 4420
    :cond_22
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_3e

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    if-eqz p3, :cond_2d

    if-nez p1, :cond_3e

    .line 4423
    :cond_2d
    :try_start_2d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_34

    :catch_34
    if-eqz p2, :cond_39

    .line 4428
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_39
    const/4 p1, 0x0

    .line 4430
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    return-void

    .line 4433
    :cond_3e
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    return-void
.end method

.method public final launchTargetActivityOnMultiPressPower()V
    .registers 4

    .line 1477
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_5a

    .line 1478
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1479
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1480
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 1483
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_26

    .line 1484
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v2, 0x1

    :cond_26
    const/high16 v1, 0x10200000

    .line 1485
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v2, :cond_33

    .line 1488
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 1490
    :cond_33
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    return-void

    .line 1493
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not resolve activity with : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 1494
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " name."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1493
    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-void
.end method

.method public final launchTargetSearchActivity(I)V
    .registers 4

    .line 7148
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_f

    .line 7149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7150
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_16

    .line 7152
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_16
    const/high16 v1, 0x10200000

    .line 7154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7157
    :try_start_1b
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;I)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    .line 7159
    :catch_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not resolve activity with : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7160
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " name."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7159
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final launchVoiceAssist(Z)V
    .registers 4

    .line 4243
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    if-eqz v0, :cond_17

    .line 4244
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4251
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    return-void

    .line 4246
    :cond_17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public launchVoiceAssistWithWakeLock()V
    .registers 4

    .line 5476
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5479
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_32

    .line 5482
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DeviceIdleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceIdleManager;

    if-eqz v0, :cond_25

    .line 5484
    const-string/jumbo v1, "voice-search"

    invoke-virtual {v0, v1}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 5486
    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5487
    const-string v1, "android.speech.extras.EXTRA_SECURE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5489
    :goto_32
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5490
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5

    .line 6394
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6395
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_16

    .line 6399
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 6401
    :cond_16
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6402
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter p1

    const/4 v0, 0x1

    .line 6403
    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 6404
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final moveFocusedTaskToStageSplit(IZ)V
    .registers 3

    .line 4375
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4377
    invoke-interface {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToStageSplit(IZ)V

    :cond_9
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 8

    .line 4489
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v0, p3, :cond_5

    goto :goto_14

    .line 4492
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_14
    return-void

    .line 4496
    :cond_15
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    if-nez p3, :cond_45

    .line 4499
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_22

    const/4 v0, 0x0

    goto :goto_26

    .line 4500
    :cond_22
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_26
    if-eqz v0, :cond_30

    .line 4502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_37

    .line 4504
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4506
    :goto_37
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromCameraCover(J)Z

    .line 4507
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4509
    :cond_45
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public final notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 3508
    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 3509
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    .line 3508
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/input/InputManagerInternal;->notifyKeyGestureCompleted(I[III)V

    return-void
.end method

.method public final notifyKeyGestureCompletedOnActionDown(Landroid/view/KeyEvent;I)V
    .registers 4

    .line 3497
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3500
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public final notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V
    .registers 5

    .line 3489
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    return-void

    .line 3492
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 4

    .line 4471
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p1

    if-ne p3, p1, :cond_9

    goto :goto_2f

    .line 4475
    :cond_9
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 4476
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 p1, 0x1

    .line 4477
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_1d

    .line 4480
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {p0}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromLid()Z

    return-void

    .line 4481
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result p2

    if-eq p2, p1, :cond_2f

    .line 4482
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getUptimeMillis()J

    move-result-wide p2

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public okToAnimate(Z)Z
    .registers 2

    if-nez p1, :cond_8

    .line 6078
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_8
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2

    .line 4119
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_f

    if-eqz p1, :cond_b

    .line 4121
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 4120
    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->onDefaultDisplayFocusChanged(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onDisplaySwitchStart(I)V
    .registers 2

    if-nez p1, :cond_7

    .line 5875
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchStart()V

    :cond_7
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .registers 3

    .line 4135
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 4136
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const/4 p1, 0x1

    .line 4137
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    :cond_9
    return-void
.end method

.method public onSystemUiStarted()V
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    return-void
.end method

.method public final performHapticFeedback(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 6679
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;I)V

    return-void
.end method

.method public final performHapticFeedback(ILjava/lang/String;I)V
    .registers 10

    .line 6684
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->performHapticFeedback(IILjava/lang/String;II)V

    return-void
.end method

.method public performStemPrimaryDoublePressSwitchToRecentTask()V
    .registers 4

    .line 1793
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    if-nez v0, :cond_8

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    return-void

    .line 1815
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 1817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from recents"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final powerLongPress(J)V
    .registers 12

    .line 1528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isFlashLightIsOn()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1529
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchGesture:Z

    if-eqz v0, :cond_1e

    .line 1530
    const-string p1, "Power - Long Press - Torch"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleCameraFlash()V

    return-void

    .line 1535
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-nez v0, :cond_28

    .line 1536
    const-string p0, "Not support long press power when device is not interactive."

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1540
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "powerLongPress: eventTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mLongPressOnPowerBehavior="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2713

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_9e

    goto :goto_7d

    .line 1585
    :pswitch_52
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1586
    const-string v0, "Power - Long Press - Go To Sleep (Doze)"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1588
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void

    .line 1575
    :pswitch_5d
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/4 v5, -0x2

    const/4 v8, 0x6

    const/4 v4, 0x0

    move-object v3, p0

    move-wide v6, p1

    .line 1581
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    return-void

    .line 1566
    :pswitch_68
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1567
    const-string p1, "Power - Long Press - Go To Voice Assist"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1572
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    return-void

    .line 1554
    :pswitch_75
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1557
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_7e

    :goto_7d
    return-void

    .line 1560
    :cond_7e
    const-string p1, "Power - Long Press - Shut Off"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1562
    const-string p1, "globalactions"

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1563
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 p1, 0x2

    if-ne v0, p1, :cond_8e

    move v2, v3

    :cond_8e
    invoke-interface {p0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    return-void

    .line 1547
    :pswitch_92
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1548
    const-string p1, "Power - Long Press - Global Actions"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1550
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_92
        :pswitch_75
        :pswitch_75
        :pswitch_68
        :pswitch_5d
        :pswitch_52
    .end packed-switch
.end method

.method public final powerMultiPressAction(JZI)V
    .registers 6

    const/4 v0, 0x2

    if-eq p4, v0, :cond_b

    const/4 p1, 0x3

    if-eq p4, p1, :cond_7

    return-void

    .line 1468
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchTargetActivityOnMultiPressPower()V

    return-void

    .line 1461
    :cond_b
    const-string p4, "WindowManager"

    const-string v0, "Starting brightness boost."

    invoke-static {p4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1a

    const/16 p3, 0x1a

    const/4 p4, 0x0

    .line 1463
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    .line 1465
    :cond_1a
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    return-void
.end method

.method public powerPress(JII)V
    .registers 11

    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    .line 1162
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v1}, Lcom/android/server/policy/SideFpsEventHandler;->notifyPowerPressed()V

    .line 1164
    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v1

    const-string v2, "WindowManager"

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1165
    const-string p0, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1170
    :cond_20
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 1171
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v3

    .line 1173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "powerPress: eventTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " interactive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mShortPressOnPowerBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-ne p3, v4, :cond_64

    .line 1185
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    return-void

    :cond_64
    const/4 v4, 0x3

    if-ne p3, v4, :cond_6d

    .line 1187
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    return-void

    :cond_6d
    if-le p3, v4, :cond_8a

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v4

    if-gt p3, v4, :cond_8a

    .line 1189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No behavior defined for power press count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8a
    const/4 v2, 0x0

    if-ne p3, v0, :cond_157

    .line 1190
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldHandleShortPressPowerAction(ZJ)Z

    move-result p3

    if-eqz p3, :cond_157

    .line 1191
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    packed-switch p3, :pswitch_data_164

    goto/16 :goto_162

    .line 1280
    :pswitch_9a
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    invoke-virtual {p0, v0, v0, p3}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    return-void

    .line 1244
    :pswitch_a3
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1245
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "glanceable_hub_enabled"

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 1244
    invoke-static {p3, p4, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    if-ne p3, v0, :cond_b5

    move p3, v0

    goto :goto_b6

    :cond_b5
    move p3, v2

    .line 1248
    :goto_b6
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object p4

    if-nez p4, :cond_be

    goto/16 :goto_162

    .line 1253
    :cond_be
    invoke-virtual {p4}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-nez v1, :cond_fe

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_cb

    goto :goto_fe

    .line 1261
    :cond_cb
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    .line 1263
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_f5

    if-eqz p3, :cond_f5

    if-nez v1, :cond_f5

    .line 1264
    invoke-virtual {p4}, Landroid/service/dreams/DreamManagerInternal;->dreamConditionActive()Z

    move-result p3

    if-eqz p3, :cond_f5

    .line 1266
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1267
    const-string p2, "extra_trigger_hub"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1268
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    .line 1271
    :cond_f5
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    invoke-virtual {p0, v0, v2, p3}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    return-void

    .line 1255
    :cond_fe
    :goto_fe
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void

    .line 1229
    :pswitch_102
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    invoke-virtual {p0, v0, v2, p3}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    return-void

    .line 1220
    :pswitch_10b
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p3, :cond_12b

    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result p3

    if-eqz p3, :cond_12b

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 1221
    invoke-virtual {p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result p3

    if-eqz p3, :cond_12b

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p3

    if-eqz p3, :cond_126

    goto :goto_12b

    :cond_126
    const/4 p1, 0x0

    .line 1224
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    .line 1222
    :cond_12b
    :goto_12b
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void

    .line 1211
    :pswitch_12f
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz p1, :cond_13d

    .line 1212
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V

    return-void

    .line 1215
    :cond_13d
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    return-void

    .line 1208
    :pswitch_141
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    return-void

    .line 1202
    :pswitch_145
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    move-result p1

    if-eqz p1, :cond_162

    .line 1204
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    return-void

    .line 1198
    :pswitch_14f
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void

    .line 1195
    :pswitch_153
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void

    .line 1288
    :cond_157
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchGesture:Z

    if-eqz p3, :cond_162

    if-eqz v3, :cond_162

    const/16 p3, 0x1a

    .line 1289
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    :cond_162
    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_153
        :pswitch_14f
        :pswitch_145
        :pswitch_141
        :pswitch_12f
        :pswitch_10b
        :pswitch_102
        :pswitch_a3
        :pswitch_9a
    .end packed-switch
.end method

.method public final powerVeryLongPress()V
    .registers 3

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "powerVeryLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    return-void

    .line 1599
    :cond_1f
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/16 v0, 0x2713

    .line 1600
    const-string v1, "Power - Very Long Press - Show Global Actions"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1602
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    return-void
.end method

.method public final preloadRecentApps()V
    .registers 2

    const/4 v0, 0x1

    .line 4305
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4306
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4308
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    :cond_c
    return-void
.end method

.method public final prepareToSendSystemKeyToApplication(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 8

    .line 3894
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 3895
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 3896
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Illegal keycode provided to prepareToSendSystemKeyToApplication: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3899
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3896
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3902
    :cond_26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_50

    .line 3903
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_50

    .line 3905
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 3906
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 3907
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 3908
    invoke-virtual {v1, v4, p1}, Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;->canAppOverrideSystemKey(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_48

    return v3

    .line 3917
    :cond_48
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    return v2

    .line 3924
    :cond_50
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_69

    .line 3925
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_69

    move v2, v3

    :cond_69
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public final readCameraLensCoverState()V
    .registers 2

    .line 3383
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public final readConfigurationDependentBehaviors()V
    .registers 5

    .line 3026
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d6

    .line 3028
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_15

    const/4 v3, 0x3

    if-le v1, v3, :cond_17

    .line 3032
    :cond_15
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_17
    const v1, 0x10e00a0

    .line 3035
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_25

    const/4 v1, 0x2

    if-le v0, v1, :cond_27

    .line 3039
    :cond_25
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 3042
    :cond_27
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 3043
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    .line 3044
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    :cond_36
    return-void
.end method

.method public readLidState()V
    .registers 2

    .line 3379
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2

    .line 4090
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_7

    .line 4091
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    :cond_7
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 5

    .line 4128
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4129
    :try_start_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerInternal;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 4130
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final reportScreenStateToVrManager(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public final reportScreenTurnedOnToWallpaper(I)V
    .registers 2

    .line 5902
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 5904
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onScreenTurnedOn(I)V

    :cond_9
    return-void
.end method

.method public final reportScreenTurningOnToWallpaper(I)V
    .registers 2

    .line 5895
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 5897
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onScreenTurningOn(I)V

    :cond_9
    return-void
.end method

.method public requestBugreportForTv()V
    .registers 3

    .line 3996
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result p0

    if-nez p0, :cond_11

    .line 3997
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    return-void

    :catch_12
    move-exception p0

    .line 4000
    const-string v0, "WindowManager"

    const-string v1, "Error taking bugreport"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final scheduleLongPressKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 11

    .line 5276
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 5277
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v7, 0x0

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 5278
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x1c

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 5279
    invoke-virtual {p1, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5280
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public screenTurnedOff(IZ)V
    .registers 4

    if-nez p1, :cond_2d

    const/4 p1, 0x0

    if-eqz p2, :cond_c

    .line 5859
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleep:Z

    if-eqz p2, :cond_a

    goto :goto_c

    :cond_a
    move p2, p1

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p2, 0x1

    .line 5860
    :goto_d
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 5861
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff(Z)V

    .line 5862
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5863
    :try_start_17
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_21

    .line 5864
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_2b

    .line 5866
    :cond_21
    :goto_21
    monitor-exit p2
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_1f

    .line 5867
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5868
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    return-void

    .line 5866
    :goto_2b
    :try_start_2b
    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1f

    throw p0

    :cond_2d
    return-void
.end method

.method public screenTurnedOn(I)V
    .registers 3

    .line 5951
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenTurnedOnToWallpaper(I)V

    if-eqz p1, :cond_6

    return-void

    .line 5957
    :cond_6
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5958
    :try_start_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_13

    .line 5959
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1e

    .line 5961
    :cond_13
    :goto_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_11

    .line 5962
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOn()V

    const/4 p1, 0x1

    .line 5963
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    return-void

    .line 5961
    :goto_1e
    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_11

    throw p0
.end method

.method public screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4

    .line 5968
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    if-eqz p1, :cond_8

    return-void

    :cond_8
    const/4 p1, 0x1

    .line 5973
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 5974
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5975
    :try_start_e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_18

    .line 5976
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 5978
    :cond_18
    :goto_18
    monitor-exit p1

    return-void

    :goto_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 7

    .line 5913
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenTurningOnToWallpaper(I)V

    const-wide/16 v0, 0x20

    const/4 v2, 0x0

    if-nez p1, :cond_4b

    .line 5915
    const-string/jumbo p1, "screenTurningOn"

    invoke-static {v0, v1, p1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5917
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5918
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    .line 5920
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5921
    :try_start_18
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 5922
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5923
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 5924
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v0

    .line 5923
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5925
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->isDisplaySwitching()Z

    move-result p1

    .line 5928
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(ILcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_47

    :catchall_3f
    move-exception p0

    goto :goto_49

    .line 5932
    :cond_41
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5934
    :goto_47
    monitor-exit v3

    return-void

    :goto_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_3f

    throw p0

    .line 5936
    :cond_4b
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5938
    const-string/jumbo p2, "waitForAllWindowsDrawn"

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5940
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p0, v0, v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    return-void
.end method

.method public sendCloseSystemWindows()V
    .registers 2

    .line 6174
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 2

    .line 6178
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final sendSwitchKeyboardLayout(ILandroid/os/IBinder;I)V
    .registers 6

    .line 4071
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;-><init>(ILandroid/os/IBinder;ILcom/android/server/policy/PhoneWindowManager-IA;)V

    .line 4073
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendSystemKeyToStatusBar(Landroid/view/KeyEvent;)V
    .registers 5

    .line 5236
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string v2, "handleSystemKey"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1a

    .line 5239
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 5242
    :try_start_17
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method public final sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V
    .registers 4

    .line 5254
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 5255
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5256
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAllowLockscreenWhenOn(IZ)V
    .registers 5

    .line 6412
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 6413
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    if-eqz p2, :cond_1b

    .line 6417
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 6419
    :cond_1b
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6421
    :goto_24
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    return-void
.end method

.method public setCurrentUserLw(I)V
    .registers 3

    .line 6719
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6720
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 6721
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 6723
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 6725
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    .line 6727
    :cond_12
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->setCurrentUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 3

    .line 2274
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 2275
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2276
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method public final setDeferredKeyActionsExecutableAsync(IJ)V
    .registers 5

    .line 3931
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1b

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 3932
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 3933
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3934
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3935
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2

    .line 6714
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    return-void
.end method

.method public final setKeyguardOccludedLw(Z)Z
    .registers 4

    const/4 v0, 0x0

    .line 4460
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 4461
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 4462
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4463
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    return p0
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .registers 2

    .line 4449
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 4104
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_7

    .line 4105
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public final setPendingSleepingGroup(I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_27

    .line 5623
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingSleepingGroup:I

    if-eq v1, v0, :cond_27

    .line 5625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected pending sleeping group. Requested Group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Current Sleeping group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingSleepingGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    :cond_27
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingSleepingGroup:I

    return-void
.end method

.method public final setPendingWakingUpGroup(I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_27

    .line 5632
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeupGroup:I

    if-eq v1, v0, :cond_27

    .line 5634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected pending wakeup group. Requested Group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Current Waking up group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeupGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    :cond_27
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeupGroup:I

    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .registers 2

    .line 4444
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .registers 2

    .line 4439
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    return-void
.end method

.method public setSafeMode(Z)V
    .registers 4

    .line 6183
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz p1, :cond_c

    .line 6185
    const-string p1, "Safe Mode Enabled"

    const/4 v0, 0x2

    const/16 v1, 0x2711

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 3

    .line 6732
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    if-eqz p1, :cond_a

    .line 6734
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    :cond_a
    return-void
.end method

.method public setTopFocusedDisplay(I)V
    .registers 2

    .line 4085
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return-void
.end method

.method public final shortPressPowerGoHome()V
    .registers 3

    .line 1440
    new-instance v0, Landroid/hardware/input/KeyGestureEvent$Builder;

    invoke-direct {v0}, Landroid/hardware/input/KeyGestureEvent$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1442
    invoke-virtual {v0, v1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeyGestureType(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 1443
    invoke-virtual {v0, v1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setAction(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 1444
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setDisplayId(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object v0

    const/16 v1, 0x1a

    filled-new-array {v1}, [I

    move-result-object v1

    .line 1445
    invoke-virtual {v0, v1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeycodes([I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1446
    invoke-virtual {v0, v1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setModifierState(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->build()Landroid/hardware/input/KeyGestureEvent;

    move-result-object v0

    .line 1448
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerInternal;->handleKeyGestureInKeyGestureController(Landroid/hardware/input/KeyGestureEvent;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1452
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    :cond_3c
    return-void
.end method

.method public final shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z
    .registers 1

    .line 5423
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    return p0
.end method

.method public final shouldDispatchInputWhenNonInteractive(II)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    :goto_b
    if-eqz v2, :cond_10

    .line 5340
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_16

    .line 5341
    :cond_10
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    :goto_16
    if-eqz p1, :cond_4f

    .line 5343
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    if-ne p1, v0, :cond_1f

    goto :goto_4f

    .line 5349
    :cond_1f
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 5352
    :try_start_25
    invoke-interface {p1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result p1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_2d

    if-eqz p1, :cond_35

    move p1, v0

    goto :goto_36

    :catch_2d
    move-exception p1

    .line 5356
    const-string v3, "WindowManager"

    const-string v4, "RemoteException when checking if dreaming"

    invoke-static {v3, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    move p1, v1

    :goto_36
    if-eqz p1, :cond_43

    .line 5359
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolBtnMusicControls:Z

    if-eqz v3, :cond_43

    invoke-static {p2}, Lcom/android/server/policy/PhoneWindowManager;->isVolumeKey(I)Z

    move-result p2

    if-eqz p2, :cond_43

    return v1

    .line 5366
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-eqz p0, :cond_4a

    return v0

    :cond_4a
    if-eqz v2, :cond_4f

    if-eqz p1, :cond_4f

    return v0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public final shouldEnableWakeGestureLp()Z
    .registers 3

    .line 3247
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-nez v0, :cond_24

    .line 3248
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 3249
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_24

    :cond_1b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 3250
    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_24

    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldFinishSleeping(I)Z
    .registers 2

    .line 5611
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingSleepingGroup:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldFinishWakingUp(I)Z
    .registers 2

    .line 5619
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeupGroup:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldHandleShortPressPowerAction(ZJ)Z
    .registers 8

    .line 1294
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-eqz v0, :cond_3b

    .line 1295
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    invoke-static {p1}, Landroid/view/Display;->isOnState(I)Z

    move-result p1

    .line 1296
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromDefaultDisplayOn()Z

    move-result p0

    if-eqz p1, :cond_1e

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v1

    .line 1299
    :cond_1e
    :goto_1e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring short press of power button because the default display is not on. defaultDisplayOn="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", beganFromDefaultDisplayOn="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1310
    :cond_3b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v0

    if-eqz p1, :cond_55

    if-eqz v0, :cond_46

    goto :goto_55

    .line 1321
    :cond_46
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/SideFpsEventHandler;->shouldConsumeSinglePress(J)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 1322
    const-string p0, "Suppressing power key because the user is interacting with the fingerprint sensor"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_54
    return v1

    .line 1312
    :cond_55
    :goto_55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring short press of power button because the device is not interactive. interactive="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", beganFromNonInteractive="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final shouldWakeUpWithHomeIntent()Z
    .registers 7

    .line 5795
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    return v1

    .line 5799
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 5800
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    iget-wide v2, v0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    .line 5805
    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    cmp-long p0, v2, v4

    if-lez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 4

    .line 6290
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDismissibleKeyguard()V
    .registers 1

    .line 4183
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showDismissibleKeyguard()V

    return-void
.end method

.method public showGlobalActions()V
    .registers 3

    .line 1895
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1896
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showGlobalActionsInternal()V
    .registers 4

    .line 1900
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1901
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsOnLockEnable:Z

    if-nez v1, :cond_13

    return-void

    .line 1905
    :cond_13
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v1, :cond_21

    .line 1906
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1908
    :cond_21
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 1911
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getUptimeMillis()J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public final showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .registers 3

    .line 2056
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2057
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 2058
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2059
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final showPictureInPictureMenuInternal()V
    .registers 1

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2065
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    :cond_9
    return-void
.end method

.method public final showRecentApps(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 4344
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4345
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 4347
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    .line 4349
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method public final showSystemSettings(I)V
    .registers 4

    .line 2050
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;I)V

    return-void
.end method

.method public final sleepDefaultDisplayFromPowerButton(JI)Z
    .registers 13

    .line 1415
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_55

    .line 1416
    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-eq v2, v1, :cond_19

    const/16 v3, 0x10

    if-eq v2, v3, :cond_19

    const/16 v3, 0x11

    if-eq v2, v3, :cond_19

    const/16 v3, 0xf

    if-ne v2, v3, :cond_55

    .line 1420
    :cond_19
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInjector:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getUptimeMillis()J

    move-result-wide v2

    .line 1421
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v4, :cond_55

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v4, v2, v5

    if-gez v4, :cond_55

    .line 1423
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Sleep from power button suppressed. Time since gesture: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    sub-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms. Gesture: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    .line 1425
    invoke-static {p1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1423
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1430
    :cond_55
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    const/4 p0, 0x1

    return p0
.end method

.method public final sleepPress()V
    .registers 3

    .line 1620
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    .line 1621
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    :cond_9
    return-void
.end method

.method public final sleepRelease(J)V
    .registers 6

    .line 1627
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1c

    .line 1628
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1629
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1630
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1631
    const-string/jumbo p0, "sleepRelease() silence ringer"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1636
    :cond_1c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    if-eq v0, v2, :cond_24

    return-void

    .line 1639
    :cond_24
    const-string/jumbo v0, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1640
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    const/4 v0, -0x1

    .line 4261
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;I)V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;I)V
    .registers 5

    const/4 v0, 0x0

    .line 4265
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;IZ)V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;IZ)V
    .registers 6

    .line 4275
    const-string v0, "WindowManager"

    if-nez p4, :cond_20

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_20

    .line 4281
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not starting activity because user setup is in progress: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4276
    :cond_20
    :goto_20
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    .line 4277
    invoke-virtual {p4, p3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 4278
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p1, p4, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4279
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_33} :catch_34

    return-void

    .line 4284
    :catch_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not launching app because the activity to launch intent: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .registers 5

    const/4 v0, -0x1

    .line 4269
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;IZ)V

    return-void
.end method

.method public startDockOrHome(IZZ)V
    .registers 5

    .line 6621
    const-string/jumbo v0, "startDockOrHome"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    return-void
.end method

.method public startDockOrHome(IZZLjava/lang/String;)V
    .registers 11

    .line 6569
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    .line 6571
    :catch_7
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    if-eqz p3, :cond_11

    .line 6574
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 6577
    :cond_11
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-nez p3, :cond_23

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p3

    if-nez p3, :cond_23

    .line 6578
    const-string p0, "WindowManager"

    const-string p1, "Not going home because user setup is in progress."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6583
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_36

    if-eqz p2, :cond_30

    .line 6587
    :try_start_2b
    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6589
    :cond_30
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;I)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_35} :catch_36

    goto :goto_86

    .line 6599
    :catch_36
    :cond_36
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p3, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_46

    .line 6600
    iget p3, p3, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_46

    move p3, v0

    goto :goto_47

    :cond_46
    const/4 p3, 0x0

    .line 6601
    :goto_47
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_LAUNCHER_HANDLE_GO_HOME_KEYBOARD_SHORTCUT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_77

    if-eqz p3, :cond_77

    .line 6604
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    new-instance p2, Landroid/hardware/input/KeyGestureEvent$Builder;

    invoke-direct {p2}, Landroid/hardware/input/KeyGestureEvent$Builder;-><init>()V

    const/16 p3, 0x54

    .line 6606
    invoke-virtual {p2, p3}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeyGestureType(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p2

    const/4 p3, 0x3

    filled-new-array {p3}, [I

    move-result-object p3

    .line 6608
    invoke-virtual {p2, p3}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeycodes([I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p2

    .line 6609
    invoke-virtual {p2, p1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setDisplayId(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 6610
    invoke-virtual {p1, v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->setAction(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 6611
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent$Builder;->build()Landroid/hardware/input/KeyGestureEvent;

    move-result-object p1

    .line 6604
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerInternal;->handleKeyGestureInKeyGestureController(Landroid/hardware/input/KeyGestureEvent;)V

    goto :goto_86

    .line 6613
    :cond_77
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v1

    .line 6615
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v4, 0x1

    move v3, p1

    move v5, p2

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    :goto_86
    return-void
.end method

.method public startKeyguardExitAnimation(J)V
    .registers 3

    .line 6167
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_7

    .line 6169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(J)V

    :cond_7
    return-void
.end method

.method public startedGoingToSleep(II)V
    .registers 4

    .line 5663
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isReadyToSignalSleep(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 5674
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 5675
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleep:Z

    .line 5676
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setPendingSleepingGroup(I)V

    .line 5678
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_16

    .line 5683
    invoke-virtual {p0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    :cond_16
    return-void
.end method

.method public startedGoingToSleepGlobal(I)V
    .registers 2

    const/4 p1, 0x1

    .line 5566
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    return-void
.end method

.method public startedWakingUp(II)V
    .registers 5

    .line 5744
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isReadyToSignalWakeup(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 5748
    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    const/4 v1, 0x0

    .line 5750
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleep:Z

    .line 5751
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setPendingWakingUpGroup(I)V

    .line 5752
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5758
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5759
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5760
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5761
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_31

    .line 5762
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5764
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_2e

    .line 5765
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    invoke-virtual {p1, p2, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp(IZ)V

    .line 5768
    :cond_2e
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    return-void

    :catchall_31
    move-exception p0

    .line 5761
    :try_start_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public startedWakingUpGlobal(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public final stemPrimaryDoublePressAction(I)V
    .registers 4

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryDoublePressAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_47

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    goto :goto_55

    .line 1745
    :cond_1f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    new-instance p1, Landroid/hardware/input/KeyGestureEvent$Builder;

    invoke-direct {p1}, Landroid/hardware/input/KeyGestureEvent$Builder;-><init>()V

    const/16 v0, 0x32

    .line 1747
    invoke-virtual {p1, v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeyGestureType(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 1749
    invoke-virtual {p1, v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->setDeviceId(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    const/16 v0, 0x108

    filled-new-array {v0}, [I

    move-result-object v0

    .line 1750
    invoke-virtual {p1, v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeycodes([I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 1751
    invoke-virtual {p1, v1}, Landroid/hardware/input/KeyGestureEvent$Builder;->setModifierState(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 1752
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent$Builder;->build()Landroid/hardware/input/KeyGestureEvent;

    move-result-object p1

    .line 1745
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerInternal;->handleKeyGestureInKeyGestureController(Landroid/hardware/input/KeyGestureEvent;)V

    return-void

    .line 1737
    :cond_47
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p1, :cond_4c

    goto :goto_50

    .line 1739
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    :goto_50
    if-nez v1, :cond_55

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->performStemPrimaryDoublePressSwitchToRecentTask()V

    :cond_55
    :goto_55
    return-void
.end method

.method public final stemPrimaryLongPress(J)V
    .registers 11

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    return-void

    :cond_1f
    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    .line 1780
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    return-void
.end method

.method public final stemPrimaryPress(I)V
    .registers 4

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    .line 1673
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryTriplePressAction(I)V

    return-void

    :cond_20
    const/4 v0, 0x2

    if-ne p1, v0, :cond_29

    .line 1675
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryDoublePressAction(I)V

    return-void

    :cond_29
    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 1677
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimarySinglePressAction(I)V

    :cond_31
    return-void
.end method

.method public final stemPrimarySinglePressAction(I)V
    .registers 5

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimarySinglePressAction: behavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1a

    goto :goto_38

    .line 1685
    :cond_1a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1688
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/16 p1, 0x108

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemKeyPressed(I)V

    .line 1689
    const-string/jumbo p0, "stemPrimarySinglePressAction: skip due to keyguard"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const/4 v0, 0x1

    if-eq p1, v0, :cond_86

    const/4 v0, 0x2

    if-eq p1, v0, :cond_39

    :goto_38
    return-void

    .line 1702
    :cond_39
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_80

    .line 1703
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1704
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1705
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1706
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 1707
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_60

    const v0, 0x10204000

    .line 1709
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1713
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 1715
    :cond_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not resolve activity with : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 1718
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " name."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1715
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1722
    :cond_80
    const-string p0, "mPrimaryShortPressTargetActivity must not be null and correctly specified"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1694
    :cond_86
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.ALL_APPS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10200000

    .line 1695
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1698
    const-string/jumbo v0, "recentapps"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1699
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final stemPrimaryTriplePressAction(I)V
    .registers 4

    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryTriplePressAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    goto :goto_31

    .line 1763
    :cond_1b
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Lcom/android/server/policy/TalkbackShortcutController;->toggleTalkback(I)Z

    .line 1764
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {p1}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result p1

    if-eqz p1, :cond_31

    const/16 p1, 0x10

    .line 1765
    const-string v0, "Stem primary - Triple Press - Toggle Accessibility"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public systemBooted()V
    .registers 5

    .line 6251
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 6252
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6253
    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 6254
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v2, :cond_15

    .line 6255
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_56

    .line 6257
    :cond_15
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_13

    .line 6258
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/SideFpsEventHandler;->onFingerprintSensorReady()V

    const/4 v0, 0x0

    .line 6259
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(II)V

    .line 6260
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(II)V

    .line 6262
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_31

    move v2, v1

    goto :goto_32

    :cond_31
    move v2, v0

    .line 6264
    :goto_32
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v3

    if-eqz v3, :cond_3c

    move v3, v1

    goto :goto_3d

    :cond_3c
    move v3, v0

    :goto_3d
    if-nez v2, :cond_49

    if-eqz v3, :cond_42

    goto :goto_49

    .line 6273
    :cond_42
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    const/4 v1, 0x0

    .line 6274
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V

    return-void

    .line 6268
    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 6269
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    return-void

    .line 6257
    :goto_56
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_13

    throw p0
.end method

.method public systemReady()V
    .registers 3

    .line 6212
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 6214
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 6219
    const-class v0, Lcom/android/server/DockObserverInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DockObserverInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockObserverInternal:Lcom/android/server/DockObserverInternal;

    if-eqz v0, :cond_23

    .line 6222
    invoke-virtual {v0}, Lcom/android/server/DockObserverInternal;->getActualDockState()I

    move-result v0

    .line 6223
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    .line 6226
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasAlertSlider:Z

    if-eqz v0, :cond_36

    .line 6227
    new-instance v0, Lcom/android/server/policy/AlertSliderObserver;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/AlertSliderObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAlertSliderObserver:Lcom/android/server/policy/AlertSliderObserver;

    const v1, 0x1040153

    .line 6228
    invoke-virtual {v0, v1}, Lcom/android/server/policy/AlertSliderObserver;->startObserving(I)V

    .line 6231
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 6232
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 6233
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 6234
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6235
    :try_start_45
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 6236
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    .line 6239
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_58

    .line 6240
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    goto :goto_58

    :catchall_56
    move-exception p0

    goto :goto_6e

    .line 6242
    :cond_58
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_56

    .line 6244
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 6245
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    return-void

    .line 6242
    :goto_6e
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_56

    throw p0
.end method

.method public final takeScreenshot(I)V
    .registers 4

    .line 7227
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public toggleCameraFlash()V
    .registers 3

    .line 2745
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2748
    :try_start_6
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleCameraFlash()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 2750
    const-string v0, "WindowManager"

    const-string v1, "Unable to toggle camera flash:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public final toggleKeyboardShortcutsMenu(I)V
    .registers 2

    .line 4353
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4355
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    :cond_9
    return-void
.end method

.method public final toggleMicrophoneMuteFromKey()V
    .registers 7

    .line 3952
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3955
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, v1, v1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    .line 3959
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    xor-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    if-eqz v0, :cond_1f

    const v0, 0x104068e

    goto :goto_22

    :cond_1f
    const v0, 0x104068d

    .line 3969
    :goto_22
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3971
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3972
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 3969
    invoke-static {v1, v2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 3974
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3a
    return-void
.end method

.method public final toggleNotificationPanel()V
    .registers 2

    .line 2039
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 2040
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p0

    if-eqz p0, :cond_f

    if-eqz v0, :cond_f

    .line 2042
    :try_start_c
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public final toggleRecentApps()V
    .registers 2

    const/4 v0, 0x0

    .line 4330
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4331
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4333
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    :cond_c
    return-void
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2

    .line 4097
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_7

    .line 4098
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    :cond_7
    return-void
.end method

.method public final updateKidsModeSettings(Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 3210
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1110246

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_25

    .line 3211
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 p1, 0x8

    filled-new-array {v0, p1}, [I

    move-result-object p1

    const/4 v0, 0x6

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    return-void

    .line 3218
    :cond_25
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    return-void

    .line 3223
    :cond_2b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    return-void
.end method

.method public final updateLockScreenTimeout()V
    .registers 7

    .line 6425
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 6426
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    if-eqz v1, :cond_12

    .line 6427
    const-string p0, "WindowManager"

    const-string v1, "lockNow pending, ignore updating lockscreen timeout"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6428
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_54

    .line 6430
    :cond_12
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6431
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_30

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6432
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    .line 6433
    :goto_31
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_52

    if-eqz v1, :cond_49

    .line 6436
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6437
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    .line 6440
    :cond_49
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6442
    :goto_50
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 6444
    :cond_52
    monitor-exit v0

    return-void

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_10

    throw p0
.end method

.method public updateRotation(Z)V
    .registers 3

    .line 6499
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->updateRotation(ZZ)V

    return-void
.end method

.method public final updateSettings()V
    .registers 2

    const/4 v0, 0x0

    .line 3049
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    return-void
.end method

.method public updateSettings(Landroid/os/Handler;)V
    .registers 11

    if-eqz p1, :cond_b

    .line 3058
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3061
    :cond_b
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 3065
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3066
    :try_start_14
    const-string v1, "end_button_behavior"

    const/4 v2, 0x2

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 3070
    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 3074
    const-string v1, "incall_back_button_behavior"

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 3078
    const-string/jumbo v1, "system_navigation_keys_enabled"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_3b

    move v1, v2

    goto :goto_3c

    :cond_3b
    move v1, v4

    :goto_3c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 3081
    const-string/jumbo v1, "volume_hush_gesture"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 3084
    const-string/jumbo v1, "power_button_suppression_delay_after_gesture_wake"

    const/16 v5, 0x320

    invoke-static {p1, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 3087
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x11102ca

    .line 3088
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_67

    .line 3089
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    goto :goto_67

    :catchall_64
    move-exception p0

    goto/16 :goto_212

    .line 3093
    :cond_67
    :goto_67
    const-string/jumbo v1, "three_finger_gesture"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_72

    move v1, v2

    goto :goto_73

    :cond_72
    move v1, v4

    .line 3095
    :goto_73
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->enableSwipeThreeFingerGesture(Z)V

    .line 3098
    const-string/jumbo v1, "wake_gesture_enabled"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_81

    move v1, v2

    goto :goto_82

    :cond_81
    move v1, v4

    .line 3101
    :goto_82
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v5, v1, :cond_8b

    .line 3102
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 3103
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 3107
    :cond_8b
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 3109
    const-string v1, "default_input_method"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 3111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a4

    move v1, v2

    goto :goto_a5

    :cond_a4
    move v1, v4

    .line 3112
    :goto_a5
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v5, v1, :cond_ad

    .line 3113
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    move v1, v2

    goto :goto_ae

    :cond_ad
    move v1, v4

    .line 3117
    :goto_ae
    const-string/jumbo v5, "power_button_short_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3119
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0159

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3117
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 3121
    const-string/jumbo v5, "power_button_double_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3123
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e009d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3121
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 3125
    const-string/jumbo v5, "power_button_triple_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3127
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0170

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3125
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 3130
    const-string/jumbo v5, "power_button_long_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3132
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3130
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3134
    const-string/jumbo v6, "power_button_very_long_press"

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3136
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0178

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 3134
    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 3138
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-ne v7, v5, :cond_120

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eq v7, v6, :cond_124

    .line 3140
    :cond_120
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 3141
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 3144
    :cond_124
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3145
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "power_button_long_press_duration_ms"

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3147
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00d8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    .line 3144
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 3150
    const-string/jumbo v5, "stem_primary_button_short_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3152
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e015b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3150
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 3154
    const-string/jumbo v5, "stem_primary_button_double_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3156
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3154
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 3159
    const-string/jumbo v5, "stem_primary_button_triple_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3161
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0171

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3159
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 3164
    const-string/jumbo v5, "stem_primary_button_long_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3166
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00d9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3164
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 3168
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3169
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111025b

    .line 3170
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    .line 3171
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111025c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 3174
    const-string/jumbo v5, "stylus_buttons_enabled"

    invoke-static {p1, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_1c2

    move v5, v2

    goto :goto_1c3

    :cond_1c2
    move v5, v4

    :goto_1c3
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 3176
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v6, v5}, Lcom/android/server/input/InputManagerInternal;->setStylusButtonMotionEventsEnabled(Z)V

    .line 3177
    const-string/jumbo v5, "volbtn_music_controls"

    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_1d5

    move v5, v2

    goto :goto_1d6

    :cond_1d5
    move v5, v4

    :goto_1d6
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolBtnMusicControls:Z

    .line 3181
    const-string v5, "lockscreen_enable_power_menu"

    invoke-static {p1, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1e2

    move v5, v2

    goto :goto_1e3

    :cond_1e2
    move v5, v4

    :goto_1e3
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsOnLockEnable:Z

    .line 3185
    const-string/jumbo v5, "torch_power_button_gesture"

    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1f0

    move v5, v2

    goto :goto_1f1

    :cond_1f0
    move v5, v4

    :goto_1f1
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchGesture:Z

    .line 3189
    const-string/jumbo v5, "nav_bar_kids_mode"

    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_1fe

    move p1, v2

    goto :goto_1ff

    :cond_1fe
    move p1, v4

    .line 3191
    :goto_1ff
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    if-eq v3, p1, :cond_206

    .line 3192
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    move v4, v2

    .line 3195
    :cond_206
    monitor-exit v0
    :try_end_207
    .catchall {:try_start_14 .. :try_end_207} :catchall_64

    if-eqz v4, :cond_20c

    .line 3197
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateKidsModeSettings(Z)V

    :cond_20c
    if-eqz v1, :cond_211

    .line 3200
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    :cond_211
    return-void

    .line 3195
    :goto_212
    :try_start_212
    monitor-exit v0
    :try_end_213
    .catchall {:try_start_212 .. :try_end_213} :catchall_64

    throw p0
.end method

.method public updateUiMode()V
    .registers 3

    .line 6481
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_11

    .line 6482
    const-string/jumbo v0, "uimode"

    .line 6483
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6482
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 6488
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IUiModeManager;->getCurrentModeType(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method

.method public final updateWakeGestureListenerLp()V
    .registers 2

    .line 3239
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3240
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->requestWakeUpTrigger()V

    return-void

    .line 3242
    :cond_c
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->cancelWakeUpTrigger()V

    return-void
.end method

.method public userActivity(II)V
    .registers 6

    if-nez p1, :cond_a

    const/4 p1, 0x2

    if-ne p2, p1, :cond_a

    .line 6358
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->onUserActivityEventTouch()V

    .line 6360
    :cond_a
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter p1

    .line 6361
    :try_start_d
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz p2, :cond_25

    .line 6363
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6364
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v1, p0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_27

    .line 6366
    :cond_25
    :goto_25
    monitor-exit p1

    return-void

    :goto_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_23

    throw p0
.end method

.method public final wakeUpFromWakeKey(JIZ)V
    .registers 11

    .line 5820
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const/4 v1, 0x0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromKey(IJIZ)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x3

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eq v4, p1, :cond_18

    const/16 p4, 0x1a

    if-ne v4, p4, :cond_16

    goto :goto_18

    :cond_16
    move p4, p3

    goto :goto_19

    :cond_18
    :goto_18
    move p4, p2

    .line 5823
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldWakeUpWithHomeIntent()Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p4, :cond_3e

    if-ne v4, p1, :cond_25

    move p1, p2

    goto :goto_26

    :cond_25
    move p1, p3

    .line 5824
    :goto_26
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wake from "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5828
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 5824
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public final wakeUpFromWakeKey(Landroid/view/KeyEvent;)V
    .registers 5

    .line 5810
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string/jumbo v2, "wakeUpFromWakeKey"

    .line 5809
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 5814
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    .line 5815
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 5816
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 5813
    :goto_23
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    return-void
.end method
